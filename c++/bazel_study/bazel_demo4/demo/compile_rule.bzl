def _compile_implementation(ctx):
    output = []

    #g++ source1 source2 -o xxx.o -c 只涉及到编译 所以用-c
    for f in ctx.files.srcs: #f: Files
      out = ctx.actions.declare_file(
        "{}.o".format(f.path[:-4]) # xx.cpp --> xx.o
      )
      print("compiling {} -> {}".format(f, out))

      inputs = [f]
      inputs.extend(ctx.files.hdrs)

      args = ctx.actions.args()
      args.add(f)
      args.add("-o")
      args.add(out)

      args.add("-c")

      output.append(out)

      ctx.actions.run(
        executable= "/usr/bin/g++",
        arguments = [args],
        inputs = inputs,
        outputs = [out]
      )

    return [DefaultInfo(files = depset(output))]


compile = rule(
    implementation = _compile_implementation,
    attrs = {
        "srcs": attr.label_list(
            allow_files = True,
            doc = "input source files",
        ),
        "hdrs" : attr.label_list(
          allow_files = True,
          doc = "input header files",
          )
    },
  executable = False,
  test = False,
)
