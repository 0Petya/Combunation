up = -keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
left = -keyboard_check(ord("A"))
right = keyboard_check(ord("D"))

if (-up || down || -left || right) walking = true
else walking = false

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
