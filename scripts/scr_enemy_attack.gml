if (player_in_range) {
    attacking = true
    
    var proj
    if (fired == 0) {
        proj = instance_create(x, y, projectile)
        proj.image_angle = player_direction
        proj.vsp = -sin(degtorad(player_direction)) * proj_speed
        proj.hsp = cos(degtorad(player_direction)) * proj_speed
        fired = irandom_range(fire_speed - (fire_speed / 4), fire_speed + (fire_speed / 4))
    }
}

if (fired != 0) fired--
