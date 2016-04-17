if (instance_exists(nearest_player)) {
    var position = point_direction(x, y, nearest_player.x, nearest_player.y)
    
    var proj
    if (fired == 0) {
        proj = instance_create(x, y, projectile)
        proj.image_angle = position
        proj.vsp = -sin(degtorad(position)) * proj_speed
        proj.hsp = cos(degtorad(position)) * proj_speed
        fired = irandom_range(fire_speed - (fire_speed / 4), fire_speed + (fire_speed / 4))
    }
}

if (fired != 0) fired--
