def _link_implementation(ctx):
  out = ctx.outputs.out
  args = ctx.actions.args()
  args.add_all(ctx.files.objs)
  args.add("-o")
  args.add(out)


  args.add("-B")
  args.add("/usr/bin")

  ctx.actions.run(
    executable = "/usr/bin/g++",
    arguments = [args],
    inputs = ctx.files.objs,
    outputs = [out]
  )

  return [DefaultInfo(files = depset([out]),executable = out)]


link = rule(
  implementation = _link_implementation,
  attrs = {
      "objs": attr.label_list(
          allow_files = True,
          doc = "input object files",
      ),
      "out":attr.output()
  },
  executable = True,
  test = False,
)
