atk_up = keyboard_check(vk_up)
atk_down = keyboard_check(vk_down)
atk_left = keyboard_check(vk_left)
atk_right = keyboard_check(vk_right)

var proj_direction;
if (atk_up) proj_direction = 90
else if (atk_down) proj_direction = 270
else if (atk_left) proj_direction = 180
else if (atk_right) proj_direction = 0

if ((atk_up || atk_down || atk_left || atk_right) && fired == 0 && !animation_lock) {
    firing = true
    fired = fire_speed
    
    if (projectile == obj_poop) {
        var proj = instance_create(x, y, projectile);
        proj.direction = proj_direction
        proj.speed = proj_speed
    } else if (projectile == obj_fire) {
        var i
        for (i = -3; i <= 3; i+= 2) {
            var proj = instance_create(x, y - 10, projectile);
            var new_direction = proj_direction + i * 15;
            proj.image_angle = new_direction
            proj.direction = new_direction
            proj.speed = proj_speed
        }
    } else if (projectile == obj_claw) {
        var xpos = x
        var ypos = y
        
        if (atk_up) ypos -= attack_range
        else if (atk_down) ypos += attack_range
        else if (atk_left) xpos -= attack_range
        else if (atk_right) xpos += attack_range
        
        var proj = instance_create(xpos, ypos, projectile);
        proj.direction = proj_direction
        proj.speed = proj_speed
    } else if (projectile == obj_laser) {
        var proj = instance_create(x, y - 20, projectile);
        proj.image_angle = proj_direction
        proj.direction = proj_direction
        proj.speed = proj_speed
    }
} else firing = false

if (fired != 0) fired--
