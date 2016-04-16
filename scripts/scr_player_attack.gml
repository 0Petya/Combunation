var up = -keyboard_check(vk_up)
var down = keyboard_check(vk_down)
var left = -keyboard_check(vk_left)
var right = keyboard_check(vk_right)

var vsp = (up + down) * proj_speed
var hsp = (right + left) * proj_speed

var proj
if ((abs(vsp) || abs(hsp)) && fired == 0) {
    proj = instance_create(x, y, projectile)
    proj.vsp = vsp
    proj.hsp = hsp
    fired = fire_speed
}

if (fired != 0) fired--
