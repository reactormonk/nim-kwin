type TWinId* = int
type TRect* = ref object
  x*: int
  y*: int
  width*: int
  height*: int
type TPoint* = ref object
  x*: int
  y*: int
type TSize* = ref object
  w*: int
  h*: int

type TDeleted* = ref object # TODO
  
proc initRect*(x, y, width, height: int): TRect =
  new(result)
  result.x = x
  result.y = y
  result.width = width
  result.height = height

proc initPoint*(x, y: int): TPoint =
  new(result)
  result.x = x
  result.y = y

proc initSize*(w, h: int): TSize =
  new(result)
  result.w = w
  result.h = h
