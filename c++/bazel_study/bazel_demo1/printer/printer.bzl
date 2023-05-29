DemoInfo = provider()

def _impl(ctx):
  print("hello world !")
  print(ctx.attr.number)
  print("Target {}:attr number{}".format(ctx.label,ctx.attr.number))
  return [DemoInfo(number = ctx.attr.number)]

printer = rule(
  implementation = _impl,
  attrs = { #通常是以字典的形式存在
    "number":attr.int(default = 1), 
  },
)


def _impl_with_label(ctx):
   print(ctx.attr.my_label)
   print(ctx.attr.my_label[DemoInfo].number)
   print(type(ctx.attr.my_label))
   print(dir(ctx.attr.my_label))

printer_with_label = rule(
  implementation = _impl_with_label,
  attrs = {
    "my_label" : attr.label(),
  },
) 


# attr.label()
# Target A -> Target B
#


# Target A - Target 
# Rule A [provider()] -> Target B rule implementation function : ctx.attr.my_label[<provder>]
#