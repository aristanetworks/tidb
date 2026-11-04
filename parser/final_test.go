// Copyright 2026 Arista Networks, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package parser_test

import (
	"strings"
	"testing"

	"github.com/pingcap/tidb/parser"
	"github.com/pingcap/tidb/parser/ast"
	"github.com/pingcap/tidb/parser/format"
	_ "github.com/pingcap/tidb/parser/test_driver"
	"github.com/stretchr/testify/require"
)

func TestClickHouseFinalParseAndRestore(t *testing.T) {
	cases := []struct {
		name, query, restored string
	}{
		{
			name:     "modifier",
			query:    "SELECT * FROM wifi.clients_app_snapshot FINAL",
			restored: "SELECT * FROM `wifi`.`clients_app_snapshot` FINAL",
		},
		{
			name:     "lowercase modifier and alias",
			query:    "SELECT c.Name FROM wifi.clients_app_snapshot AS c final",
			restored: "SELECT `c`.`Name` FROM `wifi`.`clients_app_snapshot` AS `c` FINAL",
		},
		{
			name:     "implicit alias before modifier",
			query:    "SELECT * FROM d.t t FINAL WHERE t.id = 1",
			restored: "SELECT * FROM `d`.`t` AS `t` FINAL WHERE `t`.`id`=1",
		},
		{
			name:  "nested aggregate",
			query: "SELECT sum(n) FROM (SELECT count(*) AS n FROM d.t FINAL) AS sub",
			restored: "SELECT sum(`n`) FROM " +
				"(SELECT count(1) AS `n` FROM `d`.`t` FINAL) AS `sub`",
		},
		{
			name:  "join only left final",
			query: "SELECT a.id FROM d.t AS a FINAL JOIN d.u AS b ON a.id = b.id",
			restored: "SELECT `a`.`id` FROM `d`.`t` AS `a` FINAL " +
				"JOIN `d`.`u` AS `b` ON `a`.`id`=`b`.`id`",
		},
		{
			name:  "join both final",
			query: "SELECT a.id FROM d.t AS a FINAL JOIN d.u AS b FINAL ON a.id = b.id",
			restored: "SELECT `a`.`id` FROM `d`.`t` AS `a` FINAL " +
				"JOIN `d`.`u` AS `b` FINAL ON `a`.`id`=`b`.`id`",
		},
		{
			name:     "cte",
			query:    "WITH c AS (SELECT id FROM d.t FINAL) SELECT id FROM c",
			restored: "WITH `c` AS (SELECT `id` FROM `d`.`t` FINAL) SELECT `id` FROM `c`",
		},
		{
			name:     "explicit alias final",
			query:    "SELECT FINAL.id FROM d.t AS FINAL",
			restored: "SELECT `FINAL`.`id` FROM `d`.`t` AS `FINAL`",
		},
		{
			name:     "quoted implicit alias final",
			query:    "SELECT * FROM d.t `FINAL`",
			restored: "SELECT * FROM `d`.`t` AS `FINAL`",
		},
		{
			name:     "alias final with modifier",
			query:    "SELECT * FROM d.t AS FINAL FINAL",
			restored: "SELECT * FROM `d`.`t` AS `FINAL` FINAL",
		},
		{
			name:     "identifier string and comment",
			query:    "SELECT final, 'FINAL' FROM d.final /* FINAL */ WHERE final = 'FINAL'",
			restored: "SELECT `final`,'FINAL' FROM `d`.`final` WHERE `final`='FINAL'",
		},
		{
			name:     "table named final",
			query:    "SELECT final FROM final FINAL",
			restored: "SELECT `final` FROM `final` FINAL",
		},
		{
			name:     "no modifier",
			query:    "SELECT * FROM d.t AS t WHERE t.id = 1",
			restored: "SELECT * FROM `d`.`t` AS `t` WHERE `t`.`id`=1",
		},
	}
	p := parser.New()
	flags := format.RestoreStringSingleQuotes | format.RestoreStringWithoutCharset |
		format.RestoreNameBackQuotes
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			query := tc.query
			for round := 0; round < 2; round++ {
				stmt, err := p.ParseOneStmt(query, "", "")
				require.NoError(t, err, "round %d: %s", round, query)
				var out strings.Builder
				require.NoError(t, stmt.Restore(format.NewRestoreCtx(flags, &out)))
				require.Equal(t, tc.restored, out.String(), "round %d", round)
				query = out.String()
			}
		})
	}
}

func TestClickHouseFinalTableNameRestore(t *testing.T) {
	stmt, err := parser.New().ParseOneStmt("SELECT * FROM d.t AS a FINAL", "", "")
	require.NoError(t, err)
	tn := stmt.(*ast.SelectStmt).From.TableRefs.Left.(*ast.TableSource).Source.(*ast.TableName)
	var out strings.Builder
	require.NoError(t, tn.Restore(format.NewRestoreCtx(format.RestoreNameBackQuotes, &out)))
	require.Equal(t, "`d`.`t` FINAL", out.String())
}
