load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def repositories():
    _maybe(
        http_archive,
        name = "boringssl",
        url = "https://boringssl.googlesource.com/boringssl/+archive/afc30d43eef92979b05776ec0963c9cede5fb80f.tar.gz",
    )

    _maybe(
        http_archive,
        name = "com_github_curl",
        urls = ["https://github.com/curl/curl/archive/e2ef8d6fa11b2345e10b89db525920f2a0d5fd79.zip"],
        strip_prefix = "curl-e2ef8d6fa11b2345e10b89db525920f2a0d5fd79",
        build_file = "@com_github_cschuet_google_api_cpp_client//bazel/third_party/curl:curl.BUILD",
    )

    _maybe(
        http_archive,
        name = "com_github_gflags_gflags",
        sha256 = "6e16c8bc91b1310a44f3965e616383dbda48f83e8c1eaa2370a215057b00cabe",
        strip_prefix = "gflags-77592648e3f3be87d6c7123eb81cbad75f9aef5a",
        urls = [
            "https://mirror.bazel.build/github.com/gflags/gflags/archive/77592648e3f3be87d6c7123eb81cbad75f9aef5a.tar.gz",
            "https://github.com/gflags/gflags/archive/77592648e3f3be87d6c7123eb81cbad75f9aef5a.tar.gz",
        ],
    )

    _maybe(
        http_archive,
        name = "com_google_glog",
        sha256 = "dfc074b41a5b86fc5dda4f0e2e2d6cc5b21f798c9fcc8ed5fea9c8f7c4613be6",
        strip_prefix = "glog-dd2b93d761a19860190cb3fa92066c8031e912e3",
        urls = [
            "https://mirror.bazel.build/github.com/google/glog/archive/dd2b93d761a19860190cb3fa92066c8031e912e3.tar.gz",
            "https://github.com/google/glog/archive/dd2b93d761a19860190cb3fa92066c8031e912e3.tar.gz",
        ],
    )

    _maybe(
        http_archive,
	name = "com_github_cschuet_jsoncpp",
	strip_prefix = "jsoncpp-8f3755a9eb9765c4709b6d30299b1f335fcf20b1",
	urls = [
	    "https://github.com/cschuet/jsoncpp/archive/8f3755a9eb9765c4709b6d30299b1f335fcf20b1.tar.gz",
	],
    )
    
    _maybe(
        http_archive,
        name = "com_github_google_google_api_cpp_client",
	build_file = "@com_github_cschuet_google_api_cpp_client//bazel/third_party/google-api-cpp-client:google-api-cpp-client.BUILD",
        strip_prefix = "google-api-cpp-client-d0bbe169d81a50936ec5fcea4e6dbcfb97303f13",
        urls = [
            "https://github.com/google/google-api-cpp-client/archive/d0bbe169d81a50936ec5fcea4e6dbcfb97303f13.tar.gz",
        ],
    )
