if (!attacking) {
    if (vsp > 0 && sprite_index != spr_robot_front) sprite_index = spr_robot_front
    else if (vsp < 0 && sprite_index != spr_robot_back) sprite_index = spr_robot_back
    
    if (hsp < 0) image_xscale = 1
    else if (hsp > 0) image_xscale = -1
} else {
    if (sin(degtorad(player_direction))) sprite_index = spr_robot_back
    else if (-sin(degtorad(player_direction))) sprite_index = spr_robot_front
    
    if (-cos(degtorad(player_direction))) image_xscale = 1
    else if (cos(degtorad(player_direction))) image_xscale = -1
}
