def _impl(ctx):
  print("====== Target {} ======".format(ctx.label))
  # new_file = ctx.actions.declare_file(ctx.attr.output_file)
  print(ctx.outputs.output_file)
  new_file = ctx.outputs.output_file

  print(type(new_file))

  ctx.actions.write(
    content = ctx.attr.text,
    output = new_file,
  )
  return DefaultInfo(
    files = depset([new_file]),
  )

generate_file = rule(
  implementation = _impl,
  attrs = {
    "text" : attr.string(mandatory = True),
    # "output_file": attr.string(mandatory = True)
    "output_file": attr.output(mandatory = True)
  },
)