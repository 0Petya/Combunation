var xsize = argument[0]
var ysize = argument[1]

var xpoint = irandom(room_width)
var ypoint = irandom(room_height)
while (collision_rectangle(xpoint - xsize, ypoint - ysize, xpoint + xsize, ypoint + ysize, obj_solid, true, false)) {
    xpoint = irandom(room_width)
    ypoint = irandom(room_height)
}

var points
points[0] = xpoint
points[1] = ypoint

return points
