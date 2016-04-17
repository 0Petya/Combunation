if (moved == 0) {
    type = choose(move_type.FOLLOW, move_type.WANDER, move_type.WAIT)
    moved = irandom_range(move_decision_rate - (move_decision_rate / 4), move_decision_rate + (move_decision_rate / 4))
    random_position = point_direction(x, y, irandom(room_width), irandom(room_height))
}

switch (type) {
    case move_type.FOLLOW:
        if (instance_exists(nearest_player)) {
            var position = point_direction(x, y, nearest_player.x, nearest_player.y)
            vsp = -sin(degtorad(position)) * move_speed
            hsp = cos(degtorad(position)) * move_speed
        } else type = choose(move_type.WANDER, move_type.WAIT)
        break
    case move_type.WANDER:
        vsp = -sin(degtorad(random_position)) * move_speed
        hsp = cos(degtorad(random_position)) * move_speed
        break
    case move_type.WAIT:
        vsp = 0
        hsp = 0
        if (moved > 30) moved = 30
        break
}

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

if (moved != 0) moved--
