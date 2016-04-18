if (player_in_range) {
    attacking = true
    
    var proj
    if (fired == 0) {
        firing = true
        proj = instance_create(x, y, projectile)
        proj.image_angle = player_direction
        proj.direction = player_direction
        proj.speed = proj_speed
        fired = irandom_range(fire_speed - (fire_speed / 4), fire_speed + (fire_speed / 4))
    } else firing = false
}

if (fired != 0) fired--
