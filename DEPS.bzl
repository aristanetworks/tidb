load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_deps():
    go_repository(
        name = "cc_mvdan_gofumpt",
        build_file_proto_mode = "disable",
        importpath = "mvdan.cc/gofumpt",
        sum = "h1:avhhrOmv0IuvQVK7fvwV91oFSGAk5/6Po8GXTzICeu8=",
        version = "v0.3.1",
    )
    go_repository(
        name = "cc_mvdan_interfacer",
        build_file_proto_mode = "disable",
        importpath = "mvdan.cc/interfacer",
        sum = "h1:WX1yoOaKQfddO/mLzdV4wptyWgoH/6hwLs7QHTixo0I=",
        version = "v0.0.0-20180901003855-c20040233aed",
    )
    go_repository(
        name = "cc_mvdan_lint",
        build_file_proto_mode = "disable",
        importpath = "mvdan.cc/lint",
        sum = "h1:DxJ5nJdkhDlLok9K6qO+5290kphDJbHOQO1DFFFTeBo=",
        version = "v0.0.0-20170908181259-adc824a0674b",
    )
    go_repository(
        name = "cc_mvdan_unparam",
        build_file_proto_mode = "disable",
        importpath = "mvdan.cc/unparam",
        sum = "h1:seuXWbRB1qPrS3NQnHmFKLJLtskWyueeIzmLXghMGgk=",
        version = "v0.0.0-20220706161116-678bad134442",
    )

    go_repository(
        name = "co_honnef_go_tools",
        build_file_proto_mode = "disable_global",
        importpath = "honnef.co/go/tools",
        sum = "h1:oDx7VAwstgpYpb3wv0oxiZlxY+foCpRAwY7Vk6XpAgA=",
        version = "v0.3.3",
    )
    go_repository(
        name = "com_4d63_gochecknoglobals",
        build_file_proto_mode = "disable",
        importpath = "4d63.com/gochecknoglobals",
        sum = "h1:zeZSRqj5yCg28tCkIV/z/lWbwvNm5qnKVS15PI8nhD0=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_ajg_form",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/ajg/form",
        sum = "h1:t9c7v8JUKu/XxOGBU0yjNpaMloxGEJhUkqFRq0ibGeU=",
        version = "v1.5.1",
    )
    go_repository(
        name = "com_github_ajstarks_svgo",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/ajstarks/svgo",
        sum = "h1:wVe6/Ea46ZMeNkQjjBW6xcqyQA/j5e0D6GytH95g0gQ=",
        version = "v0.0.0-20180226025133-644b8db467af",
    )
    go_repository(
        name = "com_github_alecthomas_template",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/alecthomas/template",
        sum = "h1:JYp7IbQjafoB+tBA3gMyHYHrpOtNuDiK/uB5uXxq5wM=",
        version = "v0.0.0-20190718012654-fb15b899a751",
    )
    go_repository(
        name = "com_github_alecthomas_units",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/alecthomas/units",
        sum = "h1:UQZhZ2O0vMHr2cI+DC1Mbh0TJxzA3RcLoMsFw+aXw7E=",
        version = "v0.0.0-20190924025748-f65c72e2690d",
    )
    go_repository(
        name = "com_github_alexkohler_prealloc",
        build_file_proto_mode = "disable",
        importpath = "github.com/alexkohler/prealloc",
        sum = "h1:Hbq0/3fJPQhNkN0dR95AVrr6R7tou91y0uHG5pOcUuw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_alingse_asasalint",
        build_file_proto_mode = "disable",
        importpath = "github.com/alingse/asasalint",
        sum = "h1:SFwnQXJ49Kx/1GghOFz1XGqHYKp21Kq1nHad/0WQRnw=",
        version = "v0.0.11",
    )

    go_repository(
        name = "com_github_aliyun_alibaba_cloud_sdk_go",
        build_file_proto_mode = "disable",
        importpath = "github.com/aliyun/alibaba-cloud-sdk-go",
        sum = "h1:Q/yk4z/cHUVZfgTqtD09qeYBxHwshQAjVRX73qs8UH0=",
        version = "v1.61.1581",
    )

    go_repository(
        name = "com_github_andreasbriese_bbloom",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/AndreasBriese/bbloom",
        sum = "h1:HD8gA2tkByhMAwYaFAX9w2l7vxvBQ5NMoxDrkhqhtn4=",
        version = "v0.0.0-20190306092124-e2d15f34fcf9",
    )
    go_repository(
        name = "com_github_antihax_optional",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/antihax/optional",
        sum = "h1:xK2lYat7ZLaVVcIuj82J8kIro4V6kDe0AUDFboUCwcg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_antonboom_errname",
        build_file_proto_mode = "disable",
        importpath = "github.com/Antonboom/errname",
        sum = "h1:mBBDKvEYwPl4WFFNwec1CZO096G6vzK9vvDQzAwkako=",
        version = "v0.1.7",
    )
    go_repository(
        name = "com_github_antonboom_nilnil",
        build_file_proto_mode = "disable",
        importpath = "github.com/Antonboom/nilnil",
        sum = "h1:PHhrh5ANKFWRBh7TdYmyyq2gyT2lotnvFvvFbylF81Q=",
        version = "v0.1.1",
    )

    go_repository(
        name = "com_github_apache_thrift",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/apache/thrift",
        sum = "h1:Jz3KVLYY5+JO7rDiX0sAuRGtuv2vG01r17Y9nLMWNUw=",
        version = "v0.13.1-0.20201008052519-daf620915714",
    )
    go_repository(
        name = "com_github_armon_circbuf",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/armon/circbuf",
        sum = "h1:QEF07wC0T1rKkctt1RINW/+RMTVmiwxETico2l3gxJA=",
        version = "v0.0.0-20150827004946-bbbad097214e",
    )
    go_repository(
        name = "com_github_armon_consul_api",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/armon/consul-api",
        sum = "h1:G1bPvciwNyF7IUmKXNt9Ak3m6u9DE1rF+RmtIkBpVdA=",
        version = "v0.0.0-20180202201655-eb2c6b5be1b6",
    )
    go_repository(
        name = "com_github_armon_go_metrics",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/armon/go-metrics",
        sum = "h1:8GUt8eRujhVEGZFFEjBj46YV4rDjvGrNxb0KMWYkL2I=",
        version = "v0.0.0-20180917152333-f0300d1749da",
    )
    go_repository(
        name = "com_github_armon_go_radix",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/armon/go-radix",
        sum = "h1:BUAU3CGlLvorLI26FmByPp2eC2qla6E1Tw+scpcg/to=",
        version = "v0.0.0-20180808171621-7fddfc383310",
    )
    go_repository(
        name = "com_github_ashanbrown_forbidigo",
        build_file_proto_mode = "disable",
        importpath = "github.com/ashanbrown/forbidigo",
        sum = "h1:VkYIwb/xxdireGAdJNZoo24O4lmnEWkactplBlWTShc=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_ashanbrown_makezero",
        build_file_proto_mode = "disable",
        importpath = "github.com/ashanbrown/makezero",
        sum = "h1:iCQ87C0V0vSyO+M9E/FZYbu65auqH0lnsOkf5FcB28s=",
        version = "v1.1.1",
    )

    go_repository(
        name = "com_github_aws_aws_sdk_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/aws/aws-sdk-go",
        sum = "h1:jLDC9RsNoYMLFlKpB8LdqUnoDdC2yvkS4QbuyPQJ8+M=",
        version = "v1.44.48",
    )
    go_repository(
        name = "com_github_aymerick_raymond",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/aymerick/raymond",
        sum = "h1:Ppm0npCCsmuR9oQaBtRuZcmILVE74aXE+AmrJj8L2ns=",
        version = "v2.0.3-0.20180322193309-b565731e1464+incompatible",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go",
        build_file_proto_mode = "disable",
        importpath = "github.com/Azure/azure-sdk-for-go",
        sum = "h1:bch1RS060vGpHpY3zvQDV4rOiRw25J1zmR/B9a76aSA=",
        version = "v23.2.0+incompatible",
    )

    go_repository(
        name = "com_github_azure_azure_sdk_for_go_sdk_azcore",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/Azure/azure-sdk-for-go/sdk/azcore",
        sum = "h1:KQgdWmEOmaJKxaUUZwHAYh12t+b+ZJf8q3friycK1kA=",
        version = "v0.20.0",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go_sdk_azidentity",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/Azure/azure-sdk-for-go/sdk/azidentity",
        sum = "h1:VBvHGLJbaY0+c66NZHdS9cgjHVYSH6DDa0XJMyrblsI=",
        version = "v0.12.0",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go_sdk_internal",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/Azure/azure-sdk-for-go/sdk/internal",
        sum = "h1:BUYIbDf/mMZ8945v3QkG3OuqGVyS4Iek0AOLwdRAYoc=",
        version = "v0.8.1",
    )
    go_repository(
        name = "com_github_azure_azure_sdk_for_go_sdk_storage_azblob",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/Azure/azure-sdk-for-go/sdk/storage/azblob",
        sum = "h1:62Ew5xXg5UCGIXDOM7+y4IL5/6mQJq1nenhBCJAeGX8=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_azure_go_autorest",
        build_file_proto_mode = "disable",
        importpath = "github.com/Azure/go-autorest",
        sum = "h1:Q2feRPMlcfVcqz3pF87PJzkm5lZrL+x6BDtzhODzNJM=",
        version = "v11.2.8+incompatible",
    )

    go_repository(
        name = "com_github_benbjohnson_clock",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/benbjohnson/clock",
        sum = "h1:ip6w0uFQkncKQ979AypyG0ER7mqUSBdKLOgAle/AT8A=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_beorn7_perks",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/beorn7/perks",
        sum = "h1:VlbKKnNfV8bJzeqoa4cOKqO6bYr3WgKZxO8Z16+hsOM=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_bgentry_speakeasy",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/bgentry/speakeasy",
        sum = "h1:ByYyxL9InA1OWqxJqqp2A5pYHUrCiAL6K3J+LKSsQkY=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_biogo_store",
        build_file_proto_mode = "disable",
        importpath = "github.com/biogo/store",
        sum = "h1:tYoz1OeRpx3dJZlh9T4dQt4kAndcmpl+VNdzbSgFC/0=",
        version = "v0.0.0-20160505134755-913427a1d5e8",
    )

    go_repository(
        name = "com_github_bketelsen_crypt",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/bketelsen/crypt",
        sum = "h1:+0HFd5KSZ/mm3JmhmrDukiId5iR6w4+BdFtfSy4yWIc=",
        version = "v0.0.3-0.20200106085610-5cbc8cc4026c",
    )
    go_repository(
        name = "com_github_bkielbasa_cyclop",
        build_file_proto_mode = "disable",
        importpath = "github.com/bkielbasa/cyclop",
        sum = "h1:7Jmnh0yL2DjKfw28p86YTd/B4lRGcNuu12sKE35sM7A=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_blacktear23_go_proxyprotocol",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/blacktear23/go-proxyprotocol",
        sum = "h1:zR7PZeoU0wAkElcIXenFiy3R56WB6A+UEVi4c6RH8wo=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_blizzy78_varnamelen",
        build_file_proto_mode = "disable",
        importpath = "github.com/blizzy78/varnamelen",
        sum = "h1:oqSblyuQvFsW1hbBHh1zfwrKe3kcSj0rnXkKzsQ089M=",
        version = "v0.8.0",
    )
    go_repository(
        name = "com_github_bombsimon_wsl_v3",
        build_file_proto_mode = "disable",
        importpath = "github.com/bombsimon/wsl/v3",
        sum = "h1:Mka/+kRLoQJq7g2rggtgQsjuI/K5Efd87WX96EWFxjM=",
        version = "v3.3.0",
    )
    go_repository(
        name = "com_github_breml_bidichk",
        build_file_proto_mode = "disable",
        importpath = "github.com/breml/bidichk",
        sum = "h1:qe6ggxpTfA8E75hdjWPZ581sY3a2lnl0IRxLQFelECI=",
        version = "v0.2.3",
    )
    go_repository(
        name = "com_github_breml_errchkjson",
        build_file_proto_mode = "disable",
        importpath = "github.com/breml/errchkjson",
        sum = "h1:YdDqhfqMT+I1vIxPSas44P+9Z9HzJwCeAzjB8PxP1xw=",
        version = "v0.3.0",
    )

    go_repository(
        name = "com_github_burntsushi_toml",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/BurntSushi/toml",
        sum = "h1:Rt8g24XnyGTyglgET/PRUNlrUeu9F5L+7FilkXfZgs0=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_burntsushi_xgb",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/BurntSushi/xgb",
        sum = "h1:1BDTz0u9nC3//pOCMdNH+CiXJVYJh5UQNCOBG7jbELc=",
        version = "v0.0.0-20160522181843-27f122750802",
    )
    go_repository(
        name = "com_github_butuzov_ireturn",
        build_file_proto_mode = "disable",
        importpath = "github.com/butuzov/ireturn",
        sum = "h1:QvrO2QF2+/Cx1WA/vETCIYBKtRjc30vesdoPUNo1EbY=",
        version = "v0.1.1",
    )

    go_repository(
        name = "com_github_carlmjohnson_flagext",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/carlmjohnson/flagext",
        sum = "h1:/c4uK3ie786Z7caXLcIMvePNSSiH3bQVGDvmGLMme60=",
        version = "v0.21.0",
    )
    go_repository(
        name = "com_github_cenk_backoff",
        build_file_proto_mode = "disable",
        importpath = "github.com/cenk/backoff",
        sum = "h1:7vXVw3g7XE+Vnj0A9TmFGtMeP4oZQ5ZzpPvKhLFa80E=",
        version = "v2.0.0+incompatible",
    )

    go_repository(
        name = "com_github_census_instrumentation_opencensus_proto",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/census-instrumentation/opencensus-proto",
        sum = "h1:glEXhBS5PSLLv4IXzLA5yPRVX4bilULVyxxbrfOtDAk=",
        version = "v0.2.1",
    )
    go_repository(
        name = "com_github_certifi_gocertifi",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/certifi/gocertifi",
        sum = "h1:uH66TXeswKn5PW5zdZ39xEwfS9an067BirqA+P4QaLI=",
        version = "v0.0.0-20200922220541-2c3bb06c6054",
    )
    go_repository(
        name = "com_github_cespare_xxhash",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cespare/xxhash",
        sum = "h1:a6HrQnmkObjyL+Gs60czilIUGqrzKutQD6XZog3p+ko=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_cespare_xxhash_v2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cespare/xxhash/v2",
        sum = "h1:YRXhKfTDauu4ajMg1TPgFO5jnlC2HCbmLXMcTG5cbYE=",
        version = "v2.1.2",
    )
    go_repository(
        name = "com_github_charithe_durationcheck",
        build_file_proto_mode = "disable",
        importpath = "github.com/charithe/durationcheck",
        sum = "h1:mPP4ucLrf/rKZiIG/a9IPXHGlh8p4CzgpyTy6EEutYk=",
        version = "v0.0.9",
    )
    go_repository(
        name = "com_github_chavacava_garif",
        build_file_proto_mode = "disable",
        importpath = "github.com/chavacava/garif",
        sum = "h1:E7LT642ysztPWE0dfz43cWOvMiF42DyTRC+eZIaO4yI=",
        version = "v0.0.0-20220630083739-93517212f375",
    )

    go_repository(
        name = "com_github_cheggaaa_pb_v3",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cheggaaa/pb/v3",
        sum = "h1:bC8oemdChbke2FHIIGy9mn4DPJ2caZYQnfbRqwmdCoA=",
        version = "v3.0.8",
    )
    go_repository(
        name = "com_github_cheynewallace_tabby",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cheynewallace/tabby",
        sum = "h1:JvUR8waht4Y0S3JF17G6Vhyt+FRhnqVCkk8l4YrOU54=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_chzyer_logex",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/chzyer/logex",
        sum = "h1:Swpa1K6QvQznwJRcfTfQJmTE72DqScAa40E+fbHEXEE=",
        version = "v1.1.10",
    )
    go_repository(
        name = "com_github_chzyer_readline",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/chzyer/readline",
        sum = "h1:fY5BOSpyZCqRo5OhCuC+XN+r/bBCmeuuJtjz+bCNIf8=",
        version = "v0.0.0-20180603132655-2972be24d48e",
    )
    go_repository(
        name = "com_github_chzyer_test",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/chzyer/test",
        sum = "h1:q763qf9huN11kDQavWsoZXJNW3xEE4JJyHa5Q25/sd8=",
        version = "v0.0.0-20180213035817-a1ea475d72b1",
    )
    go_repository(
        name = "com_github_client9_misspell",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/client9/misspell",
        sum = "h1:ta993UF76GwbvJcIo3Y68y/M3WxlpEHPWIGDkJYwzJI=",
        version = "v0.3.4",
    )
    go_repository(
        name = "com_github_cloudykit_fastprinter",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/CloudyKit/fastprinter",
        sum = "h1:3SgJcK9l5uPdBC/X17wanyJAMxM33+4ZhEIV96MIH8U=",
        version = "v0.0.0-20170127035650-74b38d55f37a",
    )
    go_repository(
        name = "com_github_cloudykit_jet",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/CloudyKit/jet",
        sum = "h1:rZgFj+Gtf3NMi/U5FvCvhzaxzW/TaPYgUYx3bAPz9DE=",
        version = "v2.1.3-0.20180809161101-62edd43e4f88+incompatible",
    )
    go_repository(
        name = "com_github_cncf_udpa_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cncf/udpa/go",
        sum = "h1:hzAQntlaYRkVSFEfj9OTWlVV1H155FMD8BTKktLv0QI=",
        version = "v0.0.0-20210930031921-04548b0d99d4",
    )
    go_repository(
        name = "com_github_cncf_xds_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cncf/xds/go",
        sum = "h1:zH8ljVhhq7yC0MIeUL/IviMtY8hx2mK8cN9wEYb8ggw=",
        version = "v0.0.0-20211011173535-cb28da3451f1",
    )
    go_repository(
        name = "com_github_cockroachdb_apd",
        build_file_proto_mode = "disable",
        importpath = "github.com/cockroachdb/apd",
        sum = "h1:3LFP3629v+1aKXU5Q37mxmRxX/pIu1nijXydLShEq5I=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_cockroachdb_cmux",
        build_file_proto_mode = "disable",
        importpath = "github.com/cockroachdb/cmux",
        sum = "h1:dzj1/xcivGjNPwwifh/dWTczkwcuqsXXFHY1X/TZMtw=",
        version = "v0.0.0-20170110192607-30d10be49292",
    )
    go_repository(
        name = "com_github_cockroachdb_cockroach",
        build_file_proto_mode = "disable",
        importpath = "github.com/cockroachdb/cockroach",
        sum = "h1:0FHGBrsIyDci8tF7zujQkHdMTJdCTSIV9esrni2fKQI=",
        version = "v0.0.0-20170608034007-84bc9597164f",
    )
    go_repository(
        name = "com_github_cockroachdb_cockroach_go",
        build_file_proto_mode = "disable",
        importpath = "github.com/cockroachdb/cockroach-go",
        sum = "h1:2zRrJWIt/f9c9HhNHAgrRgq0San5gRRUJTBXLkchal0=",
        version = "v0.0.0-20181001143604-e0a95dfd547c",
    )

    go_repository(
        name = "com_github_cockroachdb_datadriven",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cockroachdb/datadriven",
        sum = "h1:uhZrAfEayBecH2w2tZmhe20HJ7hDvrrA4x2Bg9YdZKM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_cockroachdb_errors",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cockroachdb/errors",
        sum = "h1:A5+txlVZfOqFBDa4mGz2bUWSp0aHElvHX2bKkdbQu+Y=",
        version = "v1.8.1",
    )
    go_repository(
        name = "com_github_cockroachdb_logtags",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cockroachdb/logtags",
        sum = "h1:o/kfcElHqOiXqcou5a3rIlMc7oJbMQkeLk0VQJ7zgqY=",
        version = "v0.0.0-20190617123548-eb05cc24525f",
    )
    go_repository(
        name = "com_github_cockroachdb_pebble",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cockroachdb/pebble",
        sum = "h1:Igd6YmtOZ77EgLAIaE9+mHl7+sAKaZ5m4iMI0Dz/J2A=",
        version = "v0.0.0-20210719141320-8c3bd06debb5",
    )
    go_repository(
        name = "com_github_cockroachdb_redact",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cockroachdb/redact",
        sum = "h1:8QG/764wK+vmEYoOlfobpe12EQcS81ukx/a4hdVMxNw=",
        version = "v1.0.8",
    )
    go_repository(
        name = "com_github_cockroachdb_sentry_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cockroachdb/sentry-go",
        sum = "h1:IKgmqgMQlVJIZj19CdocBeSfSaiCbEBZGKODaixqtHM=",
        version = "v0.6.1-cockroachdb.2",
    )
    go_repository(
        name = "com_github_codahale_hdrhistogram",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/codahale/hdrhistogram",
        sum = "h1:qMd81Ts1T2OTKmB4acZcyKaMtRnY5Y44NuXGX2GFJ1w=",
        version = "v0.0.0-20161010025455-3a0bb77429bd",
    )
    go_repository(
        name = "com_github_codegangsta_inject",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/codegangsta/inject",
        sum = "h1:sDMmm+q/3+BukdIpxwO365v/Rbspp2Nt5XntgQRXq8Q=",
        version = "v0.0.0-20150114235600-33e0aa1cb7c0",
    )
    go_repository(
        name = "com_github_colinmarc_hdfs_v2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/colinmarc/hdfs/v2",
        sum = "h1:x0hw/m+o3UE20Scso/KCkvYNc9Di39TBlCfGMkJ1/a0=",
        version = "v2.1.1",
    )
    go_repository(
        name = "com_github_coocood_bbloom",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/coocood/bbloom",
        sum = "h1:W1SHiII3e0jVwvaQFglwu3kS9NLxOeTpvik7MbKCyuQ=",
        version = "v0.0.0-20190830030839-58deb6228d64",
    )
    go_repository(
        name = "com_github_coocood_freecache",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/coocood/freecache",
        sum = "h1:/v1CqMq45NFH9mp/Pt142reundeBM0dVUD3osQBeu/U=",
        version = "v1.2.1",
    )
    go_repository(
        name = "com_github_coocood_rtutil",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/coocood/rtutil",
        sum = "h1:NnLfQ77q0G4k2Of2c1ceQ0ec6MkLQyDp+IGdVM0D8XM=",
        version = "v0.0.0-20190304133409-c84515f646f2",
    )
    go_repository(
        name = "com_github_coreos_bbolt",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/coreos/bbolt",
        sum = "h1:wZwiHHUieZCquLkDL0B8UhzreNWsPHooDAG3q34zk0s=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_coreos_etcd",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/coreos/etcd",
        sum = "h1:8F3hqu9fGYLBifCmRCJsicFqDx/D68Rt3q1JMazcgBQ=",
        version = "v3.3.13+incompatible",
    )
    go_repository(
        name = "com_github_coreos_go_etcd",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/coreos/go-etcd",
        sum = "h1:bXhRBIXoTm9BYHS3gE0TtQuyNZyeEMux2sDi4oo5YOo=",
        version = "v2.0.0+incompatible",
    )
    go_repository(
        name = "com_github_coreos_go_semver",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/coreos/go-semver",
        sum = "h1:wkHLiw0WNATZnSG7epLsujiMCgPAc9xhjJ4tgnAxmfM=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_coreos_go_systemd",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/coreos/go-systemd",
        sum = "h1:Wf6HqHfScWJN9/ZjdUKyjop4mf3Qdd+1TvvltAvM3m8=",
        version = "v0.0.0-20190321100706-95778dfbb74e",
    )
    go_repository(
        name = "com_github_coreos_go_systemd_v22",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/coreos/go-systemd/v22",
        sum = "h1:D9/bQk5vlXQFZ6Kwuu6zaiXJ9oTPe68++AzAJc1DzSI=",
        version = "v22.3.2",
    )
    go_repository(
        name = "com_github_coreos_pkg",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/coreos/pkg",
        sum = "h1:lBNOc5arjvs8E5mO2tbpBpLoyyu8B6e44T7hJy6potg=",
        version = "v0.0.0-20180928190104-399ea9e2e55f",
    )
    go_repository(
        name = "com_github_cpuguy83_go_md2man",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cpuguy83/go-md2man",
        sum = "h1:BSKMNlYxDvnunlTymqtgONjNnaRV1sTpcovwwjF22jk=",
        version = "v1.0.10",
    )
    go_repository(
        name = "com_github_cpuguy83_go_md2man_v2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cpuguy83/go-md2man/v2",
        sum = "h1:p1EgwI/C7NhT0JmVkwCD2ZBK8j4aeHQX2pMHHBfMQ6w=",
        version = "v2.0.2",
    )
    go_repository(
        name = "com_github_creack_pty",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/creack/pty",
        sum = "h1:07n33Z8lZxZ2qwegKbObQohDhXDQxiMMz1NOUGYlesw=",
        version = "v1.1.11",
    )
    go_repository(
        name = "com_github_curioswitch_go_reassign",
        build_file_proto_mode = "disable",
        importpath = "github.com/curioswitch/go-reassign",
        sum = "h1:ekM07+z+VFT560Exz4mTv0/s1yU9gem6CJc/tlYpkmI=",
        version = "v0.1.2",
    )

    go_repository(
        name = "com_github_cznic_mathutil",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cznic/mathutil",
        sum = "h1:iwZdTE0PVqJCos1vaoKsclOGD3ADKpshg3SRtYBbwso=",
        version = "v0.0.0-20181122101859-297441e03548",
    )
    go_repository(
        name = "com_github_cznic_sortutil",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cznic/sortutil",
        sum = "h1:LpMLYGyy67BoAFGda1NeOBQwqlv7nUXpm+rIVHGxZZ4=",
        version = "v0.0.0-20181122101858-f5f958428db8",
    )
    go_repository(
        name = "com_github_cznic_strutil",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/cznic/strutil",
        sum = "h1:0rkFMAbn5KBKNpJyHQ6Prb95vIKanmAe62KxsrN+sqA=",
        version = "v0.0.0-20171016134553-529a34b1c186",
    )
    go_repository(
        name = "com_github_daixiang0_gci",
        build_file_proto_mode = "disable",
        importpath = "github.com/daixiang0/gci",
        sum = "h1:wUAqXChk8HbwXn8AfxD9DYSCp9Bpz1L3e6Q4Roe+q9E=",
        version = "v0.6.3",
    )

    go_repository(
        name = "com_github_danjacques_gofslock",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/danjacques/gofslock",
        sum = "h1:X6mKGhCFOxrKeeHAjv/3UvT6e5RRxW6wRdlqlV6/H4w=",
        version = "v0.0.0-20191023191349-0a45f885bc37",
    )
    go_repository(
        name = "com_github_data_dog_go_sqlmock",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/DATA-DOG/go-sqlmock",
        sum = "h1:Shsta01QNfFxHCfpW6YH2STWB0MudeXXEWMr20OEh60=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_datadog_zstd",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/DataDog/zstd",
        sum = "h1:EndNeuB0l9syBZhut0wns3gV1hL8zX8LIu6ZiVHWLIQ=",
        version = "v1.4.5",
    )
    go_repository(
        name = "com_github_davecgh_go_spew",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/davecgh/go-spew",
        sum = "h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_denis_tingaikin_go_header",
        build_file_proto_mode = "disable",
        importpath = "github.com/denis-tingaikin/go-header",
        sum = "h1:tEaZKAlqql6SKCY++utLmkPLd6K8IBM20Ha7UVm+mtU=",
        version = "v0.4.3",
    )

    go_repository(
        name = "com_github_dgraph_io_badger",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/dgraph-io/badger",
        sum = "h1:DshxFxZWXUcO0xX476VJC07Xsr6ZCBVRHKZ93Oh7Evo=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_dgraph_io_ristretto",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/dgraph-io/ristretto",
        sum = "h1:Wrc3UKTS+cffkOx0xRGFC+ZesNuTfn0ThvEC72N0krk=",
        version = "v0.1.1-0.20220403145359-8e850b710d6d",
    )
    go_repository(
        name = "com_github_dgrijalva_jwt_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/dgrijalva/jwt-go",
        replace = "github.com/form3tech-oss/jwt-go",
        sum = "h1:0sWoh2EtO7UrQdNTAN+hnU3QXa4AoivplyPLLHkcrLk=",
        version = "v3.2.6-0.20210809144907-32ab6a8243d7+incompatible",
    )
    go_repository(
        name = "com_github_dgryski_go_farm",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/dgryski/go-farm",
        sum = "h1:fAjc9m62+UWV/WAFKLNi6ZS0675eEUC9y3AlwSbQu1Y=",
        version = "v0.0.0-20200201041132-a6ae2369ad13",
    )
    go_repository(
        name = "com_github_dgryski_go_sip13",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/dgryski/go-sip13",
        sum = "h1:RMLoZVzv4GliuWafOuPuQDKSm1SJph7uCRnnS61JAn4=",
        version = "v0.0.0-20181026042036-e10d5fee7954",
    )
    go_repository(
        name = "com_github_djarvur_go_err113",
        build_file_proto_mode = "disable",
        importpath = "github.com/Djarvur/go-err113",
        sum = "h1:sHglBQTwgx+rWPdisA5ynNEsoARbiCBOyGcJM4/OzsM=",
        version = "v0.0.0-20210108212216-aea10b59be24",
    )

    go_repository(
        name = "com_github_dnaeon_go_vcr",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/dnaeon/go-vcr",
        sum = "h1:zHCHvJYTMh1N7xnV7zf1m1GPBF9Ad0Jk/whtQ1663qI=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_docker_go_units",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/docker/go-units",
        sum = "h1:3uh0PgVws3nIA0Q+MwDC8yjEPf9zjRfZZWXZYDct3Tw=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_dustin_go_humanize",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/dustin/go-humanize",
        sum = "h1:VSnTsYCnlFHaM2/igO1h6X3HA71jcobQuxemgkq4zYo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_eapache_go_resiliency",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/eapache/go-resiliency",
        sum = "h1:v7g92e/KSN71Rq7vSThKaWIq68fL4YHvWyiUKorFR1Q=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_eapache_go_xerial_snappy",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/eapache/go-xerial-snappy",
        sum = "h1:YEetp8/yCZMuEPMUDHG0CW/brkkEp8mzqk2+ODEitlw=",
        version = "v0.0.0-20180814174437-776d5712da21",
    )
    go_repository(
        name = "com_github_eapache_queue",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/eapache/queue",
        sum = "h1:YOEu7KNc61ntiQlcEeUIoDTJ2o8mQznoNvUhiigpIqc=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_eknkc_amber",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/eknkc/amber",
        sum = "h1:clC1lXBpe2kTj2VHdaIu9ajZQe4kcEY9j0NsnDDBZ3o=",
        version = "v0.0.0-20171010120322-cdade1c07385",
    )
    go_repository(
        name = "com_github_elastic_gosigar",
        build_file_proto_mode = "disable",
        importpath = "github.com/elastic/gosigar",
        sum = "h1:ehdJWCzrtTHhYDmUAO6Zpu+uez4UB/dhH0oJSQ/o1Pk=",
        version = "v0.9.0",
    )
    go_repository(
        name = "com_github_elazarl_go_bindata_assetfs",
        build_file_proto_mode = "disable",
        importpath = "github.com/elazarl/go-bindata-assetfs",
        sum = "h1:G/bYguwHIzWq9ZoyUQqrjTmJbbYn3j3CKKpKinvZLFk=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_emirpasic_gods",
        build_file_proto_mode = "disable",
        importpath = "github.com/emirpasic/gods",
        sum = "h1:FXtiHYKDGKCW2KzwZKx0iC0PQmdlorYgdFG9jPXJ1Bc=",
        version = "v1.18.1",
    )

    go_repository(
        name = "com_github_envoyproxy_go_control_plane",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/envoyproxy/go-control-plane",
        sum = "h1:fP+fF0up6oPY49OrjPrhIJ8yQfdIM85NXMLkMg1EXVs=",
        version = "v0.9.10-0.20210907150352-cf90f659a021",
    )
    go_repository(
        name = "com_github_envoyproxy_protoc_gen_validate",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/envoyproxy/protoc-gen-validate",
        sum = "h1:EQciDnbrYxy13PgWoY8AqoxGiPrpgBZ1R8UNe3ddc+A=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_esimonov_ifshort",
        build_file_proto_mode = "disable",
        importpath = "github.com/esimonov/ifshort",
        sum = "h1:6SID4yGWfRae/M7hkVDVVyppy8q/v9OuxNdmjLQStBA=",
        version = "v1.0.4",
    )

    go_repository(
        name = "com_github_etcd_io_bbolt",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/etcd-io/bbolt",
        sum = "h1:gSJmxrs37LgTqR/oyJBWok6k6SvXEUerFTbltIhXkBM=",
        version = "v1.3.3",
    )
    go_repository(
        name = "com_github_etcd_io_gofail",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/etcd-io/gofail",
        sum = "h1:Y2I0lxOttdUKz+hNaIdG3FtjuQrTmwXun1opRV65IZc=",
        version = "v0.0.0-20190801230047-ad7f989257ca",
    )
    go_repository(
        name = "com_github_ettle_strcase",
        build_file_proto_mode = "disable",
        importpath = "github.com/ettle/strcase",
        sum = "h1:htFueZyVeE1XNnMEfbqp5r67qAN/4r6ya1ysq8Q+Zcw=",
        version = "v0.1.1",
    )
    go_repository(
        name = "com_github_evanphx_json_patch",
        build_file_proto_mode = "disable",
        importpath = "github.com/evanphx/json-patch",
        sum = "h1:K1MDoo4AZ4wU0GIU/fPmtZg7VpzLjCxu+UwBD1FvwOc=",
        version = "v4.1.0+incompatible",
    )
    go_repository(
        name = "com_github_facebookgo_clock",
        build_file_proto_mode = "disable",
        importpath = "github.com/facebookgo/clock",
        sum = "h1:yDWHCSQ40h88yih2JAcL6Ls/kVkSE8GFACTGVnMPruw=",
        version = "v0.0.0-20150410010913-600d898af40a",
    )

    go_repository(
        name = "com_github_fasthttp_contrib_websocket",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/fasthttp-contrib/websocket",
        sum = "h1:DddqAaWDpywytcG8w/qoQ5sAN8X12d3Z3koB0C3Rxsc=",
        version = "v0.0.0-20160511215533-1f3b11f56072",
    )
    go_repository(
        name = "com_github_fatanugraha_noloopclosure",
        build_file_proto_mode = "disable",
        importpath = "github.com/fatanugraha/noloopclosure",
        sum = "h1:AhepjAikNpk50qTZoipHZqeZtnyKT/C2Tk5dGn7nC+A=",
        version = "v0.1.1",
    )

    go_repository(
        name = "com_github_fatih_color",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/fatih/color",
        sum = "h1:8LOYc1KYPPmyKMuN8QV2DNRWNbLo6LZ0iLs8+mlH53w=",
        version = "v1.13.0",
    )
    go_repository(
        name = "com_github_fatih_structs",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/fatih/structs",
        sum = "h1:Q7juDM0QtcnhCpeyLGQKyg4TOIghuNXrkL32pHAUMxo=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_fatih_structtag",
        build_file_proto_mode = "disable",
        importpath = "github.com/fatih/structtag",
        sum = "h1:/OdNE99OxoI/PqaW/SuSK9uxxT3f/tcSZgon/ssNSx4=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_felixge_httpsnoop",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/felixge/httpsnoop",
        sum = "h1:lvB5Jl89CsZtGIWuTcDM1E/vkVs49/Ml7JJe07l8SPQ=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_firefart_nonamedreturns",
        build_file_proto_mode = "disable",
        importpath = "github.com/firefart/nonamedreturns",
        sum = "h1:abzI1p7mAEPYuR4A+VLKn4eNDOycjYo2phmY9sfv40Y=",
        version = "v1.0.4",
    )

    go_repository(
        name = "com_github_flosch_pongo2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/flosch/pongo2",
        sum = "h1:GY1+t5Dr9OKADM64SYnQjw/w99HMYvQ0A8/JoUkxVmc=",
        version = "v0.0.0-20190707114632-bbf5a6c351f4",
    )
    go_repository(
        name = "com_github_fogleman_gg",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/fogleman/gg",
        sum = "h1:WXb3TSNmHp2vHoCroCIB1foO/yQ36swABL8aOVeDpgg=",
        version = "v1.2.1-0.20190220221249-0403632d5b90",
    )
    go_repository(
        name = "com_github_form3tech_oss_jwt_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/form3tech-oss/jwt-go",
        sum = "h1:/l4kBbb4/vGSsdtB5nUe8L7B9mImVMaBPw9L/0TBHU8=",
        version = "v3.2.5+incompatible",
    )
    go_repository(
        name = "com_github_fortytw2_leaktest",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/fortytw2/leaktest",
        sum = "h1:u8491cBMTQ8ft8aeV+adlcytMZylmA5nnwwkRZjI8vw=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_frankban_quicktest",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/frankban/quicktest",
        sum = "h1:8sXhOn0uLys67V8EsXLc6eszDs8VXWxL3iRvebPhedY=",
        version = "v1.11.3",
    )
    go_repository(
        name = "com_github_fsnotify_fsnotify",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/fsnotify/fsnotify",
        sum = "h1:jRbGcIw6P2Meqdwuo0H1p6JVLbL5DHKAKlYndzMwVZI=",
        version = "v1.5.4",
    )
    go_repository(
        name = "com_github_fsouza_fake_gcs_server",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/fsouza/fake-gcs-server",
        sum = "h1:XyaGOlqo+R5sjT03x2ymk0xepaQlgwhRLTT2IopW0zA=",
        version = "v1.19.0",
    )
    go_repository(
        name = "com_github_fzipp_gocyclo",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/fzipp/gocyclo",
        sum = "h1:lsblElZG7d3ALtGMx9fmxeTKZaLLpU8mET09yN4BBLo=",
        version = "v0.6.0",
    )
    go_repository(
        name = "com_github_gaijinentertainment_go_exhaustruct_v2",
        build_file_proto_mode = "disable",
        importpath = "github.com/GaijinEntertainment/go-exhaustruct/v2",
        sum = "h1:+r1rSv4gvYn0wmRjC8X7IAzX8QezqtFV9m0MUHFJgts=",
        version = "v2.3.0",
    )

    go_repository(
        name = "com_github_gavv_httpexpect",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gavv/httpexpect",
        sum = "h1:1X9kcRshkSKEjNJJxX9Y9mQ5BRfbxU5kORdjhlA1yX8=",
        version = "v2.0.0+incompatible",
    )
    go_repository(
        name = "com_github_getsentry_raven_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/getsentry/raven-go",
        sum = "h1:no+xWJRb5ZI7eE8TWgIq1jLulQiIoLG0IfYxv5JYMGs=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_ghemawat_stream",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/ghemawat/stream",
        sum = "h1:r5GgOLGbza2wVHRzK7aAj6lWZjfbAwiu/RDCVOKjRyM=",
        version = "v0.0.0-20171120220530-696b145b53b9",
    )
    go_repository(
        name = "com_github_ghodss_yaml",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/ghodss/yaml",
        sum = "h1:wQHKEahhL6wmXdzwWG11gIVCkOv05bNOh+Rxn0yngAk=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_gin_contrib_sse",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gin-contrib/sse",
        sum = "h1:t8FVkw33L+wilf2QiWkw0UV77qRpcH/JHPKGpKa2E8g=",
        version = "v0.0.0-20190301062529-5545eab6dad3",
    )
    go_repository(
        name = "com_github_gin_gonic_gin",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gin-gonic/gin",
        sum = "h1:3tMoCCfM7ppqsR0ptz/wi1impNpT7/9wQtMZ8lr1mCQ=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_github_go_check_check",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-check/check",
        sum = "h1:0gkP6mzaMqkmpcJYCFOLkIBwI7xFExG03bbkOkCvUPI=",
        version = "v0.0.0-20180628173108-788fd7840127",
    )
    go_repository(
        name = "com_github_go_critic_go_critic",
        build_file_proto_mode = "disable",
        importpath = "github.com/go-critic/go-critic",
        sum = "h1:tucuG1pvOyYgpBIrVxw0R6gwO42lNa92Aq3VaDoIs+E=",
        version = "v0.6.4",
    )

    go_repository(
        name = "com_github_go_errors_errors",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-errors/errors",
        sum = "h1:LUHzmkK3GUKUrL/1gfBUxAHzcev3apQlezX/+O7ma6w=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_go_gl_glfw",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-gl/glfw",
        sum = "h1:QbL/5oDUmRBzO9/Z7Seo6zf912W/a6Sr4Eu0G/3Jho0=",
        version = "v0.0.0-20190409004039-e6da0acd62b1",
    )
    go_repository(
        name = "com_github_go_gl_glfw_v3_3_glfw",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-gl/glfw/v3.3/glfw",
        sum = "h1:WtGNWLvXpe6ZudgnXrq0barxBImvnnJoMEhXAzcbM0I=",
        version = "v0.0.0-20200222043503-6f7a984d4dc4",
    )
    go_repository(
        name = "com_github_go_ini_ini",
        build_file_proto_mode = "disable",
        importpath = "github.com/go-ini/ini",
        sum = "h1:Mujh4R/dH6YL8bxuISne3xX2+qcQ9p0IxKAP6ExWoUo=",
        version = "v1.25.4",
    )

    go_repository(
        name = "com_github_go_kit_kit",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-kit/kit",
        sum = "h1:wDJmvq38kDhkVxi50ni9ykkdUr1PKgqKOoi01fa0Mdk=",
        version = "v0.9.0",
    )
    go_repository(
        name = "com_github_go_kit_log",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-kit/log",
        sum = "h1:7i2K3eKTos3Vc0enKCfnVcgHh2olr/MyfboYq7cAcFw=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_go_logfmt_logfmt",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-logfmt/logfmt",
        sum = "h1:otpy5pqBCBZ1ng9RQ0dPu4PN7ba75Y/aA+UpowDyNVA=",
        version = "v0.5.1",
    )
    go_repository(
        name = "com_github_go_martini_martini",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-martini/martini",
        sum = "h1:xveKWz2iaueeTaUgdetzel+U7exyigDYBryyVfV/rZk=",
        version = "v0.0.0-20170121215854-22fa46961aab",
    )
    go_repository(
        name = "com_github_go_ole_go_ole",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-ole/go-ole",
        sum = "h1:/Fpf6oFPoeFik9ty7siob0G6Ke8QvQEuVcuChpwXzpY=",
        version = "v1.2.6",
    )
    go_repository(
        name = "com_github_go_sql_driver_mysql",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-sql-driver/mysql",
        sum = "h1:BCTh4TKNUYmOmMUcQ3IipzF5prigylS7XXjEkfCHuOE=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_go_stack_stack",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-stack/stack",
        sum = "h1:5SgMzNM5HxrEjV0ww2lTmX6E2Izsfxas4+YHWRs3Lsk=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_github_go_task_slim_sprig",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/go-task/slim-sprig",
        sum = "h1:p104kn46Q8WdvHunIJ9dAyjPVtrBPhSr3KT2yUst43I=",
        version = "v0.0.0-20210107165309-348f09dbbbc0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astcast",
        build_file_proto_mode = "disable",
        importpath = "github.com/go-toolsmith/astcast",
        sum = "h1:JojxlmI6STnFVG9yOImLeGREv8W2ocNUM+iOhR6jE7g=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astcopy",
        build_file_proto_mode = "disable",
        importpath = "github.com/go-toolsmith/astcopy",
        sum = "h1:l09oBhAPyV74kLJ3ZO31iBU8htZGTwr9LTjuMCyL8go=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_go_toolsmith_astequal",
        build_file_proto_mode = "disable",
        importpath = "github.com/go-toolsmith/astequal",
        sum = "h1:+XvaV8zNxua+9+Oa4AHmgmpo4RYAbwr/qjNppLfX2yM=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_go_toolsmith_astfmt",
        build_file_proto_mode = "disable",
        importpath = "github.com/go-toolsmith/astfmt",
        sum = "h1:A0vDDXt+vsvLEdbMFJAUBI/uTbRw1ffOPnxsILnFL6k=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_astp",
        build_file_proto_mode = "disable",
        importpath = "github.com/go-toolsmith/astp",
        sum = "h1:alXE75TXgcmupDsMK1fRAy0YUzLzqPVvBKoyWV+KPXg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_strparse",
        build_file_proto_mode = "disable",
        importpath = "github.com/go-toolsmith/strparse",
        sum = "h1:Vcw78DnpCAKlM20kSbAyO4mPfJn/lyYA4BJUDxe2Jb4=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_go_toolsmith_typep",
        build_file_proto_mode = "disable",
        importpath = "github.com/go-toolsmith/typep",
        sum = "h1:8xdsa1+FSIH/RhEkgnD1j2CJOy5mNllW1Q9tRiYwvlk=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_go_xmlfmt_xmlfmt",
        build_file_proto_mode = "disable",
        importpath = "github.com/go-xmlfmt/xmlfmt",
        sum = "h1:khEcpUM4yFcxg4/FHQWkvVRmgijNXRfzkIDHh23ggEo=",
        version = "v0.0.0-20191208150333-d5b6f63a941b",
    )
    go_repository(
        name = "com_github_gobwas_glob",
        build_file_proto_mode = "disable",
        importpath = "github.com/gobwas/glob",
        sum = "h1:A4xDbljILXROh+kObIiy5kIaPYD8e96x1tgBhUI5J+Y=",
        version = "v0.2.3",
    )

    go_repository(
        name = "com_github_gobwas_httphead",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gobwas/httphead",
        sum = "h1:s+21KNqlpePfkah2I+gwHF8xmJWRjooY+5248k6m4A0=",
        version = "v0.0.0-20180130184737-2c6c146eadee",
    )
    go_repository(
        name = "com_github_gobwas_pool",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gobwas/pool",
        sum = "h1:QEmUOlnSjWtnpRGHF3SauEiOsy82Cup83Vf2LcMlnc8=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_gobwas_ws",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gobwas/ws",
        sum = "h1:CoAavW/wd/kulfZmSIBt6p24n4j7tHgNVCjsfHVNUbo=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_godbus_dbus_v5",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/godbus/dbus/v5",
        sum = "h1:9349emZab16e7zQvpmsbtjc18ykshndd8y2PG3sgJbA=",
        version = "v5.0.4",
    )
    go_repository(
        name = "com_github_gofrs_flock",
        build_file_proto_mode = "disable",
        importpath = "github.com/gofrs/flock",
        sum = "h1:+gYjHKf32LDeiEEFhQaotPbLuUXjY5ZqxKgXy7n59aw=",
        version = "v0.8.1",
    )

    go_repository(
        name = "com_github_gogo_googleapis",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gogo/googleapis",
        sum = "h1:dR8+Q0uO5S2ZBcs2IH6VBKYwSxPo2vYCYq0ot0mu7xA=",
        version = "v0.0.0-20180223154316-0cd9801be74a",
    )
    go_repository(
        name = "com_github_gogo_protobuf",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gogo/protobuf",
        sum = "h1:Ov1cvc58UF3b5XjBnZv7+opcTcQFZebYjWzi34vdm4Q=",
        version = "v1.3.2",
    )
    go_repository(
        name = "com_github_gogo_status",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gogo/status",
        sum = "h1:+eIkrewn5q6b30y+g/BJINVVdi2xH7je5MPJ3ZPK3JA=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_goji_httpauth",
        build_file_proto_mode = "disable",
        importpath = "github.com/goji/httpauth",
        sum = "h1:lBXNCxVENCipq4D1Is42JVOP4eQjlB8TQ6H69Yx5J9Q=",
        version = "v0.0.0-20160601135302-2da839ab0f4d",
    )

    go_repository(
        name = "com_github_golang_freetype",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/golang/freetype",
        sum = "h1:DACJavvAHhabrF08vX0COfcOBJRhZ8lUbR+ZWIs0Y5g=",
        version = "v0.0.0-20170609003504-e2365dfdc4a0",
    )
    go_repository(
        name = "com_github_golang_glog",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/golang/glog",
        sum = "h1:nfP3RFugxnNRyKgeWd4oI1nYvXpxrx8ck8ZrcizshdQ=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_golang_groupcache",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/golang/groupcache",
        sum = "h1:oI5xCqsCo564l8iNU+DwB5epxmsaqB+rhGL0m5jtYqE=",
        version = "v0.0.0-20210331224755-41bb18bfe9da",
    )
    go_repository(
        name = "com_github_golang_mock",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/golang/mock",
        sum = "h1:ErTB+efbowRARo13NNdxyJji2egdxLGQhRaY+DUumQc=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_golang_protobuf",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/golang/protobuf",
        patch_args = ["-p1"],
        patches = [
            "//build/patches:com_github_golang_protobuf.patch",
        ],
        sum = "h1:ROPKBNFfQgOUMifHyP+KYbvpjbdoFNs+aK7DXlji0Tw=",
        version = "v1.5.2",
    )
    go_repository(
        name = "com_github_golang_snappy",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/golang/snappy",
        sum = "h1:yAGX7huGHXlcLOEtBnF4w7FQwA26wojNCwOYAEhLjQM=",
        version = "v0.0.4",
    )
    go_repository(
        name = "com_github_golangci_check",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/check",
        sum = "h1:23T5iq8rbUYlhpt5DB4XJkc6BU31uODLD1o1gKvZmD0=",
        version = "v0.0.0-20180506172741-cfe4005ccda2",
    )
    go_repository(
        name = "com_github_golangci_dupl",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/dupl",
        sum = "h1:w8hkcTqaFpzKqonE9uMCefW1WDie15eSP/4MssdenaM=",
        version = "v0.0.0-20180902072040-3e9179ac440a",
    )
    go_repository(
        name = "com_github_golangci_go_misc",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/go-misc",
        sum = "h1:6RGUuS7EGotKx6J5HIP8ZtyMdiDscjMLfRBSPuzVVeo=",
        version = "v0.0.0-20220329215616-d24fe342adfe",
    )

    go_repository(
        name = "com_github_golangci_gofmt",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/gofmt",
        sum = "h1:iR3fYXUjHCR97qWS8ch1y9zPNsgXThGwjKPrYfqMPks=",
        version = "v0.0.0-20190930125516-244bba706f1a",
    )
    go_repository(
        name = "com_github_golangci_golangci_lint",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/golangci-lint",
        sum = "h1:I8WHOavragDttlLHtSraHn/h39C+R60bEQ5NoGcHQr8=",
        version = "v1.49.0",
    )
    go_repository(
        name = "com_github_golangci_gosec",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/gosec",
        sum = "h1:Bi7BYmZVg4C+mKGi8LeohcP2GGUl2XJD4xCkJoZSaYc=",
        version = "v0.0.0-20180901114220-8afd9cbb6cfb",
    )
    go_repository(
        name = "com_github_golangci_lint_1",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/lint-1",
        sum = "h1:MfyDlzVjl1hoaPzPD4Gpb/QgoRfSBR0jdhwGyAWwMSA=",
        version = "v0.0.0-20191013205115-297bf364a8e0",
    )
    go_repository(
        name = "com_github_golangci_maligned",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/maligned",
        sum = "h1:kNY3/svz5T29MYHubXix4aDDuE3RWHkPvopM/EDv/MA=",
        version = "v0.0.0-20180506175553-b1d89398deca",
    )

    go_repository(
        name = "com_github_golangci_misspell",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/misspell",
        sum = "h1:pLzmVdl3VxTOncgzHcvLOKirdvcx/TydsClUQXTehjo=",
        version = "v0.3.5",
    )

    go_repository(
        name = "com_github_golangci_prealloc",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/prealloc",
        sum = "h1:leSNB7iYzLYSSx3J/s5sVf4Drkc68W2wm4Ixh/mr0us=",
        version = "v0.0.0-20180630174525-215b22d4de21",
    )
    go_repository(
        name = "com_github_golangci_revgrep",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/revgrep",
        sum = "h1:DIPQnGy2Gv2FSA4B/hh8Q7xx3B7AIDk3DAMeHclH1vQ=",
        version = "v0.0.0-20220804021717-745bb2f7c2e6",
    )
    go_repository(
        name = "com_github_golangci_unconvert",
        build_file_proto_mode = "disable",
        importpath = "github.com/golangci/unconvert",
        sum = "h1:zwtduBRr5SSWhqsYNgcuWO2kFlpdOZbP0+yRjmvPGys=",
        version = "v0.0.0-20180507085042-28b1c447d1f4",
    )

    go_repository(
        name = "com_github_gomodule_redigo",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gomodule/redigo",
        sum = "h1:y0Wmhvml7cGnzPa9nocn/fMraMH/lMDdeG+rkx4VgYY=",
        version = "v1.7.1-0.20190724094224-574c33c3df38",
    )
    go_repository(
        name = "com_github_google_btree",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/google/btree",
        sum = "h1:xf4v41cLI2Z6FxbKm+8Bu+m8ifhj15JuZ9sa0jZCMUU=",
        version = "v1.1.2",
    )
    go_repository(
        name = "com_github_google_go_cmp",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/google/go-cmp",
        sum = "h1:e6P7q2lk1O+qJJb4BtCQXlK8vWEO8V1ZeuEdJNOqZyg=",
        version = "v0.5.8",
    )
    go_repository(
        name = "com_github_google_go_querystring",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/google/go-querystring",
        sum = "h1:Xkwi/a1rcvNg1PPYe5vI8GbeBY/jrVuDX5ASuANWTrk=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_google_gofuzz",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/google/gofuzz",
        sum = "h1:A8PeW59pxE9IoFRqBp37U+mSNaQoZ46F1f0f863XSXw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_google_martian",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/google/martian",
        sum = "h1:/CP5g8u/VJHijgedC/Legn3BAbAaWPgecwXBIDzw5no=",
        version = "v2.1.0+incompatible",
    )
    go_repository(
        name = "com_github_google_martian_v3",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/google/martian/v3",
        sum = "h1:d8MncMlErDFTwQGBK1xhv026j9kqhvw1Qv9IbWT1VLQ=",
        version = "v3.2.1",
    )
    go_repository(
        name = "com_github_google_pprof",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/google/pprof",
        sum = "h1:c8EUapQFi+kjzedr4c6WqbwMdmB95+oDBWZ5XFHFYxY=",
        version = "v0.0.0-20211122183932-1daafda22083",
    )
    go_repository(
        name = "com_github_google_renameio",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/google/renameio",
        sum = "h1:GOZbcHa3HfsPKPlmyPyN2KEohoMXOhdMbHrvbpl2QaA=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_google_uuid",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/google/uuid",
        sum = "h1:t6JiXgmwXMjEs8VusXIJk2BXHsn+wx8BZdTaoZ5fu7I=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_googleapis_gax_go_v2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/googleapis/gax-go/v2",
        sum = "h1:s7jOdKSaksJVOxE0Y/S32otcfiP+UQ0cL8/GTKaONwE=",
        version = "v2.2.0",
    )
    go_repository(
        name = "com_github_googleapis_gnostic",
        build_file_proto_mode = "disable",
        importpath = "github.com/googleapis/gnostic",
        sum = "h1:l6N3VoaVzTncYYW+9yOz2LJJammFZGBO13sqgEhpy9g=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_gophercloud_gophercloud",
        build_file_proto_mode = "disable",
        importpath = "github.com/gophercloud/gophercloud",
        sum = "h1:hQpY0g0UGsLKLDs8UJ6xpA2gNCkEdEbvxSPqLItXCpI=",
        version = "v0.0.0-20190301152420-fca40860790e",
    )

    go_repository(
        name = "com_github_gopherjs_gopherjs",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gopherjs/gopherjs",
        sum = "h1:EGx4pi6eqNxGaHF6qqu48+N2wcFQ5qg5FXgOdqsJ5d8=",
        version = "v0.0.0-20181017120253-0766667cb4d1",
    )
    go_repository(
        name = "com_github_gordonklaus_ineffassign",
        build_file_proto_mode = "disable",
        importpath = "github.com/gordonklaus/ineffassign",
        sum = "h1:PVRE9d4AQKmbelZ7emNig1+NT27DUmKZn5qXxfio54U=",
        version = "v0.0.0-20210914165742-4cc7213b9bc8",
    )
    go_repository(
        name = "com_github_gorilla_context",
        build_file_proto_mode = "disable",
        importpath = "github.com/gorilla/context",
        sum = "h1:AWwleXJkX/nhcU9bZSnZoi3h/qGYqQAGhq6zZe/aQW8=",
        version = "v1.1.1",
    )

    go_repository(
        name = "com_github_gorilla_handlers",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gorilla/handlers",
        sum = "h1:9lRY6j8DEeeBT10CvO9hGW0gmky0BprnvDI5vfhUHH4=",
        version = "v1.5.1",
    )
    go_repository(
        name = "com_github_gorilla_mux",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gorilla/mux",
        sum = "h1:i40aqfkR1h2SlN9hojwV5ZA91wcXFOvkdNIeFDP5koI=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_github_gorilla_securecookie",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gorilla/securecookie",
        sum = "h1:miw7JPhV+b/lAHSXz4qd/nN9jRiAFV5FwjeKyCS8BvQ=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_gorilla_sessions",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gorilla/sessions",
        sum = "h1:DHd3rPN5lE3Ts3D8rKkQ8x/0kqfeNmBAaiSi+o7FsgI=",
        version = "v1.2.1",
    )
    go_repository(
        name = "com_github_gorilla_websocket",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/gorilla/websocket",
        sum = "h1:+/TMaTYc4QFitKJxsQ7Yye35DkWvkdLcvGKqM+x0Ufc=",
        version = "v1.4.2",
    )
    go_repository(
        name = "com_github_gostaticanalysis_analysisutil",
        build_file_proto_mode = "disable",
        importpath = "github.com/gostaticanalysis/analysisutil",
        sum = "h1:ZMCjoue3DtDWQ5WyU16YbjbQEQ3VuzwxALrpYd+HeKk=",
        version = "v0.7.1",
    )
    go_repository(
        name = "com_github_gostaticanalysis_comment",
        build_file_proto_mode = "disable",
        importpath = "github.com/gostaticanalysis/comment",
        sum = "h1:hlnx5+S2fY9Zo9ePo4AhgYsYHbM2+eAv8m/s1JiCd6Q=",
        version = "v1.4.2",
    )
    go_repository(
        name = "com_github_gostaticanalysis_forcetypeassert",
        build_file_proto_mode = "disable",
        importpath = "github.com/gostaticanalysis/forcetypeassert",
        sum = "h1:6eUflI3DiGusXGK6X7cCcIgVCpZ2CiZ1Q7jl6ZxNV70=",
        version = "v0.1.0",
    )
    go_repository(
        name = "com_github_gostaticanalysis_nilerr",
        build_file_proto_mode = "disable",
        importpath = "github.com/gostaticanalysis/nilerr",
        sum = "h1:ThE+hJP0fEp4zWLkWHWcRyI2Od0p7DlgYG3Uqrmrcpk=",
        version = "v0.1.1",
    )
    go_repository(
        name = "com_github_gostaticanalysis_testutil",
        build_file_proto_mode = "disable",
        importpath = "github.com/gostaticanalysis/testutil",
        sum = "h1:nhdCmubdmDF6VEatUNjgUZBJKWRqugoISdUv3PPQgHY=",
        version = "v0.4.0",
    )

    go_repository(
        name = "com_github_grpc_ecosystem_go_grpc_middleware",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/grpc-ecosystem/go-grpc-middleware",
        sum = "h1:+9834+KizmvFV7pXQGSXQTsaWhq2GjuNUt0aUU0YBYw=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_go_grpc_prometheus",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/grpc-ecosystem/go-grpc-prometheus",
        sum = "h1:Ovs26xHkKqVztRpIrF/92BcuyuQ/YW4NSIpoGtfXNho=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_grpc_gateway",
        build_file_proto_mode = "disable_global",
        build_naming_convention = "go_default_library",
        importpath = "github.com/grpc-ecosystem/grpc-gateway",
        patch_args = ["-p1"],
        patches = [
            "//build/patches:com_github_grpc_ecosystem_grpc_gateway.patch",
        ],
        sum = "h1:gmcG1KaJ57LophUzW0Hy8NmPhnMZb4M0+kPpLofRdBo=",
        version = "v1.16.0",
    )
    go_repository(
        name = "com_github_grpc_ecosystem_grpc_opentracing",
        build_file_proto_mode = "disable",
        importpath = "github.com/grpc-ecosystem/grpc-opentracing",
        sum = "h1:MJG/KsmcqMwFAkh8mTnAwhyKoB+sTAnY4CACC110tbU=",
        version = "v0.0.0-20180507213350-8e809c8a8645",
    )

    go_repository(
        name = "com_github_hashicorp_consul_api",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/consul/api",
        sum = "h1:BNQPM9ytxj6jbjjdRPioQ94T6YXriSopn0i8COv6SRA=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_hashicorp_consul_sdk",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/consul/sdk",
        sum = "h1:LnuDWGNsoajlhGyHJvuWW6FVqRl8JOTPqS6CPTsYjhY=",
        version = "v0.1.1",
    )
    go_repository(
        name = "com_github_hashicorp_errwrap",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/errwrap",
        sum = "h1:hLrqtEDnRye3+sgx6z4qVLNuviH3MR5aQ0ykNJa/UYA=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_cleanhttp",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/go-cleanhttp",
        sum = "h1:dH3aiDG9Jvb5r5+bYHsikaOUIpcM0xvgMXVoDkXMzJM=",
        version = "v0.5.1",
    )
    go_repository(
        name = "com_github_hashicorp_go_immutable_radix",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/go-immutable-radix",
        sum = "h1:AKDB1HM5PWEA7i4nhcpwOrO2byshxBjXVn/J/3+z5/0=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_msgpack",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/go-msgpack",
        sum = "h1:SFT72YqIkOcLdWJUYcriVX7hbrZpwc/f7h8aW2NUqrA=",
        version = "v0.5.4",
    )
    go_repository(
        name = "com_github_hashicorp_go_multierror",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/go-multierror",
        sum = "h1:H5DkEtf6CXdFp0N0Em5UCwQpXMWke8IA0+lD48awMYo=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_hashicorp_go_net",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/go.net",
        sum = "h1:sNCoNyDEvN1xa+X0baata4RdcpKwcMS6DH+xwfqPgjw=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_hashicorp_go_rootcerts",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/go-rootcerts",
        sum = "h1:Rqb66Oo1X/eSV1x66xbDccZjhJigjg0+e82kpwzSwCI=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_sockaddr",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/go-sockaddr",
        sum = "h1:ztczhD1jLxIRjVejw8gFomI1BQZOe2WoVOu0SyteCQc=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_hashicorp_go_syslog",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/go-syslog",
        sum = "h1:KaodqZuhUoZereWVIYmpUgZysurB1kBLX2j0MwMrUAE=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_go_uuid",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/go-uuid",
        sum = "h1:cfejS+Tpcp13yd5nYHWDI6qVCny6wyX2Mt5SGur2IGE=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_hashicorp_go_version",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/go-version",
        sum = "h1:feTTfFNnjP967rlCxM/I9g701jU+RN74YKx2mOkIeek=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_hashicorp_golang_lru",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/golang-lru",
        sum = "h1:0hERBMJE1eitiLkihrMvRVBYAkpHzc/J3QdDN+dAcgU=",
        version = "v0.5.1",
    )
    go_repository(
        name = "com_github_hashicorp_hcl",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/hcl",
        sum = "h1:0Anlzjpi4vEasTeNFn2mLJgTSwt0+6sfsiTG8qcWGx4=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_logutils",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/logutils",
        sum = "h1:dLEQVugN8vlakKOUE3ihGLTZJRB4j+M2cdTm/ORI65Y=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_mdns",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/mdns",
        sum = "h1:WhIgCr5a7AaVH6jPUwjtRuuE7/RDufnUvzIr48smyxs=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hashicorp_memberlist",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/memberlist",
        sum = "h1:EmmoJme1matNzb+hMpDuR/0sbJSUisxyqBGG676r31M=",
        version = "v0.1.3",
    )
    go_repository(
        name = "com_github_hashicorp_serf",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hashicorp/serf",
        sum = "h1:YZ7UKsJv+hKjqGVUUbtE3HNj79Eln2oQ75tniF6iPt0=",
        version = "v0.8.2",
    )
    go_repository(
        name = "com_github_hdrhistogram_hdrhistogram_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/HdrHistogram/hdrhistogram-go",
        sum = "h1:5IcZpTvzydCQeHzK4Ef/D5rrSqwxob0t8PQPMybUNFM=",
        version = "v1.1.2",
    )
    go_repository(
        name = "com_github_hexops_gotextdiff",
        build_file_proto_mode = "disable",
        importpath = "github.com/hexops/gotextdiff",
        sum = "h1:gitA9+qJrrTCsiCl7+kh75nPqQt1cx4ZkudSTLoUqJM=",
        version = "v1.0.3",
    )

    go_repository(
        name = "com_github_hpcloud_tail",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hpcloud/tail",
        sum = "h1:nfCOvKYfkgYP8hkirhJocXT2+zOD8yUNjXaWfTlyFKI=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_hydrogen18_memlistener",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/hydrogen18/memlistener",
        sum = "h1:EPRgaDqXpLFUJLXZdGLnBTy1l6CLiNAPnvn2l+kHit0=",
        version = "v0.0.0-20141126152155-54553eb933fb",
    )
    go_repository(
        name = "com_github_iancoleman_strcase",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/iancoleman/strcase",
        sum = "h1:05I4QRnGpI0m37iZQRuskXh+w77mr6Z41lwQzuHLwW0=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_ianlancetaylor_demangle",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/ianlancetaylor/demangle",
        sum = "h1:uGg2frlt3IcT7kbV6LEp5ONv4vmoO2FW4qSO+my/aoM=",
        version = "v0.0.0-20210905161508-09a460cdf81d",
    )
    go_repository(
        name = "com_github_imkira_go_interpol",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/imkira/go-interpol",
        sum = "h1:KIiKr0VSG2CUW1hl1jpiyuzuJeKUUpC8iM1AIE7N1Vk=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_inconshreveable_mousetrap",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/inconshreveable/mousetrap",
        sum = "h1:Z8tu5sraLXCXIcARxBp/8cbvlwVa7Z1NHg9XEKhtSvM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_influxdata_influxdb",
        build_file_proto_mode = "disable",
        importpath = "github.com/influxdata/influxdb",
        sum = "h1:O08dwjOwv9CYlJJEUZKAazSoQDKlsN34Bq3dnhqhyVI=",
        version = "v0.0.0-20170331210902-15e594fc09f1",
    )

    go_repository(
        name = "com_github_iris_contrib_blackfriday",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/iris-contrib/blackfriday",
        sum = "h1:o5sHQHHm0ToHUlAJSTjW9UWicjJSDDauOOQ2AHuIVp4=",
        version = "v2.0.0+incompatible",
    )
    go_repository(
        name = "com_github_iris_contrib_go_uuid",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/iris-contrib/go.uuid",
        sum = "h1:XZubAYg61/JwnJNbZilGjf3b3pB80+OQg2qf6c8BfWE=",
        version = "v2.0.0+incompatible",
    )
    go_repository(
        name = "com_github_iris_contrib_i18n",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/iris-contrib/i18n",
        sum = "h1:Kyp9KiXwsyZRTeoNjgVCrWks7D8ht9+kg6yCjh8K97o=",
        version = "v0.0.0-20171121225848-987a633949d0",
    )
    go_repository(
        name = "com_github_iris_contrib_schema",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/iris-contrib/schema",
        sum = "h1:10g/WnoRR+U+XXHWKBHeNy/+tZmM2kcAVGLOsz+yaDA=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_jackc_fake",
        build_file_proto_mode = "disable",
        importpath = "github.com/jackc/fake",
        sum = "h1:vr3AYkKovP8uR8AvSGGUK1IDqRa5lAAvEkZG1LKaCRc=",
        version = "v0.0.0-20150926172116-812a484cc733",
    )
    go_repository(
        name = "com_github_jackc_pgx",
        build_file_proto_mode = "disable",
        importpath = "github.com/jackc/pgx",
        sum = "h1:0Vihzu20St42/UDsvZGdNE6jak7oi/UOeMzwMPHkgFY=",
        version = "v3.2.0+incompatible",
    )
    go_repository(
        name = "com_github_jarcoal_httpmock",
        build_file_proto_mode = "disable",
        importpath = "github.com/jarcoal/httpmock",
        sum = "h1:gSvTxxFR/MEMfsGrvRbdfpRUMBStovlSRLw0Ep1bwwc=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_jcmturner_aescts_v2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jcmturner/aescts/v2",
        sum = "h1:9YKLH6ey7H4eDBXW8khjYslgyqG2xZikXP0EQFKrle8=",
        version = "v2.0.0",
    )
    go_repository(
        name = "com_github_jcmturner_dnsutils_v2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jcmturner/dnsutils/v2",
        sum = "h1:lltnkeZGL0wILNvrNiVCR6Ro5PGU/SeBvVO/8c/iPbo=",
        version = "v2.0.0",
    )
    go_repository(
        name = "com_github_jcmturner_gofork",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jcmturner/gofork",
        sum = "h1:J7uCkflzTEhUZ64xqKnkDxq3kzc96ajM1Gli5ktUem8=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_jcmturner_goidentity_v6",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jcmturner/goidentity/v6",
        sum = "h1:VKnZd2oEIMorCTsFBnJWbExfNN7yZr3EhJAxwOkZg6o=",
        version = "v6.0.1",
    )
    go_repository(
        name = "com_github_jcmturner_gokrb5_v8",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jcmturner/gokrb5/v8",
        sum = "h1:6ZIM6b/JJN0X8UM43ZOM6Z4SJzla+a/u7scXFJzodkA=",
        version = "v8.4.2",
    )
    go_repository(
        name = "com_github_jcmturner_rpc_v2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jcmturner/rpc/v2",
        sum = "h1:7FXXj8Ti1IaVFpSAziCZWNzbNuZmnvw/i6CqLNdWfZY=",
        version = "v2.0.3",
    )
    go_repository(
        name = "com_github_jedib0t_go_pretty_v6",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jedib0t/go-pretty/v6",
        sum = "h1:o3McN0rQ4X+IU+HduppSp9TwRdGLRW2rhJXy9CJaCRw=",
        version = "v6.2.2",
    )
    go_repository(
        name = "com_github_jeffail_gabs_v2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/Jeffail/gabs/v2",
        sum = "h1:ANfZYjpMlfTTKebycu4X1AgkVWumFVDYQl7JwOr4mDk=",
        version = "v2.5.1",
    )
    go_repository(
        name = "com_github_jgautheron_goconst",
        build_file_proto_mode = "disable",
        importpath = "github.com/jgautheron/goconst",
        sum = "h1:HxVbL1MhydKs8R8n/HE5NPvzfaYmQJA3o879lE4+WcM=",
        version = "v1.5.1",
    )
    go_repository(
        name = "com_github_jingyugao_rowserrcheck",
        build_file_proto_mode = "disable",
        importpath = "github.com/jingyugao/rowserrcheck",
        sum = "h1:zibz55j/MJtLsjP1OF4bSdgXxwL1b+Vn7Tjzq7gFzUs=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_jirfag_go_printf_func_name",
        build_file_proto_mode = "disable",
        importpath = "github.com/jirfag/go-printf-func-name",
        sum = "h1:KA9BjwUk7KlCh6S9EAGWBt1oExIUv9WyNCiRz5amv48=",
        version = "v0.0.0-20200119135958-7558a9eaa5af",
    )

    go_repository(
        name = "com_github_jmespath_go_jmespath",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jmespath/go-jmespath",
        sum = "h1:BEgLn5cpjn8UN1mAw4NjwDrS35OdebyEtFe+9YPoQUg=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_jmespath_go_jmespath_internal_testify",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jmespath/go-jmespath/internal/testify",
        sum = "h1:shLQSRRSCCPj3f2gpwzGwWFoC7ycTf1rcQZHOlsJ6N8=",
        version = "v1.5.1",
    )
    go_repository(
        name = "com_github_joho_sqltocsv",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/joho/sqltocsv",
        sum = "h1:Zrb0IbuLOGHL7nrO2WrcuNWgDTlzFv3zY69QMx4ggQE=",
        version = "v0.0.0-20210428211105-a6d6801d59df",
    )
    go_repository(
        name = "com_github_joker_hpp",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/Joker/hpp",
        sum = "h1:65+iuJYdRXv/XyN62C1uEmmOx3432rNG/rKlX6V7Kkc=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_joker_jade",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/Joker/jade",
        sum = "h1:mreN1m/5VJ/Zc3b4pzj9qU6D9SRQ6Vm+3KfI328t3S8=",
        version = "v1.0.1-0.20190614124447-d475f43051e7",
    )
    go_repository(
        name = "com_github_jonboulle_clockwork",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jonboulle/clockwork",
        sum = "h1:UOGuzwb1PwsrDAObMuhUnj0p5ULPj8V/xJ7Kx9qUBdQ=",
        version = "v0.2.2",
    )
    go_repository(
        name = "com_github_jpillora_backoff",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jpillora/backoff",
        sum = "h1:uvFg412JmmHBHw7iwprIxkPMI+sGQ4kzOWsMeHnm2EA=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_json_iterator_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/json-iterator/go",
        sum = "h1:PV8peI4a0ysnczrg+LtxykD8LfKY9ML6u2jnxaEnrnM=",
        version = "v1.1.12",
    )
    go_repository(
        name = "com_github_jstemmer_go_junit_report",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jstemmer/go-junit-report",
        sum = "h1:6QPYqodiu3GuPL+7mfx+NwDdp2eTkp9IfEUpgAwUN0o=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_jtolds_gls",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jtolds/gls",
        sum = "h1:xdiiI2gbIgH/gLH7ADydsJ1uDOEzR8yvV7C0MuV77Wo=",
        version = "v4.20.0+incompatible",
    )
    go_repository(
        name = "com_github_juju_errors",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/juju/errors",
        sum = "h1:rhqTjzJlm7EbkELJDKMTU7udov+Se0xZkWmugr6zGok=",
        version = "v0.0.0-20181118221551-089d3ea4e4d5",
    )
    go_repository(
        name = "com_github_juju_loggo",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/juju/loggo",
        sum = "h1:MK144iBQF9hTSwBW/9eJm034bVoG30IshVm688T2hi8=",
        version = "v0.0.0-20180524022052-584905176618",
    )
    go_repository(
        name = "com_github_juju_testing",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/juju/testing",
        sum = "h1:WQM1NildKThwdP7qWrNAFGzp4ijNLw8RlgENkaI4MJs=",
        version = "v0.0.0-20180920084828-472a3e8b2073",
    )
    go_repository(
        name = "com_github_julienschmidt_httprouter",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/julienschmidt/httprouter",
        sum = "h1:U0609e9tgbseu3rBINet9P48AI/D3oJs4dN7jwJOQ1U=",
        version = "v1.3.0",
    )
    go_repository(
        name = "com_github_julz_importas",
        build_file_proto_mode = "disable",
        importpath = "github.com/julz/importas",
        sum = "h1:F78HnrsjY3cR7j0etXy5+TU1Zuy7Xt08X/1aJnH5xXY=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_jung_kurt_gofpdf",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/jung-kurt/gofpdf",
        sum = "h1:PJr+ZMXIecYc1Ey2zucXdR73SMBtgjPgwa31099IMv0=",
        version = "v1.0.3-0.20190309125859-24315acbbda5",
    )
    go_repository(
        name = "com_github_k0kubun_colorstring",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/k0kubun/colorstring",
        sum = "h1:uC1QfSlInpQF+M0ao65imhwqKnz3Q2z/d8PWZRMQvDM=",
        version = "v0.0.0-20150214042306-9440f1994b88",
    )
    go_repository(
        name = "com_github_kataras_golog",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/kataras/golog",
        sum = "h1:J7Dl82843nbKQDrQM/abbNJZvQjS6PfmkkffhOTXEpM=",
        version = "v0.0.9",
    )
    go_repository(
        name = "com_github_kataras_iris_v12",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/kataras/iris/v12",
        sum = "h1:Wo5S7GMWv5OAzJmvFTvss/C4TS1W0uo6LkDlSymT4rM=",
        version = "v12.0.1",
    )
    go_repository(
        name = "com_github_kataras_neffos",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/kataras/neffos",
        sum = "h1:O06dvQlxjdWvzWbm2Bq+Si6psUhvSmEctAMk9Xujqms=",
        version = "v0.0.10",
    )
    go_repository(
        name = "com_github_kataras_pio",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/kataras/pio",
        sum = "h1:V5Rs9ztEWdp58oayPq/ulmlqJJZeJP6pP79uP3qjcao=",
        version = "v0.0.0-20190103105442-ea782b38602d",
    )
    go_repository(
        name = "com_github_kisielk_errcheck",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/kisielk/errcheck",
        patch_args = ["-p1"],
        patches = [
            "//build/patches:com_github_kisielk_errcheck.patch",
        ],
        sum = "h1:uGQ9xI8/pgc9iOoCe7kWQgRE6SBTrCGmTSf0LrEtY7c=",
        version = "v1.6.2",
    )
    go_repository(
        name = "com_github_kisielk_gotool",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/kisielk/gotool",
        sum = "h1:AV2c/EiW3KqPNT9ZKl07ehoAGi4C5/01Cfbblndcapg=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_klauspost_compress",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/klauspost/compress",
        sum = "h1:y9FcTHGyrebwfP0ZZqFiaxTaiDnUrGkJkI+f583BL1A=",
        version = "v1.15.1",
    )
    go_repository(
        name = "com_github_klauspost_cpuid",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/klauspost/cpuid",
        sum = "h1:5JNjFYYQrZeKRJ0734q51WCEEn2huer72Dc7K+R/b6s=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_github_knz_strtime",
        build_file_proto_mode = "disable",
        importpath = "github.com/knz/strtime",
        sum = "h1:45aLE1GlZRKxNfTMkok85BUKAJNLdHr5GAm3h8Fqoww=",
        version = "v0.0.0-20181018220328-af2256ee352c",
    )

    go_repository(
        name = "com_github_konsorten_go_windows_terminal_sequences",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/konsorten/go-windows-terminal-sequences",
        sum = "h1:CE8S1cTafDpPvMhIxNJKvHsGVBgn1xWYf1NbHQhywc8=",
        version = "v1.0.3",
    )
    go_repository(
        name = "com_github_kr_logfmt",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/kr/logfmt",
        sum = "h1:T+h1c/A9Gawja4Y9mFVWj2vyii2bbUNDw3kt9VxK2EY=",
        version = "v0.0.0-20140226030751-b84e30acd515",
    )
    go_repository(
        name = "com_github_kr_pretty",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/kr/pretty",
        sum = "h1:WgNl7dwNpEZ6jJ9k1snq4pZsg7DOEN8hP9Xw0Tsjwk0=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_kr_pty",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/kr/pty",
        sum = "h1:VkoXIwSboBpnk99O/KFauAEILuNHv5DVFKZMBN/gUgw=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_kr_text",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/kr/text",
        sum = "h1:5Nx0Ya0ZqY2ygV366QzturHI13Jq95ApcVaJBhpS+AY=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_kulti_thelper",
        build_file_proto_mode = "disable",
        importpath = "github.com/kulti/thelper",
        sum = "h1:ElhKf+AlItIu+xGnI990no4cE2+XaSu1ULymV2Yulxs=",
        version = "v0.6.3",
    )
    go_repository(
        name = "com_github_kunwardeep_paralleltest",
        build_file_proto_mode = "disable",
        importpath = "github.com/kunwardeep/paralleltest",
        sum = "h1:FCKYMF1OF2+RveWlABsdnmsvJrei5aoyZoaGS+Ugg8g=",
        version = "v1.0.6",
    )

    go_repository(
        name = "com_github_kyoh86_exportloopref",
        build_file_proto_mode = "disable",
        importpath = "github.com/kyoh86/exportloopref",
        sum = "h1:5Ry/at+eFdkX9Vsdw3qU4YkvGtzuVfzT4X7S77LoN/M=",
        version = "v0.1.8",
    )

    go_repository(
        name = "com_github_labstack_echo_v4",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/labstack/echo/v4",
        sum = "h1:z0BZoArY4FqdpUEl+wlHp4hnr/oSR6MTmQmv8OHSoww=",
        version = "v4.1.11",
    )
    go_repository(
        name = "com_github_labstack_gommon",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/labstack/gommon",
        sum = "h1:JEeO0bvc78PKdyHxloTKiF8BD5iGrH8T6MSeGvSgob0=",
        version = "v0.3.0",
    )
    go_repository(
        name = "com_github_ldez_gomoddirectives",
        build_file_proto_mode = "disable",
        importpath = "github.com/ldez/gomoddirectives",
        sum = "h1:y7MBaisZVDYmKvt9/l1mjNCiSA1BVn34U0ObUcJwlhA=",
        version = "v0.2.3",
    )
    go_repository(
        name = "com_github_ldez_tagliatelle",
        build_file_proto_mode = "disable",
        importpath = "github.com/ldez/tagliatelle",
        sum = "h1:3BqVVlReVUZwafJUwQ+oxbx2BEX2vUG4Yu/NOfMiKiM=",
        version = "v0.3.1",
    )
    go_repository(
        name = "com_github_leonklingele_grouper",
        build_file_proto_mode = "disable",
        importpath = "github.com/leonklingele/grouper",
        sum = "h1:tC2y/ygPbMFSBOs3DcyaEMKnnwH7eYKzohOtRrf0SAg=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_lib_pq",
        build_file_proto_mode = "disable",
        importpath = "github.com/lib/pq",
        sum = "h1:X5PMW56eZitiTeO7tKzZxFCSpbFZJtkMMooicw2us9A=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_lightstep_lightstep_tracer_go",
        build_file_proto_mode = "disable",
        importpath = "github.com/lightstep/lightstep-tracer-go",
        sum = "h1:D0GGa7afJ7GcQvu5as6ssLEEKYXvRgKI5d5cevtz8r4=",
        version = "v0.15.6",
    )

    go_repository(
        name = "com_github_lufeee_execinquery",
        build_file_proto_mode = "disable",
        importpath = "github.com/lufeee/execinquery",
        sum = "h1:hf0Ems4SHcUGBxpGN7Jz78z1ppVkP/837ZlETPCEtOM=",
        version = "v1.2.1",
    )

    go_repository(
        name = "com_github_lufia_plan9stats",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/lufia/plan9stats",
        sum = "h1:6E+4a0GO5zZEnZ81pIr0yLvtUWk2if982qA3F3QD6H4=",
        version = "v0.0.0-20211012122336-39d0f177ccd0",
    )
    go_repository(
        name = "com_github_magiconair_properties",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/magiconair/properties",
        sum = "h1:5ibWZ6iY0NctNGWo87LalDlEZ6R41TqbbDamhfG/Qzo=",
        version = "v1.8.6",
    )
    go_repository(
        name = "com_github_maratori_testpackage",
        build_file_proto_mode = "disable",
        importpath = "github.com/maratori/testpackage",
        sum = "h1:GJY4wlzQhuBusMF1oahQCBtUV/AQ/k69IZ68vxaac2Q=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_masterminds_semver",
        build_file_proto_mode = "disable",
        importpath = "github.com/Masterminds/semver",
        sum = "h1:H65muMkzWKEuNDnfl9d70GUjFniHKHRbFPGBuZ3QEww=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_matoous_godox",
        build_file_proto_mode = "disable",
        importpath = "github.com/matoous/godox",
        sum = "h1:pWxk9e//NbPwfxat7RXkts09K+dEBJWakUWwICVqYbA=",
        version = "v0.0.0-20210227103229-6504466cf951",
    )

    go_repository(
        name = "com_github_mattn_go_colorable",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mattn/go-colorable",
        sum = "h1:fFA4WZxdEF4tXPZVKMLwD8oUnCTTo08duU7wxecdEvA=",
        version = "v0.1.13",
    )
    go_repository(
        name = "com_github_mattn_go_isatty",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mattn/go-isatty",
        sum = "h1:bq3VjFmv/sOjHtdEhmkEV4x1AJtvUvOJ2PFAZ5+peKQ=",
        version = "v0.0.16",
    )
    go_repository(
        name = "com_github_mattn_go_runewidth",
        build_file_proto_mode = "disable",
        importpath = "github.com/mattn/go-runewidth",
        sum = "h1:lTGmDsbAYt5DmK6OnoV7EuIF1wEIFAcxld6ypU4OSgU=",
        version = "v0.0.13",
    )
    go_repository(
        name = "com_github_mattn_goveralls",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mattn/goveralls",
        sum = "h1:7eJB6EqsPhRVxvwEXGnqdO2sJI0PTsrWoTMXEk9/OQc=",
        version = "v0.0.2",
    )
    go_repository(
        name = "com_github_matttproud_golang_protobuf_extensions",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/matttproud/golang_protobuf_extensions",
        sum = "h1:4hp9jkHxhMHkqkrB3Ix0jegS5sx/RkqARlsWZ6pIwiU=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_maxatome_go_testdeep",
        build_file_proto_mode = "disable",
        importpath = "github.com/maxatome/go-testdeep",
        sum = "h1:Tgh5efyCYyJFGUYiT0qxBSIDeXw0F5zSoatlou685kk=",
        version = "v1.11.0",
    )

    go_repository(
        name = "com_github_mbilski_exhaustivestruct",
        build_file_proto_mode = "disable",
        importpath = "github.com/mbilski/exhaustivestruct",
        sum = "h1:wCBmUnSYufAHO6J4AVWY6ff+oxWxsVFrwgOdMUQePUo=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_mediocregopher_mediocre_go_lib",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mediocregopher/mediocre-go-lib",
        sum = "h1:3dQJqqDouawQgl3gBE1PNHKFkJYGEuFb1DbSlaxdosE=",
        version = "v0.0.0-20181029021733-cb65787f37ed",
    )
    go_repository(
        name = "com_github_mediocregopher_radix_v3",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mediocregopher/radix/v3",
        sum = "h1:oacPXPKHJg0hcngVVrdtTnfGJiS+PtwoQwTBZGFlV4k=",
        version = "v3.3.0",
    )
    go_repository(
        name = "com_github_mgechev_dots",
        build_file_proto_mode = "disable",
        importpath = "github.com/mgechev/dots",
        sum = "h1:zpIH83+oKzcpryru8ceC6BxnoG8TBrhgAvRg8obzup0=",
        version = "v0.0.0-20210922191527-e955255bf517",
    )

    go_repository(
        name = "com_github_mgechev_revive",
        build_file_proto_mode = "disable",
        importpath = "github.com/mgechev/revive",
        sum = "h1:a+itKsYpxka50MyaWQW1XCZ1vwfgjzVy/OzZ7DC/4+U=",
        version = "v1.2.4-0.20220827111817-553604eaced5",
    )

    go_repository(
        name = "com_github_microcosm_cc_bluemonday",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/microcosm-cc/bluemonday",
        sum = "h1:5lPfLTTAvAbtS0VqT+94yOtFnGfUWYyx0+iToC3Os3s=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_miekg_dns",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/miekg/dns",
        sum = "h1:oN9gL93BkuPrer2rehDbDx86k4zbYJEnMP6Krh82nh0=",
        version = "v1.1.10",
    )
    go_repository(
        name = "com_github_mitchellh_cli",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mitchellh/cli",
        sum = "h1:iGBIsUe3+HZ/AD/Vd7DErOt5sU9fa8Uj7A2s1aggv1Y=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_mitchellh_go_homedir",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mitchellh/go-homedir",
        sum = "h1:lukF9ziXFxDFPkA1vsr5zpc1XuPDn/wFntq5mG+4E0Y=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_mitchellh_go_ps",
        build_file_proto_mode = "disable",
        importpath = "github.com/mitchellh/go-ps",
        sum = "h1:i6ampVEEF4wQFF+bkYfwYgY+F/uYJDktmvLPf7qIgjc=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_mitchellh_go_testing_interface",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mitchellh/go-testing-interface",
        sum = "h1:fzU/JVNcaqHQEcVFAKeR41fkiLdIPrefOvVG1VZ96U0=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_mitchellh_go_wordwrap",
        build_file_proto_mode = "disable",
        importpath = "github.com/mitchellh/go-wordwrap",
        sum = "h1:6GlHJ/LTGMrIJbwgdqdl2eEH8o+Exx/0m8ir9Gns0u4=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_mitchellh_gox",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mitchellh/gox",
        sum = "h1:lfGJxY7ToLJQjHHwi0EX6uYBdK78egf954SQl13PQJc=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_mitchellh_iochan",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mitchellh/iochan",
        sum = "h1:C+X3KsSTLFVBr/tK1eYN/vs4rJcvsiLU338UhYPJWeY=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_mitchellh_mapstructure",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mitchellh/mapstructure",
        sum = "h1:jeMsZIYE/09sWLaz43PL7Gy6RuMjD2eJVyuac5Z2hdY=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_mitchellh_reflectwalk",
        build_file_proto_mode = "disable",
        importpath = "github.com/mitchellh/reflectwalk",
        sum = "h1:FVzMWA5RllMAKIdUSC8mdWo3XtwoecrH79BY70sEEpE=",
        version = "v1.0.1",
    )

    go_repository(
        name = "com_github_modern_go_concurrent",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/modern-go/concurrent",
        sum = "h1:TRLaZ9cD/w8PVh93nsPXa1VrQ6jlwL5oN8l14QlcNfg=",
        version = "v0.0.0-20180306012644-bacd9c7ef1dd",
    )
    go_repository(
        name = "com_github_modern_go_reflect2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/modern-go/reflect2",
        sum = "h1:xBagoLtFs94CBntxluKeaWgTMpvLxC4ur3nMaC9Gz0M=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_modocache_gover",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/modocache/gover",
        sum = "h1:8Q0qkMVC/MmWkpIdlvZgcv2o2jrlF6zqVOh7W5YHdMA=",
        version = "v0.0.0-20171022184752-b58185e213c5",
    )
    go_repository(
        name = "com_github_montanaflynn_stats",
        build_file_proto_mode = "disable",
        importpath = "github.com/montanaflynn/stats",
        sum = "h1:pmpDGKLw4n82EtrNiLqB+xSz/JQwFOaZuMALYUHwX5s=",
        version = "v0.0.0-20180911141734-db72e6cae808",
    )

    go_repository(
        name = "com_github_moricho_tparallel",
        build_file_proto_mode = "disable",
        importpath = "github.com/moricho/tparallel",
        sum = "h1:95FytivzT6rYzdJLdtfn6m1bfFJylOJK41+lgv/EHf4=",
        version = "v0.2.1",
    )

    go_repository(
        name = "com_github_moul_http2curl",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/moul/http2curl",
        sum = "h1:dRMWoAtb+ePxMlLkrCbAqh4TlPHXvoGUSQ323/9Zahs=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_mwitkow_go_conntrack",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/mwitkow/go-conntrack",
        sum = "h1:KUppIJq7/+SVif2QVs3tOP0zanoHgBEVAwHxUSIzRqU=",
        version = "v0.0.0-20190716064945-2f068394615f",
    )
    go_repository(
        name = "com_github_nakabonne_nestif",
        build_file_proto_mode = "disable",
        importpath = "github.com/nakabonne/nestif",
        sum = "h1:wm28nZjhQY5HyYPx+weN3Q65k6ilSBxDb8v5S81B81U=",
        version = "v0.3.1",
    )

    go_repository(
        name = "com_github_nats_io_nats_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/nats-io/nats.go",
        sum = "h1:6lF/f1/NN6kzUDBz6pyvQDEXO39jqXcWRLu/tKjtOUQ=",
        version = "v1.8.1",
    )
    go_repository(
        name = "com_github_nats_io_nkeys",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/nats-io/nkeys",
        sum = "h1:+qM7QpgXnvDDixitZtQUBDY9w/s9mu1ghS+JIbsrx6M=",
        version = "v0.0.2",
    )
    go_repository(
        name = "com_github_nats_io_nuid",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/nats-io/nuid",
        sum = "h1:5iA8DT8V7q8WK2EScv2padNa/rTESc1KdnPw4TC2paw=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_nbutton23_zxcvbn_go",
        build_file_proto_mode = "disable",
        importpath = "github.com/nbutton23/zxcvbn-go",
        sum = "h1:4kuARK6Y6FxaNu/BnU2OAaLF86eTVhP2hjTB6iMvItA=",
        version = "v0.0.0-20210217022336-fa2cb2858354",
    )

    go_repository(
        name = "com_github_ncw_directio",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/ncw/directio",
        sum = "h1:JSUBhdjEvVaJvOoyPAbcW0fnd0tvRXD76wEfZ1KcQz4=",
        version = "v1.0.5",
    )
    go_repository(
        name = "com_github_ngaut_pools",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/ngaut/pools",
        sum = "h1:7KAv7KMGTTqSmYZtNdcNTgsos+vFzULLwyElndwn+5c=",
        version = "v0.0.0-20180318154953-b7bc8c42aac7",
    )
    go_repository(
        name = "com_github_ngaut_sync2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/ngaut/sync2",
        sum = "h1:K0Fn+DoFqNqktdZtdV3bPQ/0cuYh2H4rkg0tytX/07k=",
        version = "v0.0.0-20141008032647-7a24ed77b2ef",
    )
    go_repository(
        name = "com_github_niemeyer_pretty",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/niemeyer/pretty",
        sum = "h1:fD57ERR4JtEqsWbfPhv4DMiApHyliiK5xCTNVSPiaAs=",
        version = "v0.0.0-20200227124842-a10e7caefd8e",
    )
    go_repository(
        name = "com_github_nishanths_exhaustive",
        build_file_proto_mode = "disable",
        importpath = "github.com/nishanths/exhaustive",
        sum = "h1:0QKNascWv9qIHY7zRoZSxeRr6kuk5aAT3YXLTiDmjTo=",
        version = "v0.8.1",
    )

    go_repository(
        name = "com_github_nishanths_predeclared",
        build_file_proto_mode = "disable",
        importpath = "github.com/nishanths/predeclared",
        sum = "h1:V2EPdZPliZymNAn79T8RkNApBjMmVKh5XRpLm/w98Vk=",
        version = "v0.2.2",
    )

    go_repository(
        name = "com_github_nxadm_tail",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/nxadm/tail",
        sum = "h1:DQuhQpB1tVlglWS2hLQ5OV6B5r8aGxSrPc5Qo6uTN78=",
        version = "v1.4.4",
    )
    go_repository(
        name = "com_github_oklog_run",
        build_file_proto_mode = "disable",
        importpath = "github.com/oklog/run",
        sum = "h1:Ru7dDtJNOyC66gQ5dQmaCa0qIsAUFY3sFpK1Xk8igrw=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_oklog_ulid",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/oklog/ulid",
        sum = "h1:EGfNDEx6MqHz8B3uNV6QAib1UR2Lm97sHi3ocA6ESJ4=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_github_olekukonko_tablewriter",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/olekukonko/tablewriter",
        sum = "h1:P2Ga83D34wi1o9J6Wh1mRuqd4mF/x/lgBS7N7AbDhec=",
        version = "v0.0.5",
    )
    go_repository(
        name = "com_github_oneofone_xxhash",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/OneOfOne/xxhash",
        sum = "h1:zl/OfRA6nftbBK9qTohYBJ5xvw6C/oNKizR7cZGl3cI=",
        version = "v1.2.5",
    )
    go_repository(
        name = "com_github_onsi_ginkgo",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/onsi/ginkgo",
        sum = "h1:8xi0RTUf59SOSfEtZMvwTvXYMzG4gV23XVHOZiXNtnE=",
        version = "v1.16.5",
    )
    go_repository(
        name = "com_github_onsi_ginkgo_v2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/onsi/ginkgo/v2",
        sum = "h1:CcuG/HvWNkkaqCUpJifQY8z7qEMBJya6aLPx6ftGyjQ=",
        version = "v2.0.0",
    )
    go_repository(
        name = "com_github_onsi_gomega",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/onsi/gomega",
        sum = "h1:M1GfJqGRrBrrGGsbxzV5dqM2U2ApXefZCQpkukxYRLE=",
        version = "v1.18.1",
    )
    go_repository(
        name = "com_github_openpeedeep_depguard",
        build_file_proto_mode = "disable",
        importpath = "github.com/OpenPeeDeeP/depguard",
        sum = "h1:pjK9nLPS1FwQYGGpPxoMYpe7qACHOhAWQMQzV71i49o=",
        version = "v1.1.0",
    )

    go_repository(
        name = "com_github_opentracing_basictracer_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/opentracing/basictracer-go",
        sum = "h1:YyUAhaEfjoWXclZVJ9sGoNct7j4TVk7lZWlQw5UXuoo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_opentracing_contrib_go_stdlib",
        build_file_proto_mode = "disable",
        importpath = "github.com/opentracing-contrib/go-stdlib",
        sum = "h1:8KbikWulLUcMM96hBxjgoo6gTmCkG6HYSDohv/WygYU=",
        version = "v0.0.0-20170113013457-1de4cc2120e7",
    )

    go_repository(
        name = "com_github_opentracing_opentracing_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/opentracing/opentracing-go",
        sum = "h1:uEJPy/1a5RIPAJ0Ov+OIO8OxWu77jEv+1B0VhjKrZUs=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_openzipkin_zipkin_go",
        build_file_proto_mode = "disable",
        importpath = "github.com/openzipkin/zipkin-go",
        sum = "h1:yXiysv1CSK7Q5yjGy1710zZGnsbMUIjluWBxtLXHPBo=",
        version = "v0.1.6",
    )
    go_repository(
        name = "com_github_otiai10_copy",
        build_file_proto_mode = "disable",
        importpath = "github.com/otiai10/copy",
        sum = "h1:HvG945u96iNadPoG2/Ja2+AUJeW5YuFQMixq9yirC+k=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_otiai10_curr",
        build_file_proto_mode = "disable",
        importpath = "github.com/otiai10/curr",
        sum = "h1:TJIWdbX0B+kpNagQrjgq8bCMrbhiuX73M2XwgtDMoOI=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_otiai10_mint",
        build_file_proto_mode = "disable",
        importpath = "github.com/otiai10/mint",
        sum = "h1:BCmzIS3n71sGfHB5NMNDB3lHYPz8fWSkCAErHed//qc=",
        version = "v1.3.1",
    )

    go_repository(
        name = "com_github_pascaldekloe_goe",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pascaldekloe/goe",
        sum = "h1:Lgl0gzECD8GnQ5QCWA8o6BtfL6mDH5rQgM4/fX3avOs=",
        version = "v0.0.0-20180627143212-57f6aae5913c",
    )
    go_repository(
        name = "com_github_pborman_getopt",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pborman/getopt",
        sum = "h1:7822vZ646Atgxkp3tqrSufChvAAYgIy+iFEGpQntwlI=",
        version = "v0.0.0-20180729010549-6fdd0a2c7117",
    )
    go_repository(
        name = "com_github_pelletier_go_toml",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pelletier/go-toml",
        sum = "h1:4yBQzkHv+7BHq2PQUZF3Mx0IYxG7LsP222s7Agd3ve8=",
        version = "v1.9.5",
    )
    go_repository(
        name = "com_github_pelletier_go_toml_v2",
        build_file_proto_mode = "disable",
        importpath = "github.com/pelletier/go-toml/v2",
        sum = "h1:+jQXlF3scKIcSEKkdHzXhCTDLPFi5r1wnK6yPS+49Gw=",
        version = "v2.0.2",
    )
    go_repository(
        name = "com_github_peterbourgon_g2s",
        build_file_proto_mode = "disable",
        importpath = "github.com/peterbourgon/g2s",
        sum = "h1:sKwxy1H95npauwu8vtF95vG/syrL0p8fSZo/XlDg5gk=",
        version = "v0.0.0-20170223122336-d4e7ad98afea",
    )
    go_repository(
        name = "com_github_petermattis_goid",
        build_file_proto_mode = "disable",
        importpath = "github.com/petermattis/goid",
        sum = "h1:rUMC+oZ89Om6l9wvUNjzI0ZrKrSnXzV+opsgAohYUNc=",
        version = "v0.0.0-20170504144140-0ded85884ba5",
    )

    go_repository(
        name = "com_github_phayes_checkstyle",
        build_file_proto_mode = "disable",
        importpath = "github.com/phayes/checkstyle",
        sum = "h1:CdDQnGF8Nq9ocOS/xlSptM1N3BbrA6/kmaep5ggwaIA=",
        version = "v0.0.0-20170904204023-bfd46e6a821d",
    )

    go_repository(
        name = "com_github_phayes_freeport",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/phayes/freeport",
        sum = "h1:JhzVVoYvbOACxoUmOs6V/G4D5nPVUW73rKvXxP4XUJc=",
        version = "v0.0.0-20180830031419-95f893ade6f2",
    )
    go_repository(
        name = "com_github_pierrec_lz4",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pierrec/lz4",
        sum = "h1:9UY3+iC23yxF0UfGaYrGplQ+79Rg+h/q9FV9ix19jjM=",
        version = "v2.6.1+incompatible",
    )
    go_repository(
        name = "com_github_pingcap_badger",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pingcap/badger",
        sum = "h1:MKVFZuqFvAMiDtv3AbihOQ6rY5IE8LWflI1BuZ/hF0Y=",
        version = "v1.5.1-0.20220314162537-ab58fbf40580",
    )
    go_repository(
        name = "com_github_pingcap_check",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pingcap/check",
        sum = "h1:iRtOAQ6FXkY/BGvst3CDfTva4nTqh6CL8WXvanLdbu0=",
        version = "v0.0.0-20191107115940-caf2b9e6ccf4",
    )
    go_repository(
        name = "com_github_pingcap_errors",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pingcap/errors",
        sum = "h1:xpW9bvK+HuuTmyFqUwr+jcCvpVkK7sumiz+ko5H9eq4=",
        version = "v0.11.5-0.20211224045212-9687c2b0f87c",
    )
    go_repository(
        name = "com_github_pingcap_failpoint",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pingcap/failpoint",
        sum = "h1:kJolJWbyadVeL8RKBlqmXQR7FRKPsIeU85TUYyhbhiQ=",
        version = "v0.0.0-20220423142525-ae43b7f4e5c3",
    )
    go_repository(
        name = "com_github_pingcap_fn",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pingcap/fn",
        sum = "h1:Pe2LbxRmbTfAoKJ65bZLmhahmvHm7n9DUxGRQT00208=",
        version = "v0.0.0-20200306044125-d5540d389059",
    )
    go_repository(
        name = "com_github_pingcap_goleveldb",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pingcap/goleveldb",
        sum = "h1:surzm05a8C9dN8dIUmo4Be2+pMRb6f55i+UIYrluu2E=",
        version = "v0.0.0-20191226122134-f82aafb29989",
    )
    go_repository(
        name = "com_github_pingcap_kvproto",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pingcap/kvproto",
        sum = "h1:/92S0s/TCoCmK2vv6WbkXNeqtLn90sHRJ5Vlx1Sigas=",
        version = "v0.0.0-20220913025519-586cff113d10",
    )
    go_repository(
        name = "com_github_pingcap_log",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pingcap/log",
        sum = "h1:ELiPxACz7vdo1qAvvaWJg1NrYFoY6gqAh/+Uo6aXdD8=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_pingcap_sysutil",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pingcap/sysutil",
        sum = "h1:HYbcxtnkN3s5tqrZ/z3eJS4j3Db8wMphEm1q10lY/TM=",
        version = "v0.0.0-20220114020952-ea68d2dbf5b4",
    )
    go_repository(
        name = "com_github_pingcap_tipb",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pingcap/tipb",
        sum = "h1:kWYridgsn8xSKYJ2EkXp7uj5HwJnG5snpY3XP8oYmPU=",
        version = "v0.0.0-20220824081009-0714a57aff1d",
    )
    go_repository(
        name = "com_github_pkg_browser",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pkg/browser",
        sum = "h1:49lOXmGaUpV9Fz3gd7TFZY106KVlPVa5jcYD1gaQf98=",
        version = "v0.0.0-20180916011732-0a3d74bf9ce4",
    )
    go_repository(
        name = "com_github_pkg_errors",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pkg/errors",
        sum = "h1:FEBLx1zS214owpjy7qsBeixbURkuhQAwrK5UwLGTwt4=",
        version = "v0.9.1",
    )
    go_repository(
        name = "com_github_pkg_profile",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pkg/profile",
        sum = "h1:F++O52m40owAmADcojzM+9gyjmMOY/T4oYJkgFDH8RE=",
        version = "v1.2.1",
    )
    go_repository(
        name = "com_github_pmezard_go_difflib",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/pmezard/go-difflib",
        sum = "h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_polyfloyd_go_errorlint",
        build_file_proto_mode = "disable",
        importpath = "github.com/polyfloyd/go-errorlint",
        sum = "h1:kp1yvHflYhTmw5m3MmBy8SCyQkKPjwDthVuMH0ug6Yk=",
        version = "v1.0.2",
    )

    go_repository(
        name = "com_github_posener_complete",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/posener/complete",
        sum = "h1:ccV59UEOTzVDnDUEFdT95ZzHVZ+5+158q8+SJb2QV5w=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_power_devops_perfstat",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/power-devops/perfstat",
        sum = "h1:ncq/mPwQF4JjgDlrVEn3C11VoGHZN7m8qihwgMEtzYw=",
        version = "v0.0.0-20210106213030-5aafc221ea8c",
    )
    go_repository(
        name = "com_github_prometheus_client_golang",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/prometheus/client_golang",
        sum = "h1:b71QUfeo5M8gq2+evJdTPfZhYMAU0uKPkyPJ7TPsloU=",
        version = "v1.13.0",
    )
    go_repository(
        name = "com_github_prometheus_client_model",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/prometheus/client_model",
        sum = "h1:uq5h0d+GuxiXLJLNABMgp2qUWDPiLvgCzz2dUR+/W/M=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_prometheus_common",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/prometheus/common",
        sum = "h1:ccBbHCgIiT9uSoFY0vX8H3zsNR5eLt17/RQLUvn8pXE=",
        version = "v0.37.0",
    )
    go_repository(
        name = "com_github_prometheus_procfs",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/prometheus/procfs",
        sum = "h1:ODq8ZFEaYeCaZOJlZZdJA2AbQR98dSHSM1KW/You5mo=",
        version = "v0.8.0",
    )
    go_repository(
        name = "com_github_prometheus_prometheus",
        build_file_proto_mode = "disable",
        importpath = "github.com/prometheus/prometheus",
        sum = "h1:3DyLm+sTAJkfLyR/1pJ3L+fU2lFufWbpcgMFlGtqeyA=",
        version = "v0.0.0-20190525122359-d20e84d0fb64",
    )

    go_repository(
        name = "com_github_prometheus_tsdb",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/prometheus/tsdb",
        sum = "h1:w1tAGxsBMLkuGrFMhqgcCeBkM5d1YI24udArs+aASuQ=",
        version = "v0.8.0",
    )
    go_repository(
        name = "com_github_quasilyte_go_ruleguard",
        build_file_proto_mode = "disable",
        importpath = "github.com/quasilyte/go-ruleguard",
        sum = "h1:cDdoaSbQg11LXPDQqiCK54QmQXsEQQCTIgdcpeULGSI=",
        version = "v0.3.17",
    )
    go_repository(
        name = "com_github_quasilyte_go_ruleguard_dsl",
        build_file_proto_mode = "disable",
        importpath = "github.com/quasilyte/go-ruleguard/dsl",
        sum = "h1:vNkC6fC6qMLzCOGbnIHOd5ixUGgTbp3Z4fGnUgULlDA=",
        version = "v0.3.21",
    )
    go_repository(
        name = "com_github_quasilyte_gogrep",
        build_file_proto_mode = "disable",
        importpath = "github.com/quasilyte/gogrep",
        sum = "h1:PDWGei+Rf2bBiuZIbZmM20J2ftEy9IeUCHA8HbQqed8=",
        version = "v0.0.0-20220120141003-628d8b3623b5",
    )
    go_repository(
        name = "com_github_quasilyte_regex_syntax",
        build_file_proto_mode = "disable",
        importpath = "github.com/quasilyte/regex/syntax",
        sum = "h1:L8QM9bvf68pVdQ3bCFZMDmnt9yqcMBro1pC7F+IPYMY=",
        version = "v0.0.0-20200407221936-30656e2c4a95",
    )
    go_repository(
        name = "com_github_quasilyte_stdinfo",
        build_file_proto_mode = "disable",
        importpath = "github.com/quasilyte/stdinfo",
        sum = "h1:M8mH9eK4OUR4lu7Gd+PU1fV2/qnDNfzT635KRSObncs=",
        version = "v0.0.0-20220114132959-f7386bf02567",
    )

    go_repository(
        name = "com_github_rcrowley_go_metrics",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/rcrowley/go-metrics",
        sum = "h1:N/ElC8H3+5XpJzTSTfLsJV/mx9Q9g7kxmchpfZyxgzM=",
        version = "v0.0.0-20201227073835-cf1acfcdf475",
    )
    go_repository(
        name = "com_github_remyoudompheng_bigfft",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/remyoudompheng/bigfft",
        sum = "h1:OdAsTTz6OkFY5QxjkYwrChwuRruF69c169dPK26NUlk=",
        version = "v0.0.0-20200410134404-eec4a21b6bb0",
    )
    go_repository(
        name = "com_github_rivo_uniseg",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/rivo/uniseg",
        patch_args = ["-p1"],
        patches = [
            "//build/patches:com_github_rivo_uniseg.patch",
        ],
        sum = "h1:3Z3Eu6FGHZWSfNKJTOUiPatWwfc7DzJRU04jFUqJODw=",
        version = "v0.3.4",
    )
    go_repository(
        name = "com_github_rlmcpherson_s3gof3r",
        build_file_proto_mode = "disable",
        importpath = "github.com/rlmcpherson/s3gof3r",
        sum = "h1:1izOJpTiohSibfOHuNyEA/yQnAirh05enzEdmhez43k=",
        version = "v0.5.0",
    )

    go_repository(
        name = "com_github_rogpeppe_fastuuid",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/rogpeppe/fastuuid",
        sum = "h1:Ppwyp6VYCF1nvBTXL3trRso7mXMlRrw9ooo375wvi2s=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_rogpeppe_go_internal",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/rogpeppe/go-internal",
        sum = "h1:/FiVV8dS/e+YqF2JvO3yXRFbBLTIuSDkuC7aBOAvL+k=",
        version = "v1.6.1",
    )
    go_repository(
        name = "com_github_rubyist_circuitbreaker",
        build_file_proto_mode = "disable",
        importpath = "github.com/rubyist/circuitbreaker",
        sum = "h1:KUKd/pV8Geg77+8LNDwdow6rVCAYOp8+kHUyFvL6Mhk=",
        version = "v2.2.1+incompatible",
    )

    go_repository(
        name = "com_github_russross_blackfriday",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/russross/blackfriday",
        sum = "h1:HyvC0ARfnZBqnXwABFeSZHpKvJHJJfPz81GNueLj0oo=",
        version = "v1.5.2",
    )
    go_repository(
        name = "com_github_russross_blackfriday_v2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/russross/blackfriday/v2",
        sum = "h1:JIOH55/0cWyOuilr9/qlrm0BSXldqnqwMsf35Ld67mk=",
        version = "v2.1.0",
    )
    go_repository(
        name = "com_github_ryancurrah_gomodguard",
        build_file_proto_mode = "disable",
        importpath = "github.com/ryancurrah/gomodguard",
        sum = "h1:CpMSDKan0LtNGGhPrvupAoLeObRFjND8/tU1rEOtBp4=",
        version = "v1.2.4",
    )
    go_repository(
        name = "com_github_ryanrolds_sqlclosecheck",
        build_file_proto_mode = "disable",
        importpath = "github.com/ryanrolds/sqlclosecheck",
        sum = "h1:AZx+Bixh8zdUBxUA1NxbxVAS78vTPq4rCb8OUZI9xFw=",
        version = "v0.3.0",
    )

    go_repository(
        name = "com_github_ryanuber_columnize",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/ryanuber/columnize",
        sum = "h1:j1Wcmh8OrK4Q7GXY+V7SVSY8nUWQxHW5TkBe7YUl+2s=",
        version = "v2.1.0+incompatible",
    )
    go_repository(
        name = "com_github_samuel_go_zookeeper",
        build_file_proto_mode = "disable",
        importpath = "github.com/samuel/go-zookeeper",
        sum = "h1:4AQBn5RJY4WH8t8TLEMZUsWeXHAUcoao42TCAfpEJJE=",
        version = "v0.0.0-20161028232340-1d7be4effb13",
    )

    go_repository(
        name = "com_github_sanposhiho_wastedassign_v2",
        build_file_proto_mode = "disable",
        importpath = "github.com/sanposhiho/wastedassign/v2",
        sum = "h1:+6/hQIHKNJAUixEj6EmOngGIisyeI+T3335lYTyxRoA=",
        version = "v2.0.6",
    )
    go_repository(
        name = "com_github_sasha_s_go_deadlock",
        build_file_proto_mode = "disable",
        importpath = "github.com/sasha-s/go-deadlock",
        sum = "h1:yVBZEAirqhDYAc7xftf/swe8eHcg63jqfwdqN8KSoR8=",
        version = "v0.0.0-20161201235124-341000892f3d",
    )
    go_repository(
        name = "com_github_sashamelentyev_interfacebloat",
        build_file_proto_mode = "disable",
        importpath = "github.com/sashamelentyev/interfacebloat",
        sum = "h1:xdRdJp0irL086OyW1H/RTZTr1h/tMEOsumirXcOJqAw=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_sashamelentyev_usestdlibvars",
        build_file_proto_mode = "disable",
        importpath = "github.com/sashamelentyev/usestdlibvars",
        sum = "h1:uObNudVEEHf6JbOJy5bgKJloA1bWjxR9fwgNFpPzKnI=",
        version = "v1.13.0",
    )

    go_repository(
        name = "com_github_satori_go_uuid",
        build_file_proto_mode = "disable",
        importpath = "github.com/satori/go.uuid",
        sum = "h1:0uYX9dsZ2yD7q2RtLRtPSdGDWzjeM3TbMJP9utgA0ww=",
        version = "v1.2.0",
    )

    go_repository(
        name = "com_github_sclevine_agouti",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/sclevine/agouti",
        sum = "h1:8IBJS6PWz3uTlMP3YBIR5f+KAldcGuOeFkFbUWfBgK4=",
        version = "v3.0.0+incompatible",
    )
    go_repository(
        name = "com_github_sean_seed",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/sean-/seed",
        sum = "h1:nn5Wsu0esKSJiIVhscUtVbo7ada43DJhG55ua/hjS5I=",
        version = "v0.0.0-20170313163322-e2103e2c3529",
    )
    go_repository(
        name = "com_github_securego_gosec_v2",
        build_file_proto_mode = "disable",
        importpath = "github.com/securego/gosec/v2",
        sum = "h1:7mU32qn2dyC81MH9L2kefnQyRMUarfDER3iQyMHcjYM=",
        version = "v2.13.1",
    )

    go_repository(
        name = "com_github_sergi_go_diff",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/sergi/go-diff",
        sum = "h1:we8PVUC3FE2uYfodKH/nBHMSetSfHDR6scGdBi+erh0=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_shazow_go_diff",
        build_file_proto_mode = "disable",
        importpath = "github.com/shazow/go-diff",
        sum = "h1:W65qqJCIOVP4jpqPQ0YvHYKwcMEMVWIzWC5iNQQfBTU=",
        version = "v0.0.0-20160112020656-b6b7b6733b8c",
    )

    go_repository(
        name = "com_github_shirou_gopsutil_v3",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/shirou/gopsutil/v3",
        sum = "h1:flKnuCMfUUrO+oAvwAd6GKZgnPzr098VA/UJ14nhJd4=",
        version = "v3.22.7",
    )
    go_repository(
        name = "com_github_shopify_goreferrer",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/Shopify/goreferrer",
        sum = "h1:WDC6ySpJzbxGWFh4aMxFFC28wwGp5pEuoTtvA4q/qQ4=",
        version = "v0.0.0-20181106222321-ec9c9a553398",
    )
    go_repository(
        name = "com_github_shopify_sarama",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/Shopify/sarama",
        sum = "h1:ARid8o8oieau9XrHI55f/L3EoRAhm9px6sonbD7yuUE=",
        version = "v1.29.0",
    )
    go_repository(
        name = "com_github_shopify_toxiproxy",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/Shopify/toxiproxy",
        sum = "h1:TKdv8HiTLgE5wdJuEML90aBgNWsokNbMijUGhmcoBJc=",
        version = "v2.1.4+incompatible",
    )
    go_repository(
        name = "com_github_shopspring_decimal",
        build_file_proto_mode = "disable",
        importpath = "github.com/shopspring/decimal",
        sum = "h1:pntxY8Ary0t43dCZ5dqY4YTJCObLY1kIXl0uzMv+7DE=",
        version = "v0.0.0-20180709203117-cd690d0c9e24",
    )

    go_repository(
        name = "com_github_shurcool_httpfs",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/shurcooL/httpfs",
        sum = "h1:bUGsEnyNbVPw06Bs80sCeARAlK8lhwqGyi6UT8ymuGk=",
        version = "v0.0.0-20190707220628-8d4bc4ba7749",
    )
    go_repository(
        name = "com_github_shurcool_httpgzip",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/shurcooL/httpgzip",
        sum = "h1:mj/nMDAwTBiaCqMEs4cYCqF7pO6Np7vhy1D1wcQGz+E=",
        version = "v0.0.0-20190720172056-320755c1c1b0",
    )
    go_repository(
        name = "com_github_shurcool_sanitized_anchor_name",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/shurcooL/sanitized_anchor_name",
        sum = "h1:PdmoCO6wvbs+7yrJyMORt4/BmY5IYyJwS/kOiWx8mHo=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_shurcool_vfsgen",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/shurcooL/vfsgen",
        sum = "h1:y0cMJ0qjii33BnD6tMGcF/+gHYsoKQ6tbwQpy233OII=",
        version = "v0.0.0-20180711163814-62bca832be04",
    )
    go_repository(
        name = "com_github_sirupsen_logrus",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/sirupsen/logrus",
        sum = "h1:trlNQbNUG3OdDrDil03MCb1H2o9nJ1x4/5LYw7byDE0=",
        version = "v1.9.0",
    )
    go_repository(
        name = "com_github_sivchari_containedctx",
        build_file_proto_mode = "disable",
        importpath = "github.com/sivchari/containedctx",
        sum = "h1:0hLQKpgC53OVF1VT7CeoFHk9YKstur1XOgfYIc1yrHI=",
        version = "v1.0.2",
    )
    go_repository(
        name = "com_github_sivchari_nosnakecase",
        build_file_proto_mode = "disable",
        importpath = "github.com/sivchari/nosnakecase",
        sum = "h1:7QkpWIRMe8x25gckkFd2A5Pi6Ymo0qgr4JrhGt95do8=",
        version = "v1.7.0",
    )

    go_repository(
        name = "com_github_sivchari_tenv",
        build_file_proto_mode = "disable",
        importpath = "github.com/sivchari/tenv",
        sum = "h1:d4laZMBK6jpe5PWepxlV9S+LC0yXqvYHiq8E6ceoVVE=",
        version = "v1.7.0",
    )

    go_repository(
        name = "com_github_smartystreets_assertions",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/smartystreets/assertions",
        sum = "h1:zE9ykElWQ6/NYmHa3jpm/yHnI4xSofP+UP6SpjHcSeM=",
        version = "v0.0.0-20180927180507-b2de0cb4f26d",
    )
    go_repository(
        name = "com_github_smartystreets_goconvey",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/smartystreets/goconvey",
        sum = "h1:fv0U8FUIMPNf1L9lnHLvLhgicrIVChEkdzIKYqbNC9s=",
        version = "v1.6.4",
    )
    go_repository(
        name = "com_github_soheilhy_cmux",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/soheilhy/cmux",
        sum = "h1:jjzc5WVemNEDTLwv9tlmemhC73tI08BNOIGwBOo10Js=",
        version = "v0.1.5",
    )
    go_repository(
        name = "com_github_sonatard_noctx",
        build_file_proto_mode = "disable",
        importpath = "github.com/sonatard/noctx",
        sum = "h1:VC1Qhl6Oxx9vvWo3UDgrGXYCeKCe3Wbw7qAWL6FrmTY=",
        version = "v0.0.1",
    )
    go_repository(
        name = "com_github_sourcegraph_go_diff",
        build_file_proto_mode = "disable",
        importpath = "github.com/sourcegraph/go-diff",
        sum = "h1:hmA1LzxW0n1c3Q4YbrFgg4P99GSnebYa3x8gr0HZqLQ=",
        version = "v0.6.1",
    )

    go_repository(
        name = "com_github_spaolacci_murmur3",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/spaolacci/murmur3",
        sum = "h1:qLC7fQah7D6K1B0ujays3HV9gkFtllcxhzImRR7ArPQ=",
        version = "v0.0.0-20180118202830-f09979ecbc72",
    )
    go_repository(
        name = "com_github_spf13_afero",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/spf13/afero",
        sum = "h1:xehSyVa0YnHWsJ49JFljMpg1HX19V6NDZ1fkm1Xznbo=",
        version = "v1.8.2",
    )
    go_repository(
        name = "com_github_spf13_cast",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/spf13/cast",
        sum = "h1:rj3WzYc11XZaIZMPKmwP96zkFEnnAmV8s6XbB2aY32w=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_spf13_cobra",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/spf13/cobra",
        sum = "h1:X+jTBEBqF0bHN+9cSMgmfuvv2VHJ9ezmFNf9Y/XstYU=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_github_spf13_jwalterweatherman",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/spf13/jwalterweatherman",
        sum = "h1:ue6voC5bR5F8YxI5S67j9i582FU4Qvo2bmqnqMYADFk=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_spf13_pflag",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/spf13/pflag",
        sum = "h1:iy+VFUOCP1a+8yFto/drg2CJ5u0yRoB7fZw3DKv/JXA=",
        version = "v1.0.5",
    )
    go_repository(
        name = "com_github_spf13_viper",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/spf13/viper",
        sum = "h1:CZ7eSOd3kZoaYDLbXnmzgQI5RlciuXBMA+18HwHRfZQ=",
        version = "v1.12.0",
    )
    go_repository(
        name = "com_github_ssgreg_nlreturn_v2",
        build_file_proto_mode = "disable",
        importpath = "github.com/ssgreg/nlreturn/v2",
        sum = "h1:X4XDI7jstt3ySqGU86YGAURbxw3oTDPK9sPEi6YEwQ0=",
        version = "v2.2.1",
    )
    go_repository(
        name = "com_github_stackexchange_wmi",
        build_file_proto_mode = "disable",
        importpath = "github.com/StackExchange/wmi",
        sum = "h1:5ZfJxyXo8KyX8DgGXC5B7ILL8y51fci/qYz2B4j8iLY=",
        version = "v0.0.0-20180725035823-b12b22c5341f",
    )

    go_repository(
        name = "com_github_stathat_consistent",
        build_file_proto_mode = "disable",
        importpath = "github.com/stathat/consistent",
        sum = "h1:ZFJ1QTRn8npNBKW065raSZ8xfOqhpb8vLOkfp4CcL/U=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_stbenjam_no_sprintf_host_port",
        build_file_proto_mode = "disable",
        importpath = "github.com/stbenjam/no-sprintf-host-port",
        sum = "h1:tYugd/yrm1O0dV+ThCbaKZh195Dfm07ysF0U6JQXczc=",
        version = "v0.1.1",
    )

    go_repository(
        name = "com_github_stretchr_objx",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/stretchr/objx",
        sum = "h1:M2gUjqZET1qApGOWNSnZ49BAIMX4F/1plDv3+l31EJ4=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_stretchr_testify",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/stretchr/testify",
        sum = "h1:pSgiaMZlXftHpm5L7V1+rVB+AZJydKsMxsQBIJw4PKk=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_github_subosito_gotenv",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/subosito/gotenv",
        sum = "h1:yAzM1+SmVcz5R4tXGsNMu1jUl2aOJXoiWUCEwwnGrvs=",
        version = "v1.4.0",
    )
    go_repository(
        name = "com_github_sylvia7788_contextcheck",
        build_file_proto_mode = "disable",
        importpath = "github.com/sylvia7788/contextcheck",
        sum = "h1:o2EZgVPyMKE/Mtoqym61DInKEjwEbsmyoxg3VrmjNO4=",
        version = "v1.0.6",
    )
    go_repository(
        name = "com_github_tdakkota_asciicheck",
        build_file_proto_mode = "disable",
        importpath = "github.com/tdakkota/asciicheck",
        sum = "h1:PKzG7JUTUmVspQTDqtkX9eSiLGossXTybutHwTXuO0A=",
        version = "v0.1.1",
    )
    go_repository(
        name = "com_github_tenntenn_modver",
        build_file_proto_mode = "disable",
        importpath = "github.com/tenntenn/modver",
        sum = "h1:2klLppGhDgzJrScMpkj9Ujy3rXPUspSjAcev9tSEBgA=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_tenntenn_text_transform",
        build_file_proto_mode = "disable",
        importpath = "github.com/tenntenn/text/transform",
        sum = "h1:f+jULpRQGxTSkNYKJ51yaw6ChIqO+Je8UqsTKN/cDag=",
        version = "v0.0.0-20200319021203-7eef512accb3",
    )

    go_repository(
        name = "com_github_tetafro_godot",
        build_file_proto_mode = "disable",
        importpath = "github.com/tetafro/godot",
        sum = "h1:BVoBIqAf/2QdbFmSwAWnaIqDivZdOV0ZRwEm6jivLKw=",
        version = "v1.4.11",
    )

    go_repository(
        name = "com_github_tiancaiamao_appdash",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/tiancaiamao/appdash",
        sum = "h1:mbAskLJ0oJfDRtkanvQPiooDH8HvJ2FBh+iKT/OmiQQ=",
        version = "v0.0.0-20181126055449-889f96f722a2",
    )
    go_repository(
        name = "com_github_tikv_client_go_v2",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/tikv/client-go/v2",
        sum = "h1:GJNu6XDT8W2Oahh+w/fhb37PNhFr4EZjdehIklZnhU4=",
        version = "v2.0.1-0.20220921101651-ce9203ef66e9",
    )
    go_repository(
        name = "com_github_tikv_pd_client",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/tikv/pd/client",
        sum = "h1:r1eMh9Rny3hfWuBuxOnbsCRrR4FhthiNxLQ5rAUtaww=",
        version = "v0.0.0-20220725055910-7187a7ab72db",
    )
    go_repository(
        name = "com_github_timakin_bodyclose",
        build_file_proto_mode = "disable",
        importpath = "github.com/timakin/bodyclose",
        sum = "h1:kl4KhGNsJIbDHS9/4U9yQo1UcPQM0kOMJHn29EoH/Ro=",
        version = "v0.0.0-20210704033933-f49887972144",
    )
    go_repository(
        name = "com_github_timonwong_logrlint",
        build_file_proto_mode = "disable",
        importpath = "github.com/timonwong/logrlint",
        sum = "h1:phZCcypL/vtx6cGxObJgWZ5wexZF5SXFPLOM+ru0e/M=",
        version = "v0.1.0",
    )

    go_repository(
        name = "com_github_tklauser_go_sysconf",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/tklauser/go-sysconf",
        sum = "h1:IJ1AZGZRWbY8T5Vfk04D9WOA5WSejdflXxP03OUqALw=",
        version = "v0.3.10",
    )
    go_repository(
        name = "com_github_tklauser_numcpus",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/tklauser/numcpus",
        sum = "h1:E53Dm1HjH1/R2/aoCtXtPgzmElmn51aOkhCFSuZq//o=",
        version = "v0.4.0",
    )
    go_repository(
        name = "com_github_tmc_grpc_websocket_proxy",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/tmc/grpc-websocket-proxy",
        sum = "h1:uruHq4dN7GR16kFc5fp3d1RIYzJW5onx8Ybykw2YQFA=",
        version = "v0.0.0-20201229170055-e5319fda7802",
    )
    go_repository(
        name = "com_github_tomarrell_wrapcheck_v2",
        build_file_proto_mode = "disable",
        importpath = "github.com/tomarrell/wrapcheck/v2",
        sum = "h1:3dI6YNcrJTQ/CJQ6M/DUkc0gnqYSIk6o0rChn9E/D0M=",
        version = "v2.6.2",
    )
    go_repository(
        name = "com_github_tommy_muehle_go_mnd_v2",
        build_file_proto_mode = "disable",
        importpath = "github.com/tommy-muehle/go-mnd/v2",
        sum = "h1:iAj0a8e6+dXSL7Liq0aXPox36FiN1dBbjA6lt9fl65s=",
        version = "v2.5.0",
    )

    go_repository(
        name = "com_github_twmb_murmur3",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/twmb/murmur3",
        sum = "h1:D83U0XYKcHRYwYIpBKf3Pks91Z0Byda/9SJ8B6EMRcA=",
        version = "v1.1.3",
    )
    go_repository(
        name = "com_github_uber_jaeger_client_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/uber/jaeger-client-go",
        sum = "h1:NHcubEkVbahf9t3p75TOCR83gdUHXjRJvjoBh1yACsM=",
        version = "v2.22.1+incompatible",
    )
    go_repository(
        name = "com_github_uber_jaeger_lib",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/uber/jaeger-lib",
        sum = "h1:td4jdvLcExb4cBISKIpHuGoVXh+dVKhn2Um6rjCsSsg=",
        version = "v2.4.1+incompatible",
    )
    go_repository(
        name = "com_github_ugorji_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/ugorji/go",
        sum = "h1:j4s+tAvLfL3bZyefP2SEWmhBzmuIlH/eqNuPdFPgngw=",
        version = "v1.1.4",
    )
    go_repository(
        name = "com_github_ugorji_go_codec",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/ugorji/go/codec",
        sum = "h1:3SVOIvH7Ae1KRYyQWRjXWJEA9sS/c/pjvH++55Gr648=",
        version = "v0.0.0-20181204163529-d75b2dcb6bc8",
    )
    go_repository(
        name = "com_github_ultraware_funlen",
        build_file_proto_mode = "disable",
        importpath = "github.com/ultraware/funlen",
        sum = "h1:5ylVWm8wsNwH5aWo9438pwvsK0QiqVuUrt9bn7S/iLA=",
        version = "v0.0.3",
    )
    go_repository(
        name = "com_github_ultraware_whitespace",
        build_file_proto_mode = "disable",
        importpath = "github.com/ultraware/whitespace",
        sum = "h1:hh+/cpIcopyMYbZNVov9iSxvJU3OYQg78Sfaqzi/CzI=",
        version = "v0.0.5",
    )

    go_repository(
        name = "com_github_urfave_negroni",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/urfave/negroni",
        sum = "h1:kIimOitoypq34K7TG7DUaJ9kq/N4Ofuwi1sjz0KipXc=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_uudashr_gocognit",
        build_file_proto_mode = "disable",
        importpath = "github.com/uudashr/gocognit",
        sum = "h1:2Cgi6MweCsdB6kpcVQp7EW4U23iBFQWfTXiWlyp842Y=",
        version = "v1.0.6",
    )

    go_repository(
        name = "com_github_valyala_bytebufferpool",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/valyala/bytebufferpool",
        sum = "h1:GqA5TC/0021Y/b9FG4Oi9Mr3q7XYx6KllzawFIhcdPw=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_valyala_fasthttp",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/valyala/fasthttp",
        sum = "h1:uWF8lgKmeaIewWVPwi4GRq2P6+R46IgYZdxWtM+GtEY=",
        version = "v1.6.0",
    )
    go_repository(
        name = "com_github_valyala_fasttemplate",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/valyala/fasttemplate",
        sum = "h1:tY9CJiPnMXf1ERmG2EyK7gNUd+c6RKGD0IfU8WdUSz8=",
        version = "v1.0.1",
    )
    go_repository(
        name = "com_github_valyala_quicktemplate",
        build_file_proto_mode = "disable",
        importpath = "github.com/valyala/quicktemplate",
        sum = "h1:LUPTJmlVcb46OOUY3IeD9DojFpAVbsG+5WFTcjMJzCM=",
        version = "v1.7.0",
    )

    go_repository(
        name = "com_github_valyala_tcplisten",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/valyala/tcplisten",
        sum = "h1:0R4NLDRDZX6JcmhJgXi5E4b8Wg84ihbmUKp/GvSPEzc=",
        version = "v0.0.0-20161114210144-ceec8f93295a",
    )
    go_repository(
        name = "com_github_vividcortex_ewma",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/VividCortex/ewma",
        sum = "h1:MnEK4VOv6n0RSY4vtRe3h11qjxL3+t0B8yOL8iMXdcM=",
        version = "v1.1.1",
    )
    go_repository(
        name = "com_github_wangjohn_quickselect",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/wangjohn/quickselect",
        sum = "h1:9DDCDwOyEy/gId+IEMrFHLuQ5R/WV0KNxWLler8X2OY=",
        version = "v0.0.0-20161129230411-ed8402a42d5f",
    )
    go_repository(
        name = "com_github_xdg_scram",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/xdg/scram",
        sum = "h1:nTadYh2Fs4BK2xdldEa2g5bbaZp0/+1nJMMPtPxS/to=",
        version = "v1.0.3",
    )
    go_repository(
        name = "com_github_xdg_stringprep",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/xdg/stringprep",
        sum = "h1:cmL5Enob4W83ti/ZHuZLuKD/xqJfus4fVPwE+/BDm+4=",
        version = "v1.0.3",
    )
    go_repository(
        name = "com_github_xeipuuv_gojsonpointer",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/xeipuuv/gojsonpointer",
        sum = "h1:J9EGpcZtP0E/raorCMxlFGSTBrsSlaDGf3jU/qvAE2c=",
        version = "v0.0.0-20180127040702-4e3ac2762d5f",
    )
    go_repository(
        name = "com_github_xeipuuv_gojsonreference",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/xeipuuv/gojsonreference",
        sum = "h1:EzJWgHovont7NscjpAxXsDA8S8BMYve8Y5+7cuRE7R0=",
        version = "v0.0.0-20180127040603-bd5ef7bd5415",
    )
    go_repository(
        name = "com_github_xeipuuv_gojsonschema",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/xeipuuv/gojsonschema",
        sum = "h1:LhYJRs+L4fBtjZUfuSZIKGeVu0QRy8e5Xi7D17UxZ74=",
        version = "v1.2.0",
    )
    go_repository(
        name = "com_github_xiang90_probing",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/xiang90/probing",
        sum = "h1:eY9dn8+vbi4tKz5Qo6v2eYzo7kUS51QINcR5jNpbZS8=",
        version = "v0.0.0-20190116061207-43a291ad63a2",
    )
    go_repository(
        name = "com_github_xitongsys_parquet_go",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/xitongsys/parquet-go",
        sum = "h1:tBbuFCtyJNKT+BFAv6qjvTFpVdy97IYNaBwGUXifIUs=",
        version = "v1.5.5-0.20201110004701-b09c49d6d457",
    )
    go_repository(
        name = "com_github_xitongsys_parquet_go_source",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/xitongsys/parquet-go-source",
        sum = "h1:a742S4V5A15F93smuVxA60LQWsrCnN8bKeWDBARU1/k=",
        version = "v0.0.0-20200817004010-026bad9b25d0",
    )
    go_repository(
        name = "com_github_xordataexchange_crypt",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/xordataexchange/crypt",
        sum = "h1:ESFSdwYZvkeru3RtdrYueztKhOBCSAAzS4Gf+k0tEow=",
        version = "v0.0.3-0.20170626215501-b2862e3d0a77",
    )
    go_repository(
        name = "com_github_yagipy_maintidx",
        build_file_proto_mode = "disable",
        importpath = "github.com/yagipy/maintidx",
        sum = "h1:h5NvIsCz+nRDapQ0exNv4aJ0yXSI0420omVANTv3GJM=",
        version = "v1.0.0",
    )

    go_repository(
        name = "com_github_yalp_jsonpath",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/yalp/jsonpath",
        sum = "h1:6fRhSjgLCkTD3JnJxvaJ4Sj+TYblw757bqYgZaOq5ZY=",
        version = "v0.0.0-20180802001716-5cc68e5049a0",
    )
    go_repository(
        name = "com_github_yeya24_promlinter",
        build_file_proto_mode = "disable",
        importpath = "github.com/yeya24/promlinter",
        sum = "h1:xFKDQ82orCU5jQujdaD8stOHiv8UN68BSdn2a8u8Y3o=",
        version = "v0.2.0",
    )

    go_repository(
        name = "com_github_yudai_gojsondiff",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/yudai/gojsondiff",
        sum = "h1:27cbfqXLVEJ1o8I6v3y9lg8Ydm53EKqHXAOMxEGlCOA=",
        version = "v1.0.0",
    )
    go_repository(
        name = "com_github_yudai_golcs",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/yudai/golcs",
        sum = "h1:BHyfKlQyqbsFN5p3IfnEUduWvb9is428/nNb5L3U01M=",
        version = "v0.0.0-20170316035057-ecda9a501e82",
    )
    go_repository(
        name = "com_github_yudai_pp",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/yudai/pp",
        sum = "h1:Q4//iY4pNF6yPLZIigmvcl7k/bPgrcTPIFIcmawg5bI=",
        version = "v2.0.1+incompatible",
    )
    go_repository(
        name = "com_github_yuin_goldmark",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/yuin/goldmark",
        sum = "h1:fVcFKWvrslecOb/tg+Cc05dkeYx540o0FuFt3nUVDoE=",
        version = "v1.4.13",
    )
    go_repository(
        name = "com_github_yusufpapurcu_wmi",
        build_file_proto_mode = "disable_global",
        importpath = "github.com/yusufpapurcu/wmi",
        sum = "h1:KBNDSne4vP5mbSWnJbO+51IMOXJB67QiYCSBrubbPRg=",
        version = "v1.2.2",
    )
    go_repository(
        name = "com_gitlab_bosi_decorder",
        build_file_proto_mode = "disable",
        importpath = "gitlab.com/bosi/decorder",
        sum = "h1:gX4/RgK16ijY8V+BRQHAySfQAb354T7/xQpDB2n10P0=",
        version = "v0.2.3",
    )

    go_repository(
        name = "com_google_cloud_go",
        build_file_proto_mode = "disable_global",
        importpath = "cloud.google.com/go",
        sum = "h1:t9Iw5QH5v4XtlEQaCtUY7x6sCABps8sW0acw7e2WQ6Y=",
        version = "v0.100.2",
    )
    go_repository(
        name = "com_google_cloud_go_bigquery",
        build_file_proto_mode = "disable_global",
        importpath = "cloud.google.com/go/bigquery",
        sum = "h1:PQcPefKFdaIzjQFbiyOgAqyx8q5djaE7x9Sqe712DPA=",
        version = "v1.8.0",
    )
    go_repository(
        name = "com_google_cloud_go_compute",
        build_file_proto_mode = "disable_global",
        importpath = "cloud.google.com/go/compute",
        sum = "h1:b1zWmYuuHz7gO9kDcM/EpHGr06UgsYNRpNJzI2kFiLM=",
        version = "v1.5.0",
    )
    go_repository(
        name = "com_google_cloud_go_datastore",
        build_file_proto_mode = "disable_global",
        importpath = "cloud.google.com/go/datastore",
        sum = "h1:/May9ojXjRkPBNVrq+oWLqmWCkr4OU5uRY29bu0mRyQ=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_google_cloud_go_firestore",
        build_file_proto_mode = "disable_global",
        importpath = "cloud.google.com/go/firestore",
        sum = "h1:9x7Bx0A9R5/M9jibeJeZWqjeVEIxYW9fZYqB9a70/bY=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_google_cloud_go_iam",
        build_file_proto_mode = "disable_global",
        importpath = "cloud.google.com/go/iam",
        sum = "h1:4CapQyNFjiksks1/x7jsvsygFPhihslYk5GptIrlX68=",
        version = "v0.1.1",
    )
    go_repository(
        name = "com_google_cloud_go_pubsub",
        build_file_proto_mode = "disable_global",
        importpath = "cloud.google.com/go/pubsub",
        sum = "h1:ukjixP1wl0LpnZ6LWtZJ0mX5tBmjp1f8Sqer8Z2OMUU=",
        version = "v1.3.1",
    )
    go_repository(
        name = "com_google_cloud_go_storage",
        build_file_proto_mode = "disable_global",
        importpath = "cloud.google.com/go/storage",
        sum = "h1:HwnT2u2D309SFDHQII6m18HlrCi3jAXhUMTLOWXYH14=",
        version = "v1.21.0",
    )
    go_repository(
        name = "com_shuralyov_dmitri_gpu_mtl",
        build_file_proto_mode = "disable_global",
        importpath = "dmitri.shuralyov.com/gpu/mtl",
        sum = "h1:VpgP7xuJadIUuKccphEpTJnWhS2jkQyMt6Y7pJCD7fY=",
        version = "v0.0.0-20190408044501-666a987793e9",
    )
    go_repository(
        name = "com_sourcegraph_sourcegraph_appdash",
        build_file_proto_mode = "disable_global",
        importpath = "sourcegraph.com/sourcegraph/appdash",
        sum = "h1:ucqkfpjg9WzSUubAO62csmucvxl4/JeW3F4I4909XkM=",
        version = "v0.0.0-20190731080439-ebfcffb1b5c0",
    )
    go_repository(
        name = "com_sourcegraph_sourcegraph_appdash_data",
        build_file_proto_mode = "disable_global",
        importpath = "sourcegraph.com/sourcegraph/appdash-data",
        sum = "h1:e1sMhtVq9AfcEy8AXNb8eSg6gbzfdpYhoNqnPJa+GzI=",
        version = "v0.0.0-20151005221446-73f23eafcf67",
    )
    go_repository(
        name = "com_stathat_c_consistent",
        build_file_proto_mode = "disable",
        importpath = "stathat.com/c/consistent",
        sum = "h1:ezyc51EGcRPJUxfHGSgJjWzJdj3NiMU9pNfLNGiXV0c=",
        version = "v1.0.0",
    )

    go_repository(
        name = "in_gopkg_alecthomas_kingpin_v2",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/alecthomas/kingpin.v2",
        sum = "h1:jMFz6MfLP0/4fUyZle81rXUoxOBFi19VUFKVDOQfozc=",
        version = "v2.2.6",
    )
    go_repository(
        name = "in_gopkg_check_v1",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/check.v1",
        sum = "h1:Hei/4ADfdWqJk1ZMxUNpqntNwaWcugrBjAiHlqqRiVk=",
        version = "v1.0.0-20201130134442-10cb98267c6c",
    )
    go_repository(
        name = "in_gopkg_errgo_v2",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/errgo.v2",
        sum = "h1:0vLT13EuvQ0hNvakwLuFZ/jYrLp5F3kcWHXdRggjCE8=",
        version = "v2.1.0",
    )
    go_repository(
        name = "in_gopkg_fsnotify_fsnotify_v1",
        build_file_proto_mode = "disable",
        importpath = "gopkg.in/fsnotify/fsnotify.v1",
        sum = "h1:2fkCHbPQZNYRAyRyIV9VX0bpRkxIorlQDiYRmufHnhA=",
        version = "v1.3.1",
    )

    go_repository(
        name = "in_gopkg_fsnotify_v1",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/fsnotify.v1",
        sum = "h1:xOHLXZwVvI9hhs+cLKq5+I5onOuwQLhQwiu63xxlHs4=",
        version = "v1.4.7",
    )
    go_repository(
        name = "in_gopkg_go_playground_assert_v1",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/go-playground/assert.v1",
        sum = "h1:xoYuJVE7KT85PYWrN730RguIQO0ePzVRfFMXadIrXTM=",
        version = "v1.2.1",
    )
    go_repository(
        name = "in_gopkg_go_playground_validator_v8",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/go-playground/validator.v8",
        sum = "h1:lFB4DoMU6B626w8ny76MV7VX6W2VHct2GVOI3xgiMrQ=",
        version = "v8.18.2",
    )
    go_repository(
        name = "in_gopkg_inf_v0",
        build_file_proto_mode = "disable",
        importpath = "gopkg.in/inf.v0",
        sum = "h1:73M5CoZyi3ZLMOyDlQh031Cx6N9NDJ2Vvfl76EDAgDc=",
        version = "v0.9.1",
    )

    go_repository(
        name = "in_gopkg_ini_v1",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/ini.v1",
        sum = "h1:LATuAqN/shcYAOkv3wl2L4rkaKqkcgTBQjOyYDvcPKI=",
        version = "v1.66.6",
    )
    go_repository(
        name = "in_gopkg_jcmturner_aescts_v1",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/jcmturner/aescts.v1",
        sum = "h1:cVVZBK2b1zY26haWB4vbBiZrfFQnfbTVrE3xZq6hrEw=",
        version = "v1.0.1",
    )
    go_repository(
        name = "in_gopkg_jcmturner_dnsutils_v1",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/jcmturner/dnsutils.v1",
        sum = "h1:cIuC1OLRGZrld+16ZJvvZxVJeKPsvd5eUIvxfoN5hSM=",
        version = "v1.0.1",
    )
    go_repository(
        name = "in_gopkg_jcmturner_goidentity_v3",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/jcmturner/goidentity.v3",
        sum = "h1:1duIyWiTaYvVx3YX2CYtpJbUFd7/UuPYCfgXtQ3VTbI=",
        version = "v3.0.0",
    )
    go_repository(
        name = "in_gopkg_jcmturner_gokrb5_v7",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/jcmturner/gokrb5.v7",
        sum = "h1:0709Jtq/6QXEuWRfAm260XqlpcwL1vxtO1tUE2qK8Z4=",
        version = "v7.3.0",
    )
    go_repository(
        name = "in_gopkg_jcmturner_rpc_v1",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/jcmturner/rpc.v1",
        sum = "h1:QHIUxTX1ISuAv9dD2wJ9HWQVuWDX/Zc0PfeC2tjc4rU=",
        version = "v1.1.0",
    )
    go_repository(
        name = "in_gopkg_mgo_v2",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/mgo.v2",
        sum = "h1:xcEWjVhvbDy+nHP67nPDDpbYrY+ILlfndk4bRioVHaU=",
        version = "v2.0.0-20180705113604-9856a29383ce",
    )
    go_repository(
        name = "in_gopkg_natefinch_lumberjack_v2",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/natefinch/lumberjack.v2",
        sum = "h1:1Lc07Kr7qY4U2YPouBjpCLxpiyxIVoxqXgkXLknAOE8=",
        version = "v2.0.0",
    )
    go_repository(
        name = "in_gopkg_resty_v1",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/resty.v1",
        sum = "h1:CuXP0Pjfw9rOuY6EP+UvtNvt5DSqHpIxILZKT/quCZI=",
        version = "v1.12.0",
    )
    go_repository(
        name = "in_gopkg_tomb_v1",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/tomb.v1",
        sum = "h1:uRGJdciOHaEIrze2W8Q3AKkepLTh2hOroT7a+7czfdQ=",
        version = "v1.0.0-20141024135613-dd632973f1e7",
    )
    go_repository(
        name = "in_gopkg_yaml_v2",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/yaml.v2",
        sum = "h1:D8xgwECY7CYvx+Y2n4sBz93Jn9JRvxdiyyo8CTfuKaY=",
        version = "v2.4.0",
    )
    go_repository(
        name = "in_gopkg_yaml_v3",
        build_file_proto_mode = "disable_global",
        importpath = "gopkg.in/yaml.v3",
        sum = "h1:fxVm/GzAzEWqLHuvctI91KS9hhNmmWOoWu0XTYJS7CA=",
        version = "v3.0.1",
    )
    go_repository(
        name = "io_etcd_go_bbolt",
        build_file_proto_mode = "disable_global",
        importpath = "go.etcd.io/bbolt",
        sum = "h1:/ecaJf0sk1l4l6V4awd65v2C3ILy7MSj+s/x1ADCIMU=",
        version = "v1.3.6",
    )
    go_repository(
        name = "io_etcd_go_etcd_api_v3",
        build_file_proto_mode = "disable",
        importpath = "go.etcd.io/etcd/api/v3",
        patch_args = ["-p2"],
        patches = [
            "//build/patches:io_etcd_go_etcd_api_v3.patch",
        ],
        sum = "h1:tXok5yLlKyuQ/SXSjtqHc4uzNaMqZi2XsoSPr/LlJXI=",
        version = "v3.5.2",
    )
    go_repository(
        name = "io_etcd_go_etcd_client_pkg_v3",
        build_file_proto_mode = "disable_global",
        importpath = "go.etcd.io/etcd/client/pkg/v3",
        sum = "h1:4hzqQ6hIb3blLyQ8usCU4h3NghkqcsohEQ3o3VetYxE=",
        version = "v3.5.2",
    )
    go_repository(
        name = "io_etcd_go_etcd_client_v2",
        build_file_proto_mode = "disable_global",
        importpath = "go.etcd.io/etcd/client/v2",
        sum = "h1:ymrVwTkefuqA/rPkSW7/B4ApijbPVefRumkY+stNfS0=",
        version = "v2.305.2",
    )
    go_repository(
        name = "io_etcd_go_etcd_client_v3",
        build_file_proto_mode = "disable_global",
        importpath = "go.etcd.io/etcd/client/v3",
        sum = "h1:WdnejrUtQC4nCxK0/dLTMqKOB+U5TP/2Ya0BJL+1otA=",
        version = "v3.5.2",
    )
    go_repository(
        name = "io_etcd_go_etcd_etcdutl_v3",
        build_file_proto_mode = "disable_global",
        importpath = "go.etcd.io/etcd/etcdutl/v3",
        sum = "h1:XDNv2bGD6Ylz3Gb9lIGV/IYLk1bwTvyCIi1EI4hyyqo=",
        version = "v3.5.2",
    )
    go_repository(
        name = "io_etcd_go_etcd_pkg_v3",
        build_file_proto_mode = "disable_global",
        importpath = "go.etcd.io/etcd/pkg/v3",
        sum = "h1:YZUojdoPhOyl5QILYnR8LTUbbNefu/sV4ma+ZMr2tto=",
        version = "v3.5.2",
    )
    go_repository(
        name = "io_etcd_go_etcd_raft_v3",
        build_file_proto_mode = "disable_global",
        importpath = "go.etcd.io/etcd/raft/v3",
        patch_args = ["-p1"],
        patches = [
            "//build/patches:io_etcd_go_etcd_raft_v3.patch",
        ],
        sum = "h1:uCC37qOXqBvKqTGHGyhASsaCsnTuJugl1GvneJNwHWo=",
        version = "v3.5.2",
    )
    go_repository(
        name = "io_etcd_go_etcd_server_v3",
        build_file_proto_mode = "disable_global",
        importpath = "go.etcd.io/etcd/server/v3",
        sum = "h1:B6ytJvS4Fmt8nkjzS2/8POf4tuPhFMluE0lWd4dx/7U=",
        version = "v3.5.2",
    )
    go_repository(
        name = "io_etcd_go_etcd_tests_v3",
        build_file_proto_mode = "disable_global",
        importpath = "go.etcd.io/etcd/tests/v3",
        sum = "h1:uk7/uMGVebpBDl+roivowHt6gJ5Fnqwik3syDkoSKdo=",
        version = "v3.5.2",
    )
    go_repository(
        name = "io_k8s_api",
        build_file_proto_mode = "disable",
        importpath = "k8s.io/api",
        sum = "h1:aBGgKJUM9Hk/3AE8WaZIApnTxG35kbuQba2w+SXqezo=",
        version = "v0.0.0-20190409021203-6e4e0e4f393b",
    )
    go_repository(
        name = "io_k8s_apimachinery",
        build_file_proto_mode = "disable",
        importpath = "k8s.io/apimachinery",
        sum = "h1:Jmdtdt1ZnoGfWWIIik61Z7nKYgO3J+swQJtPYsP9wHA=",
        version = "v0.0.0-20190404173353-6a84e37a896d",
    )
    go_repository(
        name = "io_k8s_client_go",
        build_file_proto_mode = "disable",
        importpath = "k8s.io/client-go",
        sum = "h1:U5Bt+dab9K8qaUmXINrkXO135kA11/i5Kg1RUydgaMQ=",
        version = "v11.0.1-0.20190409021438-1a26190bd76a+incompatible",
    )
    go_repository(
        name = "io_k8s_klog",
        build_file_proto_mode = "disable",
        importpath = "k8s.io/klog",
        sum = "h1:0VPpR+sizsiivjIfIAQH/rl8tan6jvWkS7lU+0di3lE=",
        version = "v0.3.0",
    )
    go_repository(
        name = "io_k8s_kube_openapi",
        build_file_proto_mode = "disable",
        importpath = "k8s.io/kube-openapi",
        sum = "h1:tHgpQvrWaYfrnC8G4N0Oszw5HHCsZxKilDi2R7HuCSM=",
        version = "v0.0.0-20180629012420-d83b052f768a",
    )

    go_repository(
        name = "io_k8s_sigs_yaml",
        build_file_proto_mode = "disable_global",
        importpath = "sigs.k8s.io/yaml",
        sum = "h1:kr/MCeFWJWTwyaHoR9c8EjH9OumOmoF9YGiZd7lFm/Q=",
        version = "v1.2.0",
    )
    go_repository(
        name = "io_k8s_utils",
        build_file_proto_mode = "disable",
        importpath = "k8s.io/utils",
        sum = "h1:8r+l4bNWjRlsFYlQJnKJ2p7s1YQPj4XyXiJVqDHRx7c=",
        version = "v0.0.0-20190308190857-21c4ce38f2a7",
    )

    go_repository(
        name = "io_opencensus_go",
        build_file_proto_mode = "disable_global",
        importpath = "go.opencensus.io",
        replace = "go.opencensus.io",
        sum = "h1:+KpZCwn3HdqM4KgXC+ywfGPIC40XIwj6C5p+6mbC9a8=",
        version = "v0.23.1-0.20220331163232-052120675fac",
    )
    go_repository(
        name = "io_opencensus_go_contrib_exporter_ocagent",
        build_file_proto_mode = "disable",
        importpath = "contrib.go.opencensus.io/exporter/ocagent",
        sum = "h1:jGFvw3l57ViIVEPKKEUXPcLYIXJmQxLUh6ey1eJhwyc=",
        version = "v0.4.12",
    )

    go_repository(
        name = "io_opentelemetry_go_contrib",
        build_file_proto_mode = "disable_global",
        importpath = "go.opentelemetry.io/contrib",
        sum = "h1:ubFQUn0VCZ0gPwIoJfBJVpeBlyRMxu8Mm/huKWYd9p0=",
        version = "v0.20.0",
    )
    go_repository(
        name = "io_opentelemetry_go_contrib_instrumentation_google_golang_org_grpc_otelgrpc",
        build_file_proto_mode = "disable_global",
        importpath = "go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc",
        sum = "h1:sO4WKdPAudZGKPcpZT4MJn6JaDmpyLrMPDGGyA1SttE=",
        version = "v0.20.0",
    )
    go_repository(
        name = "io_opentelemetry_go_otel",
        build_file_proto_mode = "disable_global",
        importpath = "go.opentelemetry.io/otel",
        sum = "h1:eaP0Fqu7SXHwvjiqDq83zImeehOHX8doTvU9AwXON8g=",
        version = "v0.20.0",
    )
    go_repository(
        name = "io_opentelemetry_go_otel_exporters_otlp",
        build_file_proto_mode = "disable_global",
        importpath = "go.opentelemetry.io/otel/exporters/otlp",
        sum = "h1:PTNgq9MRmQqqJY0REVbZFvwkYOA85vbdQU/nVfxDyqg=",
        version = "v0.20.0",
    )
    go_repository(
        name = "io_opentelemetry_go_otel_metric",
        build_file_proto_mode = "disable_global",
        importpath = "go.opentelemetry.io/otel/metric",
        sum = "h1:4kzhXFP+btKm4jwxpjIqjs41A7MakRFUS86bqLHTIw8=",
        version = "v0.20.0",
    )
    go_repository(
        name = "io_opentelemetry_go_otel_oteltest",
        build_file_proto_mode = "disable_global",
        importpath = "go.opentelemetry.io/otel/oteltest",
        sum = "h1:HiITxCawalo5vQzdHfKeZurV8x7ljcqAgiWzF6Vaeaw=",
        version = "v0.20.0",
    )
    go_repository(
        name = "io_opentelemetry_go_otel_sdk",
        build_file_proto_mode = "disable_global",
        importpath = "go.opentelemetry.io/otel/sdk",
        sum = "h1:JsxtGXd06J8jrnya7fdI/U/MR6yXA5DtbZy+qoHQlr8=",
        version = "v0.20.0",
    )
    go_repository(
        name = "io_opentelemetry_go_otel_sdk_export_metric",
        build_file_proto_mode = "disable_global",
        importpath = "go.opentelemetry.io/otel/sdk/export/metric",
        sum = "h1:c5VRjxCXdQlx1HjzwGdQHzZaVI82b5EbBgOu2ljD92g=",
        version = "v0.20.0",
    )
    go_repository(
        name = "io_opentelemetry_go_otel_sdk_metric",
        build_file_proto_mode = "disable_global",
        importpath = "go.opentelemetry.io/otel/sdk/metric",
        sum = "h1:7ao1wpzHRVKf0OQ7GIxiQJA6X7DLX9o14gmVon7mMK8=",
        version = "v0.20.0",
    )
    go_repository(
        name = "io_opentelemetry_go_otel_trace",
        build_file_proto_mode = "disable_global",
        importpath = "go.opentelemetry.io/otel/trace",
        sum = "h1:1DL6EXUdcg95gukhuRRvLDO/4X5THh/5dIV52lqtnbw=",
        version = "v0.20.0",
    )
    go_repository(
        name = "io_opentelemetry_go_proto_otlp",
        build_file_proto_mode = "disable_global",
        importpath = "go.opentelemetry.io/proto/otlp",
        sum = "h1:rwOQPCuKAKmwGKq2aVNnYIibI6wnV7EvzgfTCzcdGg8=",
        version = "v0.7.0",
    )
    go_repository(
        name = "io_rsc_binaryregexp",
        build_file_proto_mode = "disable_global",
        importpath = "rsc.io/binaryregexp",
        sum = "h1:HfqmD5MEmC0zvwBuF187nq9mdnXjXsSivRiXN7SmRkE=",
        version = "v0.2.0",
    )
    go_repository(
        name = "io_rsc_pdf",
        build_file_proto_mode = "disable_global",
        importpath = "rsc.io/pdf",
        sum = "h1:k1MczvYDUvJBe93bYd7wrZLLUEcLZAuF824/I4e5Xr4=",
        version = "v0.1.1",
    )
    go_repository(
        name = "io_rsc_quote_v3",
        build_file_proto_mode = "disable_global",
        importpath = "rsc.io/quote/v3",
        sum = "h1:9JKUTTIUgS6kzR9mK1YuGKv6Nl+DijDNIc0ghT58FaY=",
        version = "v3.1.0",
    )
    go_repository(
        name = "io_rsc_sampler",
        build_file_proto_mode = "disable_global",
        importpath = "rsc.io/sampler",
        sum = "h1:7uVkIFmeBqHfdjD+gZwtXXI+RODJ2Wc4O7MPEh/QiW4=",
        version = "v1.3.0",
    )
    go_repository(
        name = "org_golang_google_api",
        build_file_proto_mode = "disable_global",
        importpath = "google.golang.org/api",
        sum = "h1:ExR2D+5TYIrMphWgs5JCgwRhEDlPDXXrLwHHMgPHTXE=",
        version = "v0.74.0",
    )
    go_repository(
        name = "org_golang_google_appengine",
        build_file_proto_mode = "disable_global",
        importpath = "google.golang.org/appengine",
        sum = "h1:FZR1q0exgwxzPzp/aF+VccGrSfxfPpkBqjIIEq3ru6c=",
        version = "v1.6.7",
    )
    go_repository(
        name = "org_golang_google_genproto",
        build_file_proto_mode = "disable_global",
        importpath = "google.golang.org/genproto",
        sum = "h1:0m9wktIpOxGw+SSKmydXWB3Z3GTfcPP6+q75HCQa6HI=",
        version = "v0.0.0-20220324131243-acbaeb5b85eb",
    )
    go_repository(
        name = "org_golang_google_grpc",
        build_file_proto_mode = "disable_global",
        importpath = "google.golang.org/grpc",
        sum = "h1:NEpgUqV3Z+ZjkqMsxMg11IaDrXY4RY6CQukSGK0uI1M=",
        version = "v1.45.0",
    )
    go_repository(
        name = "org_golang_google_grpc_cmd_protoc_gen_go_grpc",
        build_file_proto_mode = "disable_global",
        importpath = "google.golang.org/grpc/cmd/protoc-gen-go-grpc",
        sum = "h1:M1YKkFIboKNieVO5DLUEVzQfGwJD30Nv2jfUgzb5UcE=",
        version = "v1.1.0",
    )
    go_repository(
        name = "org_golang_google_protobuf",
        build_file_proto_mode = "disable_global",
        importpath = "google.golang.org/protobuf",
        sum = "h1:d0NfwRgPtno5B1Wa6L2DAG+KivqkdutMf1UhdNx175w=",
        version = "v1.28.1",
    )
    go_repository(
        name = "org_golang_x_crypto",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/crypto",
        sum = "h1:7I4JAnoQBe7ZtJcBaYHi5UtiO8tQHbUSXxL+pnGRANg=",
        version = "v0.0.0-20210921155107-089bfa567519",
    )
    go_repository(
        name = "org_golang_x_exp",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/exp",
        sum = "h1:+WEEuIdZHnUeJJmEUjyYC2gfUMj69yZXw17EnHg/otA=",
        version = "v0.0.0-20220722155223-a9213eeb770e",
    )
    go_repository(
        name = "org_golang_x_exp_typeparams",
        build_file_proto_mode = "disable",
        importpath = "golang.org/x/exp/typeparams",
        sum = "h1:+W8Qf4iJtMGKkyAygcKohjxTk4JPsL9DpzApJ22m5Ic=",
        version = "v0.0.0-20220613132600-b0d781184e0d",
    )

    go_repository(
        name = "org_golang_x_image",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/image",
        sum = "h1:+qEpEAPhDZ1o0x3tHzZTQDArnOixOzGD9HUJfcg0mb4=",
        version = "v0.0.0-20190802002840-cff245a6509b",
    )
    go_repository(
        name = "org_golang_x_lint",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/lint",
        sum = "h1:VLliZ0d+/avPrXXH+OakdXhpJuEoBZuwh1m2j7U6Iug=",
        version = "v0.0.0-20210508222113-6edffad5e616",
    )
    go_repository(
        name = "org_golang_x_mobile",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/mobile",
        sum = "h1:4+4C/Iv2U4fMZBiMCc98MG1In4gJY5YRhtpDNeDeHWs=",
        version = "v0.0.0-20190719004257-d2bd2a29d028",
    )
    go_repository(
        name = "org_golang_x_mod",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/mod",
        sum = "h1:6zppjxzCulZykYSLyVDYbneBfbaBIQPYMevg0bEwv2s=",
        version = "v0.6.0-dev.0.20220419223038-86c51ed26bb4",
    )
    go_repository(
        name = "org_golang_x_net",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/net",
        sum = "h1:PxfKdU9lEEDYjdIzOtC4qFWgkU2rGHdKlKowJSMN9h0=",
        version = "v0.0.0-20220722155237-a158d28d115b",
    )
    go_repository(
        name = "org_golang_x_oauth2",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/oauth2",
        sum = "h1:OSnWWcOd/CtWQC2cYSBgbTSJv3ciqd8r54ySIW2y3RE=",
        version = "v0.0.0-20220411215720-9780585627b5",
    )
    go_repository(
        name = "org_golang_x_sync",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/sync",
        sum = "h1:uVc8UZUe6tr40fFVnUP5Oj+veunVezqYl9z7DYw9xzw=",
        version = "v0.0.0-20220722155255-886fb9371eb4",
    )
    go_repository(
        name = "org_golang_x_sys",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/sys",
        sum = "h1:wM1k/lXfpc5HdkJJyW9GELpd8ERGdnh8sMGL6Gzq3Ho=",
        version = "v0.0.0-20220909162455-aba9fc2a8ff2",
    )
    go_repository(
        name = "org_golang_x_term",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/term",
        sum = "h1:JGgROgKl9N8DuW20oFS5gxc+lE67/N3FcwmBPMe7ArY=",
        version = "v0.0.0-20210927222741-03fcf44c2211",
    )
    go_repository(
        name = "org_golang_x_text",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/text",
        sum = "h1:olpwvP2KacW1ZWvsR7uQhoyTYvKAupfQrRGBFM352Gk=",
        version = "v0.3.7",
    )
    go_repository(
        name = "org_golang_x_time",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/time",
        sum = "h1:M73Iuj3xbbb9Uk1DYhzydthsj6oOd6l9bpuFcNoUvTs=",
        version = "v0.0.0-20220224211638-0e9765cccd65",
    )
    go_repository(
        name = "org_golang_x_tools",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/tools",
        sum = "h1:VveCTK38A2rkS8ZqFY25HIDFscX5X9OoEhJd3quQmXU=",
        version = "v0.1.12",
    )
    go_repository(
        name = "org_golang_x_xerrors",
        build_file_proto_mode = "disable_global",
        importpath = "golang.org/x/xerrors",
        sum = "h1:GGU+dLjvlC3qDwqYgL6UgRmHXhOOgns0bZu2Ty5mm6U=",
        version = "v0.0.0-20220411194840-2f41105eb62f",
    )
    go_repository(
        name = "org_gonum_v1_gonum",
        build_file_proto_mode = "disable_global",
        importpath = "gonum.org/v1/gonum",
        sum = "h1:CCXrcPKiGGotvnN6jfUsKk4rRqm7q09/YbKb5xCEvtM=",
        version = "v0.8.2",
    )
    go_repository(
        name = "org_gonum_v1_netlib",
        build_file_proto_mode = "disable_global",
        importpath = "gonum.org/v1/netlib",
        sum = "h1:OE9mWmgKkjJyEmDAAtGMPjXu+YNeGvK9VTSHY6+Qihc=",
        version = "v0.0.0-20190313105609-8cb42192e0e0",
    )
    go_repository(
        name = "org_gonum_v1_plot",
        build_file_proto_mode = "disable_global",
        importpath = "gonum.org/v1/plot",
        sum = "h1:Qh4dB5D/WpoUUp3lSod7qgoyEHbDGPUWjIbnqdqqe1k=",
        version = "v0.0.0-20190515093506-e2840ee46a6b",
    )
    go_repository(
        name = "org_modernc_fileutil",
        build_file_proto_mode = "disable_global",
        importpath = "modernc.org/fileutil",
        sum = "h1:Z1AFLZwl6BO8A5NldQg/xTSjGLetp+1Ubvl4alfGx8w=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_golex",
        build_file_proto_mode = "disable_global",
        importpath = "modernc.org/golex",
        sum = "h1:EYKY1a3wStt0RzHaH8mdSRNg78Ub0OHxYfCRWw35YtM=",
        version = "v1.0.1",
    )
    go_repository(
        name = "org_modernc_lex",
        build_file_proto_mode = "disable_global",
        importpath = "modernc.org/lex",
        sum = "h1:w0dxp18i1q+aSE7GkepvwzvVWTLoCIQ2oDgTFAV2JZU=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_lexer",
        build_file_proto_mode = "disable_global",
        importpath = "modernc.org/lexer",
        sum = "h1:D2xE6YTaH7aiEC7o/+rbx6qTAEr1uY83peKwkamIdQ0=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_mathutil",
        build_file_proto_mode = "disable_global",
        importpath = "modernc.org/mathutil",
        sum = "h1:ij3fYGe8zBF4Vu+g0oT7mB06r8sqGWKuJu1yXeR4by8=",
        version = "v1.4.1",
    )
    go_repository(
        name = "org_modernc_parser",
        build_file_proto_mode = "disable_global",
        importpath = "modernc.org/parser",
        sum = "h1:/qHLDn1ezrcRk9/XbErYp84bPPM4+w0kIDuvMdRk6Vc=",
        version = "v1.0.2",
    )
    go_repository(
        name = "org_modernc_scanner",
        build_file_proto_mode = "disable_global",
        importpath = "modernc.org/scanner",
        sum = "h1:rmWBTztgQKLM2CYx0uTQGhAxgnrILDEOVXJsEq/I4Js=",
        version = "v1.0.1",
    )
    go_repository(
        name = "org_modernc_sortutil",
        build_file_proto_mode = "disable_global",
        importpath = "modernc.org/sortutil",
        sum = "h1:SUTM1sCR0Ldpv7dbB/KCPC2zHHsZ1KrSkhmGmmV22CQ=",
        version = "v1.0.0",
    )
    go_repository(
        name = "org_modernc_strutil",
        build_file_proto_mode = "disable_global",
        importpath = "modernc.org/strutil",
        sum = "h1:+1/yCzZxY2pZwwrsbH+4T7BQMoLQ9QiBshRC9eicYsc=",
        version = "v1.1.0",
    )
    go_repository(
        name = "org_modernc_y",
        build_file_proto_mode = "disable_global",
        importpath = "modernc.org/y",
        sum = "h1:+QT+MtLkwkvLkh3fYQq+YD5vw2s5paVE73jdl5R/Py8=",
        version = "v1.0.1",
    )
    go_repository(
        name = "org_uber_go_atomic",
        build_file_proto_mode = "disable_global",
        importpath = "go.uber.org/atomic",
        sum = "h1:ECmE8Bn/WFTYwEW/bpKD3M8VtR/zQVbavAoalC1PYyE=",
        version = "v1.9.0",
    )
    go_repository(
        name = "org_uber_go_automaxprocs",
        build_file_proto_mode = "disable_global",
        importpath = "go.uber.org/automaxprocs",
        sum = "h1:CpDZl6aOlLhReez+8S3eEotD7Jx0Os++lemPlMULQP0=",
        version = "v1.4.0",
    )
    go_repository(
        name = "org_uber_go_goleak",
        build_file_proto_mode = "disable_global",
        importpath = "go.uber.org/goleak",
        sum = "h1:xqgm/S+aQvhWFTtR0XK3Jvg7z8kGV8P4X14IzwN3Eqk=",
        version = "v1.2.0",
    )
    go_repository(
        name = "org_uber_go_multierr",
        build_file_proto_mode = "disable_global",
        importpath = "go.uber.org/multierr",
        sum = "h1:dg6GjLku4EH+249NNmoIciG9N/jURbDG+pFlTkhzIC8=",
        version = "v1.8.0",
    )
    go_repository(
        name = "org_uber_go_tools",
        build_file_proto_mode = "disable_global",
        importpath = "go.uber.org/tools",
        sum = "h1:0mgffUl7nfd+FpvXMVz4IDEaUSmT1ysygQC7qYo7sG4=",
        version = "v0.0.0-20190618225709-2cfd321de3ee",
    )
    go_repository(
        name = "org_uber_go_zap",
        build_file_proto_mode = "disable_global",
        importpath = "go.uber.org/zap",
        sum = "h1:WefMeulhovoZ2sYXz7st6K0sLj7bBhpiFaud4r4zST8=",
        version = "v1.21.0",
    )
