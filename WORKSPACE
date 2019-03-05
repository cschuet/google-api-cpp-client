workspace(name = "com_github_cschuet_google_api_cpp_client")

load("//:bazel/repositories.bzl", "repositories")

repositories()

local_repository(
    name = "com_github_cschuet_jsoncpp",
    path = "../jsoncpp",
)

load("@com_github_cschuet_jsoncpp//:bazel/repositories.bzl", "repositories")

repositories()
