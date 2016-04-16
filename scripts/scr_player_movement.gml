var up = -keyboard_check(ord("W"))
var down = keyboard_check(ord("S"))
var left = -keyboard_check(ord("A"))
var right = keyboard_check(ord("D"))

var vsp = (up + down) * move_speed
var hsp = (right + left) * move_speed

if (place_meeting(x + hsp, y, obj_solid)) {
    while(!place_meeting(x + sign(hsp), y, obj_solid))
        x += sign(hsp)
        
    hsp = 0
}
x += hsp

if (place_meeting(x, y + vsp, obj_solid)) {
    while(!place_meeting(x, y + sign(vsp), obj_solid))
        y += sign(vsp)
        
    vsp = 0
}
y += vsp
