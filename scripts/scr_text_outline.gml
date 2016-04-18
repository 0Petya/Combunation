var xx = argument[0]
var yy = argument[1]
var text = argument[2]
var tcolor = argument[3]
var ocolor = argument[4]
 
var pcolor = draw_get_color()
 
draw_set_color(ocolor)
draw_text(xx - 1, yy, text)
draw_text(xx + 1, yy, text)
draw_text(xx, yy - 1, text)
draw_text(xx, yy + 1, text)
 
draw_set_color(tcolor)
draw_text(xx, yy, text)
