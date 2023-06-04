load("//demo:compile_rule.bzl","compile")
load("//demo:link_rule.bzl","link")
load("//demo:zip_rule.bzl","zip_archive")
load("@rules_cc//cc:defs.bzl","cc_binary") #github.com/bazelbuild/rules_cc
load("@bazel_tools//tools/build_defs/pkg:pkg.bzl","pkg_tar")

def application(name,srcs,hdrs,out): #对compile进行了简单的封装
  compile_target_name = "{}-compile".format(name)
  link_target_name = "{}-link".format(name)


  compile(
    name = compile_target_name,
    srcs = srcs,
    hdrs = hdrs,
  )

  link(
  name = link_target_name,
  objs = [compile_target_name],
  out = out
  )

  zip_archive(
  name = name,
  files = [link_target_name,"README.md"],
  out = "app.zip"
  )

# native rule is not visibility in xxx.bzl if without load()
def native_application(name,srcs,extra_files):
  binary_target_name = "{}-cc_binary".format(name)
  cc_binary(
  name = binary_target_name,
  srcs = srcs
  )

  pkg_tar(
    name = name,
    srcs = [
      binary_target_name,
      extra_files
    ]
  )
 