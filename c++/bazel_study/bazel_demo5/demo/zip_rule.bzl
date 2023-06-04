def _impl_zip_archive(ctx):
  out_file = ctx.outputs.out

  #zip xxx.zip source_file1 source file2
  args = ctx.actions.args()

  args.add(out_file)
  args.add_all(ctx.files.files)

  ctx.actions.run(
    executable = "zip",
    arguments = [args],
    inputs = ctx.files.files,
    outputs = [out_file]
  )

  return DefaultInfo(
    files = depset([out_file]),
  )


zip_archive = rule(
  implementation = _impl_zip_archive,
  attrs = {
    "files": attr.label_list(allow_files = True),
    "out": attr.output(mandatory = True)
  },
)