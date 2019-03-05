load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def repositories():
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
