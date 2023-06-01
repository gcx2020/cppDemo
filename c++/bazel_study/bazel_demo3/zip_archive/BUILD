load("//zip_archive:rule.bzl","zip_archive")


zip_archive(
  name = "zip_archive",
  files = [
    "README.md",
    "main",
  ],
  out = "app.zip"
)


# 简单写法

genrule(
  name = "zip_archive_genrule",
  srcs = ["README.md","main"],
  outs = ["release.zip"],
  cmd = "zip $(OUTS) $(SRCS)",
)