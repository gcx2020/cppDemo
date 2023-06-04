load("//demo:application.bzl","application","native_application")



application(
  name = "application",
  srcs = [
    "main.cpp",
    "myFunction.cpp"
  ],
  hdrs = ["myFunction.h"],
  out = "out"
)


native_application(
  name = "native_application",
  srcs = [
    "main.cpp",
    "myFunction.cpp",
    "myFunction.h"
  ],
  extra_files = "README.md"
)
