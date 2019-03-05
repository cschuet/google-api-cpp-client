# Bazel Build for [/google/google-api-cpp-client](https://github.com/google/google-api-cpp-client)

[![Build Status](https://travis-ci.org/cschuet/google-api-cpp-client.svg?branch=master)](https://travis-ci.org/cschuet/google-api-cpp-client)

Add to your WORKSPACE

```
http_archive(
    name = "com_github_cschuet_google_api_cpp_client",
    strip_prefix = "google-api-cpp-client-48f08d5e6c8c53bb39a511b50b8b532162a31519",
    urls = [
        "https://github.com/cschuet/google-api-cpp-client/archive/48f08d5e6c8c53bb39a511b50b8b532162a31519.tar.gz",
    ],
)


load("//:bazel/repositories.bzl", "repositories")

repositories()

load("@com_github_cschuet_jsoncpp//:bazel/repositories.bzl", "repositories")

repositories()
```

Compile with
```
bazel build @com_github_google_google_api_cpp_client//...
```

