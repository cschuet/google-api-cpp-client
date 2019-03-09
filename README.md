# Bazel Build for [/google/google-api-cpp-client](https://github.com/google/google-api-cpp-client)

[![Build Status](https://travis-ci.org/cschuet/google-api-cpp-client.svg?branch=master)](https://travis-ci.org/cschuet/google-api-cpp-client)

Add to your WORKSPACE

```
http_archive(
    name = "com_github_cschuet_google_api_cpp_client",
    strip_prefix = "google-api-cpp-client-ed16e3f9e26a188bdee35eae385efa4a249c11a2",
    urls = [
        "https://github.com/cschuet/google-api-cpp-client/archive/ed16e3f9e26a188bdee35eae385efa4a249c11a2.tar.gz",
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

