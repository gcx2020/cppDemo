def _impl(ctx):
  print("hello world !")
  print(ctx.attr.number)
  print("Target {}:attr number{}".format(ctx.label,ctx.attr.number))

printer = rule(
  implementation = _impl,
  attrs = { #通常是以字典的形式存在
    "number":attr.int(default = 1), 
  },
)