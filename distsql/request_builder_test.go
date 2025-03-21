// Copyright 2018 PingCAP, Inc.
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

package distsql

import (
	"testing"

	"github.com/pingcap/tidb/kv"
	"github.com/pingcap/tidb/parser/mysql"
	"github.com/pingcap/tidb/sessionctx/stmtctx"
	"github.com/pingcap/tidb/sessionctx/variable"
	"github.com/pingcap/tidb/statistics"
	"github.com/pingcap/tidb/tablecodec"
	"github.com/pingcap/tidb/types"
	"github.com/pingcap/tidb/util/chunk"
	"github.com/pingcap/tidb/util/codec"
	"github.com/pingcap/tidb/util/collate"
	"github.com/pingcap/tidb/util/memory"
	"github.com/pingcap/tidb/util/paging"
	"github.com/pingcap/tidb/util/ranger"
	"github.com/pingcap/tipb/go-tipb"
	"github.com/stretchr/testify/require"
)

type handleRange struct {
	start int64
	end   int64
}

func TestTableHandlesToKVRanges(t *testing.T) {
	handles := []kv.Handle{
		kv.IntHandle(0),
		kv.IntHandle(2),
		kv.IntHandle(3),
		kv.IntHandle(4),
		kv.IntHandle(5),
		kv.IntHandle(10),
		kv.IntHandle(11),
		kv.IntHandle(100),
		kv.IntHandle(9223372036854775806),
		kv.IntHandle(9223372036854775807),
	} // Build expected key ranges.
	hrs := make([]*handleRange, 0, len(handles))
	hrs = append(hrs, &handleRange{start: 0, end: 0})
	hrs = append(hrs, &handleRange{start: 2, end: 5})
	hrs = append(hrs, &handleRange{start: 10, end: 11})
	hrs = append(hrs, &handleRange{start: 100, end: 100})
	hrs = append(hrs, &handleRange{start: 9223372036854775806, end: 9223372036854775807})

	// Build key ranges.
	expect := getExpectedRanges(1, hrs)
	actual := TableHandlesToKVRanges(1, handles)

	// Compare key ranges and expected key ranges.
	require.Equal(t, len(expect), len(actual))
	for i := range actual {
		require.Equal(t, expect[i].StartKey, actual[i].StartKey)
		require.Equal(t, expect[i].EndKey, actual[i].EndKey)
	}
}

func TestTableRangesToKVRanges(t *testing.T) {
	ranges := []*ranger.Range{
		{
			LowVal:    []types.Datum{types.NewIntDatum(1)},
			HighVal:   []types.Datum{types.NewIntDatum(2)},
			Collators: collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:      []types.Datum{types.NewIntDatum(2)},
			HighVal:     []types.Datum{types.NewIntDatum(4)},
			LowExclude:  true,
			HighExclude: true,
			Collators:   collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:      []types.Datum{types.NewIntDatum(4)},
			HighVal:     []types.Datum{types.NewIntDatum(19)},
			HighExclude: true,
			Collators:   collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:     []types.Datum{types.NewIntDatum(19)},
			HighVal:    []types.Datum{types.NewIntDatum(32)},
			LowExclude: true,
			Collators:  collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:     []types.Datum{types.NewIntDatum(34)},
			HighVal:    []types.Datum{types.NewIntDatum(34)},
			LowExclude: true,
			Collators:  collate.GetBinaryCollatorSlice(1),
		},
	}

	actual := TableRangesToKVRanges(13, ranges, nil)
	expect := []kv.KeyRange{
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xd, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xd, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xd, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xd, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xd, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xd, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x13},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xd, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x14},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xd, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x21},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xd, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x23},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xd, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x23},
		},
	}
	for i := 0; i < len(expect); i++ {
		require.Equal(t, expect[i], actual[i])
	}
}

func TestIndexRangesToKVRanges(t *testing.T) {
	ranges := []*ranger.Range{
		{
			LowVal:    []types.Datum{types.NewIntDatum(1)},
			HighVal:   []types.Datum{types.NewIntDatum(2)},
			Collators: collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:      []types.Datum{types.NewIntDatum(2)},
			HighVal:     []types.Datum{types.NewIntDatum(4)},
			LowExclude:  true,
			HighExclude: true,
			Collators:   collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:      []types.Datum{types.NewIntDatum(4)},
			HighVal:     []types.Datum{types.NewIntDatum(19)},
			HighExclude: true,
			Collators:   collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:     []types.Datum{types.NewIntDatum(19)},
			HighVal:    []types.Datum{types.NewIntDatum(32)},
			LowExclude: true,
			Collators:  collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:     []types.Datum{types.NewIntDatum(34)},
			HighVal:    []types.Datum{types.NewIntDatum(34)},
			LowExclude: true,
			Collators:  collate.GetBinaryCollatorSlice(1),
		},
	}

	expect := []kv.KeyRange{
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x13},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x14},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x21},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x23},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x23},
		},
	}

	actual, err := IndexRangesToKVRanges(new(stmtctx.StatementContext), 12, 15, ranges, nil)
	require.NoError(t, err)
	for i := range actual {
		require.Equal(t, expect[i], actual[i])
	}
}

func TestRequestBuilder1(t *testing.T) {
	ranges := []*ranger.Range{
		{
			LowVal:    []types.Datum{types.NewIntDatum(1)},
			HighVal:   []types.Datum{types.NewIntDatum(2)},
			Collators: collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:      []types.Datum{types.NewIntDatum(2)},
			HighVal:     []types.Datum{types.NewIntDatum(4)},
			LowExclude:  true,
			HighExclude: true,
			Collators:   collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:      []types.Datum{types.NewIntDatum(4)},
			HighVal:     []types.Datum{types.NewIntDatum(19)},
			HighExclude: true,
			Collators:   collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:     []types.Datum{types.NewIntDatum(19)},
			HighVal:    []types.Datum{types.NewIntDatum(32)},
			LowExclude: true,
			Collators:  collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:     []types.Datum{types.NewIntDatum(34)},
			HighVal:    []types.Datum{types.NewIntDatum(34)},
			LowExclude: true,
			Collators:  collate.GetBinaryCollatorSlice(1),
		},
	}

	actual, err := (&RequestBuilder{}).SetHandleRanges(nil, 12, false, ranges, nil).
		SetDAGRequest(&tipb.DAGRequest{}).
		SetDesc(false).
		SetKeepOrder(false).
		SetFromSessionVars(variable.NewSessionVars(nil)).
		Build()
	require.NoError(t, err)
	expect := &kv.Request{
		Tp:      103,
		StartTs: 0x0,
		Data:    []uint8{0x18, 0x0, 0x20, 0x0, 0x40, 0x0, 0x5a, 0x0},
		KeyRanges: []kv.KeyRange{
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3},
			},
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4},
			},
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x13},
			},
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x14},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x21},
			},
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x23},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x23},
			},
		},
		Cacheable:        true,
		KeepOrder:        false,
		Desc:             false,
		Concurrency:      variable.DefDistSQLScanConcurrency,
		IsolationLevel:   0,
		Priority:         0,
		NotFillCache:     false,
		ReplicaRead:      kv.ReplicaReadLeader,
		ReadReplicaScope: kv.GlobalReplicaScope,
	}
	expect.Paging.MinPagingSize = paging.MinPagingSize
	expect.Paging.MaxPagingSize = paging.MaxPagingSize
	actual.ResourceGroupTagger = nil
	require.Equal(t, expect, actual)
}

func TestRequestBuilder2(t *testing.T) {
	ranges := []*ranger.Range{
		{
			LowVal:    []types.Datum{types.NewIntDatum(1)},
			HighVal:   []types.Datum{types.NewIntDatum(2)},
			Collators: collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:      []types.Datum{types.NewIntDatum(2)},
			HighVal:     []types.Datum{types.NewIntDatum(4)},
			LowExclude:  true,
			HighExclude: true,
			Collators:   collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:      []types.Datum{types.NewIntDatum(4)},
			HighVal:     []types.Datum{types.NewIntDatum(19)},
			HighExclude: true,
			Collators:   collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:     []types.Datum{types.NewIntDatum(19)},
			HighVal:    []types.Datum{types.NewIntDatum(32)},
			LowExclude: true,
			Collators:  collate.GetBinaryCollatorSlice(1),
		},
		{
			LowVal:     []types.Datum{types.NewIntDatum(34)},
			HighVal:    []types.Datum{types.NewIntDatum(34)},
			LowExclude: true,
			Collators:  collate.GetBinaryCollatorSlice(1),
		},
	}

	actual, err := (&RequestBuilder{}).SetIndexRanges(new(stmtctx.StatementContext), 12, 15, ranges).
		SetDAGRequest(&tipb.DAGRequest{}).
		SetDesc(false).
		SetKeepOrder(false).
		SetFromSessionVars(variable.NewSessionVars(nil)).
		Build()
	require.NoError(t, err)
	expect := &kv.Request{
		Tp:      103,
		StartTs: 0x0,
		Data:    []uint8{0x18, 0x0, 0x20, 0x0, 0x40, 0x0, 0x5a, 0x0},
		KeyRanges: []kv.KeyRange{
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3},
			},
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4},
			},
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x13},
			},
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x14},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x21},
			},
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x23},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x23},
			},
		},
		Cacheable:        true,
		KeepOrder:        false,
		Desc:             false,
		Concurrency:      variable.DefDistSQLScanConcurrency,
		IsolationLevel:   0,
		Priority:         0,
		NotFillCache:     false,
		ReplicaRead:      kv.ReplicaReadLeader,
		ReadReplicaScope: kv.GlobalReplicaScope,
	}
	expect.Paging.MinPagingSize = paging.MinPagingSize
	expect.Paging.MaxPagingSize = paging.MaxPagingSize
	actual.ResourceGroupTagger = nil
	require.Equal(t, expect, actual)
}

func TestRequestBuilder3(t *testing.T) {
	handles := []kv.Handle{kv.IntHandle(0), kv.IntHandle(2), kv.IntHandle(3), kv.IntHandle(4),
		kv.IntHandle(5), kv.IntHandle(10), kv.IntHandle(11), kv.IntHandle(100)}

	actual, err := (&RequestBuilder{}).SetTableHandles(15, handles).
		SetDAGRequest(&tipb.DAGRequest{}).
		SetDesc(false).
		SetKeepOrder(false).
		SetFromSessionVars(variable.NewSessionVars(nil)).
		Build()
	require.NoError(t, err)
	expect := &kv.Request{
		Tp:      103,
		StartTs: 0x0,
		Data:    []uint8{0x18, 0x0, 0x20, 0x0, 0x40, 0x0, 0x5a, 0x0},
		KeyRanges: []kv.KeyRange{
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1},
			},
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6},
			},
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc},
			},
			{
				StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x64},
				EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x65},
			},
		},
		Cacheable:        true,
		KeepOrder:        false,
		Desc:             false,
		Concurrency:      variable.DefDistSQLScanConcurrency,
		IsolationLevel:   0,
		Priority:         0,
		NotFillCache:     false,
		ReplicaRead:      kv.ReplicaReadLeader,
		ReadReplicaScope: kv.GlobalReplicaScope,
	}
	expect.Paging.MinPagingSize = paging.MinPagingSize
	expect.Paging.MaxPagingSize = paging.MaxPagingSize
	actual.ResourceGroupTagger = nil
	require.Equal(t, expect, actual)
}

func TestRequestBuilder4(t *testing.T) {
	keyRanges := []kv.KeyRange{
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x64},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x65},
		},
	}

	actual, err := (&RequestBuilder{}).SetKeyRanges(keyRanges).
		SetDAGRequest(&tipb.DAGRequest{}).
		SetDesc(false).
		SetKeepOrder(false).
		SetFromSessionVars(variable.NewSessionVars(nil)).
		Build()
	require.NoError(t, err)
	expect := &kv.Request{
		Tp:               103,
		StartTs:          0x0,
		Data:             []uint8{0x18, 0x0, 0x20, 0x0, 0x40, 0x0, 0x5a, 0x0},
		KeyRanges:        keyRanges,
		Cacheable:        true,
		KeepOrder:        false,
		Desc:             false,
		Concurrency:      variable.DefDistSQLScanConcurrency,
		IsolationLevel:   0,
		Priority:         0,
		NotFillCache:     false,
		ReplicaRead:      kv.ReplicaReadLeader,
		ReadReplicaScope: kv.GlobalReplicaScope,
	}
	expect.Paging.MinPagingSize = paging.MinPagingSize
	expect.Paging.MaxPagingSize = paging.MaxPagingSize
	actual.ResourceGroupTagger = nil
	require.Equal(t, expect, actual)
}

func TestRequestBuilder5(t *testing.T) {
	keyRanges := []kv.KeyRange{
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x6},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xa},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc},
		},
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x64},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xf, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x65},
		},
	}

	actual, err := (&RequestBuilder{}).SetKeyRanges(keyRanges).
		SetAnalyzeRequest(&tipb.AnalyzeReq{}, kv.RC).
		SetKeepOrder(true).
		SetConcurrency(15).
		Build()
	require.NoError(t, err)
	expect := &kv.Request{
		Tp:               104,
		StartTs:          0x0,
		Data:             []uint8{0x8, 0x0, 0x18, 0x0, 0x20, 0x0},
		KeyRanges:        keyRanges,
		KeepOrder:        true,
		Desc:             false,
		Concurrency:      15,
		IsolationLevel:   kv.RC,
		Priority:         1,
		NotFillCache:     true,
		ReadReplicaScope: kv.GlobalReplicaScope,
	}
	require.Equal(t, expect, actual)
}

func TestRequestBuilder6(t *testing.T) {
	keyRanges := []kv.KeyRange{
		{
			StartKey: kv.Key{0x00, 0x01},
			EndKey:   kv.Key{0x02, 0x03},
		},
	}
	concurrency := 10
	actual, err := (&RequestBuilder{}).SetKeyRanges(keyRanges).
		SetChecksumRequest(&tipb.ChecksumRequest{}).
		SetConcurrency(concurrency).
		Build()
	require.NoError(t, err)
	expect := &kv.Request{
		Tp:               105,
		StartTs:          0x0,
		Data:             []uint8{0x10, 0x0, 0x18, 0x0},
		KeyRanges:        keyRanges,
		KeepOrder:        false,
		Desc:             false,
		Concurrency:      concurrency,
		IsolationLevel:   0,
		Priority:         0,
		NotFillCache:     true,
		ReadReplicaScope: kv.GlobalReplicaScope,
	}
	require.Equal(t, expect, actual)
}

func TestRequestBuilder7(t *testing.T) {
	for _, replicaRead := range []struct {
		replicaReadType kv.ReplicaReadType
		src             string
	}{
		{kv.ReplicaReadLeader, "Leader"},
		{kv.ReplicaReadFollower, "Follower"},
		{kv.ReplicaReadMixed, "Mixed"},
	} {
		// copy iterator variable into a new variable, see issue #27779
		replicaRead := replicaRead
		t.Run(replicaRead.src, func(t *testing.T) {
			vars := variable.NewSessionVars(nil)
			vars.SetReplicaRead(replicaRead.replicaReadType)

			concurrency := 10
			actual, err := (&RequestBuilder{}).
				SetFromSessionVars(vars).
				SetConcurrency(concurrency).
				Build()
			require.NoError(t, err)
			expect := &kv.Request{
				Tp:               0,
				StartTs:          0x0,
				KeepOrder:        false,
				Desc:             false,
				Concurrency:      concurrency,
				IsolationLevel:   0,
				Priority:         0,
				NotFillCache:     false,
				ReplicaRead:      replicaRead.replicaReadType,
				ReadReplicaScope: kv.GlobalReplicaScope,
			}
			expect.Paging.MinPagingSize = paging.MinPagingSize
			expect.Paging.MaxPagingSize = paging.MaxPagingSize
			actual.ResourceGroupTagger = nil
			require.Equal(t, expect, actual)
		})
	}
}

func TestRequestBuilder8(t *testing.T) {
	sv := variable.NewSessionVars(nil)
	actual, err := (&RequestBuilder{}).
		SetFromSessionVars(sv).
		Build()
	require.NoError(t, err)
	expect := &kv.Request{
		Tp:               0,
		StartTs:          0x0,
		Data:             []uint8(nil),
		Concurrency:      variable.DefDistSQLScanConcurrency,
		IsolationLevel:   0,
		Priority:         0,
		MemTracker:       (*memory.Tracker)(nil),
		SchemaVar:        0,
		ReadReplicaScope: kv.GlobalReplicaScope,
	}
	expect.Paging.MinPagingSize = paging.MinPagingSize
	expect.Paging.MaxPagingSize = paging.MaxPagingSize
	actual.ResourceGroupTagger = nil
	require.Equal(t, expect, actual)
}

func TestTableRangesToKVRangesWithFbs(t *testing.T) {
	ranges := []*ranger.Range{
		{
			LowVal:    []types.Datum{types.NewIntDatum(1)},
			HighVal:   []types.Datum{types.NewIntDatum(4)},
			Collators: collate.GetBinaryCollatorSlice(1),
		},
	}
	fb := newTestFb()
	actual := TableRangesToKVRanges(0, ranges, fb)
	expect := []kv.KeyRange{
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x5f, 0x72, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x5},
		},
	}

	for i := 0; i < len(actual); i++ {
		require.Equal(t, expect[i], actual[i])
	}
}

func TestIndexRangesToKVRangesWithFbs(t *testing.T) {
	ranges := []*ranger.Range{
		{
			LowVal:    []types.Datum{types.NewIntDatum(1)},
			HighVal:   []types.Datum{types.NewIntDatum(4)},
			Collators: collate.GetBinaryCollatorSlice(1),
		},
	}
	fb := newTestFb()
	actual, err := IndexRangesToKVRanges(new(stmtctx.StatementContext), 0, 0, ranges, fb)
	require.NoError(t, err)
	expect := []kv.KeyRange{
		{
			StartKey: kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1},
			EndKey:   kv.Key{0x74, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x5f, 0x69, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x3, 0x80, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x5},
		},
	}
	for i := 0; i < len(actual); i++ {
		require.Equal(t, expect[i], actual[i])
	}
}

func TestScanLimitConcurrency(t *testing.T) {
	vars := variable.NewSessionVars(nil)
	for _, tt := range []struct {
		tp          tipb.ExecType
		limit       uint64
		concurrency int
		src         string
	}{
		{tipb.ExecType_TypeTableScan, 1, 1, "TblScan_Def"},
		{tipb.ExecType_TypeIndexScan, 1, 1, "IdxScan_Def"},
		{tipb.ExecType_TypeTableScan, 1000000, vars.Concurrency.DistSQLScanConcurrency(), "TblScan_SessionVars"},
		{tipb.ExecType_TypeIndexScan, 1000000, vars.Concurrency.DistSQLScanConcurrency(), "IdxScan_SessionVars"},
	} {
		// copy iterator variable into a new variable, see issue #27779
		tt := tt
		t.Run(tt.src, func(t *testing.T) {
			firstExec := &tipb.Executor{Tp: tt.tp}
			switch tt.tp {
			case tipb.ExecType_TypeTableScan:
				firstExec.TblScan = &tipb.TableScan{}
			case tipb.ExecType_TypeIndexScan:
				firstExec.IdxScan = &tipb.IndexScan{}
			}

			limitExec := &tipb.Executor{Tp: tipb.ExecType_TypeLimit, Limit: &tipb.Limit{Limit: tt.limit}}
			dag := &tipb.DAGRequest{Executors: []*tipb.Executor{firstExec, limitExec}}
			actual, err := (&RequestBuilder{}).
				SetDAGRequest(dag).
				SetFromSessionVars(vars).
				Build()
			require.NoError(t, err)
			require.Equal(t, tt.concurrency, actual.Concurrency)
		})
	}
}

func getExpectedRanges(tid int64, hrs []*handleRange) []kv.KeyRange {
	krs := make([]kv.KeyRange, 0, len(hrs))
	for _, hr := range hrs {
		low := codec.EncodeInt(nil, hr.start)
		high := codec.EncodeInt(nil, hr.end)
		high = kv.Key(high).PrefixNext()
		startKey := tablecodec.EncodeRowKey(tid, low)
		endKey := tablecodec.EncodeRowKey(tid, high)
		krs = append(krs, kv.KeyRange{StartKey: startKey, EndKey: endKey})
	}
	return krs
}

func newTestFb() *statistics.QueryFeedback {
	hist := statistics.NewHistogram(1, 30, 30, 0, types.NewFieldType(mysql.TypeLonglong), chunk.InitialCapacity, 0)
	for i := 0; i < 10; i++ {
		hist.Bounds.AppendInt64(0, int64(i))
		hist.Bounds.AppendInt64(0, int64(i+2))
		hist.Buckets = append(hist.Buckets, statistics.Bucket{Repeat: 10, Count: int64(i + 30)})
	}
	fb := statistics.NewQueryFeedback(0, hist, 0, false)
	lower, upper := types.NewIntDatum(2), types.NewIntDatum(3)
	fb.Feedback = []statistics.Feedback{
		{Lower: &lower, Upper: &upper, Count: 1, Repeat: 1},
	}
	return fb
}
