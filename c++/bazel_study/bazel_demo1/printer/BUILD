# load("//printer:printer.bzl","printer") # // 代表的是bazel项目的根路径

load("@src//printer:printer.bzl","printer","printer_with_label") # @ 代表的是所处的项目

printer(
  name = "printer",
  number = 2,
)

printer_with_label(
  name = "printer_with_label",
  my_label = ":printer"
)