licenses(["notice"])

exports_files(["LICENSE"])

package(
    default_visibility = ["//visibility:public"],
)

genrule(
    name = "config_h",
    srcs = ["@com_github_cschuet_google_api_cpp_client//bazel/third_party/google-api-cpp-client:config.h"],
    outs = ["src/googleapis/config.h"],
    cmd = "cp $< $@",
)

cc_library(
    name = "googleapis_oauth2",
    hdrs = [
        "src/googleapis/client/auth/oauth2_authorization.h",
        "src/googleapis/client/auth/oauth2_service_authorization.h",
        "src/googleapis/client/auth/jwt_builder.h",
    ],
    srcs = [
        "src/googleapis/client/auth/oauth2_authorization.cc",
        "src/googleapis/client/auth/oauth2_service_authorization.cc",
        "src/googleapis/client/auth/jwt_builder.cc",
    ],
    deps = [
        "@com_github_open_source_parsers_jsoncpp//:jsoncpp",
        ":googleapis_http",
        ":googleapis_internal",
        ":googleapis_utils",
        "@boringssl//:ssl",
    ],
    strip_include_prefix = "src",
    copts = ["-Wno-unused-local-typedefs", "-Wno-deprecated-declarations"],
)

cc_library(
    name = "googleapis_json",
    srcs = [
        "src/googleapis/client/data/serializable_json.cc",
    ],
    hdrs = [
        "src/googleapis/client/data/serializable_json.h",
    ],
    strip_include_prefix = "src",
    deps = [
        ":googleapis_utils",
        ":googleapis_internal",
    ],
)

cc_library(
    name = "googleapis_curl_http",
    hdrs = [
        "src/googleapis/client/transport/curl_http_transport.h",
    ],
    srcs = [
        "src/googleapis/client/transport/curl_http_transport.cc",
    ],
    deps = [
        ":googleapis_http",
        ":googleapis_internal",
        "@com_google_glog//:glog",
        "@com_github_curl//:curl",
    ],
    strip_include_prefix = "src",
    copts = ["-Wno-sign-compare", "-Wno-unused-local-typedefs"],
)

cc_library(
    name = "googleapis_http",
    srcs = [
        "src/googleapis/client/auth/credential_store.cc",
        "src/googleapis/client/auth/file_credential_store.cc",
        "src/googleapis/client/transport/ca_paths.cc",
        "src/googleapis/client/transport/http_authorization.cc",
        "src/googleapis/client/transport/http_request.cc",
        "src/googleapis/client/transport/http_request_batch.cc",
        "src/googleapis/client/transport/http_response.cc",
        "src/googleapis/client/transport/http_scribe.cc",
        "src/googleapis/client/transport/http_transport.cc",
        "src/googleapis/client/transport/http_transport_global_state.cc",
        "src/googleapis/client/transport/versioninfo.cc",
        "src/googleapis/client/service/client_service.cc",
        "src/googleapis/client/service/media_uploader.cc",
        "src/googleapis/client/service/service_request_pager.cc",
    ],
    deps = [
        ":googleapis_internal",
        ":googleapis_utils",
        "@com_google_glog//:glog",
    ],
    copts = ["-Wno-unused-local-typedefs", "-Wno-sign-compare"],
    hdrs = [
        "src/googleapis/client/auth/credential_store.h",
        "src/googleapis/client/auth/file_credential_store.h",
        "src/googleapis/client/transport/http_transport_global_state.h",
        "src/googleapis/client/data/serializable_json.h",
        "src/googleapis/client/util/date_time.h",
        "src/googleapis/client/util/escaping.h",
        "src/googleapis/client/util/file_utils.h",
        "src/googleapis/client/util/program_path.h",
        "src/googleapis/client/util/status.h",
        "src/googleapis/client/util/uri_template.h",
        "src/googleapis/client/util/uri_utils.h",
        "src/googleapis/client/transport/ca_paths.h",
        "src/googleapis/client/service/client_service.h",
        "src/googleapis/client/service/media_uploader.h",
        "src/googleapis/client/service/service_request_pager.h",
        "src/googleapis/client/data/codec.h",
        "src/googleapis/client/data/base64_codec.h",
        "src/googleapis/client/data/data_reader.h",
        "src/googleapis/client/data/data_writer.h",
        "src/googleapis/client/transport/http_authorization.h",
        "src/googleapis/client/transport/http_request.h",
        "src/googleapis/client/transport/http_request_batch.h",
        "src/googleapis/client/transport/http_response.h",
        "src/googleapis/client/transport/http_scribe.h",
        "src/googleapis/client/transport/http_transport.h",
        "src/googleapis/client/transport/http_types.h",
        "src/googleapis/client/transport/versioninfo.h",
    ],
    strip_include_prefix = "src",
)

cc_library(
    copts = ["-Wno-deprecated-declarations", "-Wno-unused-local-typedefs"],
    name = "googleapis_jsoncpp",
    srcs = [
        "src/googleapis/client/data/jsoncpp_data.cc",
    ],
    deps = [
        ":googleapis_http",
        ":googleapis_json",
        "@com_google_glog//:glog",
        "@com_github_open_source_parsers_jsoncpp//:jsoncpp",
    ],
    hdrs = [
        "src/googleapis/client/data/jsoncpp_data.h",
        "src/googleapis/client/data/jsoncpp_data_helpers.h",
    ],
    strip_include_prefix = "src",
)

cc_library(
    copts = ["-Wno-sign-compare", "-Wno-unused-local-typedefs"],
    name = "googleapis_utils",
    srcs = [
        "src/googleapis/client/data/base64_codec.cc",
        "src/googleapis/client/data/codec.cc",
        "src/googleapis/client/data/data_reader.cc",
        "src/googleapis/client/data/data_writer.cc",
        "src/googleapis/client/data/composite_data_reader.cc",
        "src/googleapis/client/data/file_data_reader.cc",
        "src/googleapis/client/data/inmemory_data_reader.cc",
        "src/googleapis/client/data/istream_data_reader.cc",
        "src/googleapis/client/util/date_time.cc",
        "src/googleapis/client/util/escaping.cc",
        "src/googleapis/client/util/file_utils.cc",
        "src/googleapis/client/util/program_path.cc",
        "src/googleapis/client/util/status.cc",
        "src/googleapis/client/util/uri_template.cc",
        "src/googleapis/client/util/uri_utils.cc",
    ],
    deps = [
        ":googleapis_internal",
        "@com_google_glog//:glog",
    ],
    hdrs = [
        "src/googleapis/client/data/codec.h",
        "src/googleapis/client/data/base64_codec.h",
        "src/googleapis/client/data/data_reader.h",
        "src/googleapis/client/data/data_writer.h",
        "src/googleapis/client/util/date_time.h",
        "src/googleapis/client/util/escaping.h",
        "src/googleapis/client/util/file_utils.h",
        "src/googleapis/client/util/program_path.h",
        "src/googleapis/client/util/status.h",
        "src/googleapis/client/util/uri_template.h",
        "src/googleapis/client/util/uri_utils.h",
    ],
    strip_include_prefix = "src",
)

cc_library(
    name = "googleapis_internal",
    srcs = [
        "src/googleapis/base/callback.cc",
        "src/googleapis/base/once.cc",
        "src/googleapis/base/strtoint.cc",
        "src/googleapis/base/windows_compatability.cc",
        "src/googleapis/client/util/status.cc",
        "src/googleapis/strings/ascii_ctype.cc",
        "src/googleapis/strings/case.cc",
        "src/googleapis/strings/memutil.cc",
        "src/googleapis/strings/numbers.cc",
        "src/googleapis/strings/split.cc",
        "src/googleapis/strings/strcat.cc",
        "src/googleapis/strings/stringpiece.cc",
        "src/googleapis/strings/strip.cc",
        "src/googleapis/strings/util.cc",
        "src/googleapis/util/executor.cc",
        "src/googleapis/util/file.cc",
        "src/googleapis/util/hash.cc",
        "src/googleapis/util/status.cc",
    ],
    copts = ["-Wno-sign-compare", "-Wno-unused-local-typedefs", "-Wno-deprecated-declarations"],
    deps = [
        "@com_google_glog//:glog",
    ],
    hdrs = [
        "src/googleapis/base/callback-specializations.h",
        "src/googleapis/base/callback-types.h",
        "src/googleapis/base/callback.h",
        "src/googleapis/base/int128.h",
        "src/googleapis/base/integral_types.h",
        "src/googleapis/base/macros.h",
        "src/googleapis/base/mutex.h",
        "src/googleapis/base/once.h",
        "src/googleapis/base/port.h",
        "src/googleapis/base/strtoint.h",
        "src/googleapis/base/template_util.h",
        "src/googleapis/base/thread_annotations.h",
        "src/googleapis/base/windows_compatability.h",
        "src/googleapis/client/util/status.h",
        "src/googleapis/strings/ascii_ctype.h",
        "src/googleapis/strings/case.h",
        "src/googleapis/strings/join.h",
        "src/googleapis/strings/memutil.h",
        "src/googleapis/strings/numbers.h",
        "src/googleapis/strings/split.h",
        "src/googleapis/strings/strcat.h",
        "src/googleapis/strings/stringpiece.h",
        "src/googleapis/strings/strip.h",
        "src/googleapis/strings/util.h",
        "src/googleapis/util/case_insensitive_hash.h",
        "src/googleapis/util/executor.h",
        "src/googleapis/util/file.h",
        "src/googleapis/util/hash.h",
        "src/googleapis/util/mock_executor.h",
        "src/googleapis/util/status.h",
        ":config_h",
    ],
    strip_include_prefix = "src",
)
