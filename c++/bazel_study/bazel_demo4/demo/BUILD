load("//demo:compile_rule.bzl","compile")
load("//demo:link_rule.bzl","link")
load("//demo:zip_rule.bzl","zip_archive")

compile(
  name = "compile",
  srcs = [
    "main.cpp",
    "myFunction.cpp"
  ],
  hdrs = ["myFunction.h"]
)

link(
  name = "link",
  objs = [":compile"],
  out = "main"
)

zip_archive(
  name = "zip_archive",
  files = [":link","README.md"],
  out = "app.zip"
)


cc_binary(
  name = "main_binary",
  srcs = [
    "main.cpp",
    "myFunction.cpp",
    "myFunction.h"
  ],
)