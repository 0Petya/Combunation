event_inherited()

enum move_type {
    FOLLOW,
    WANDER,
    WAIT
}

type = choose(move_type.FOLLOW, move_type.WANDER, move_type.WAIT)
vsp = 0
hsp = 0
attacking = false
attack_distance = 0
random_position = point_direction(x, y, irandom(room_width), irandom(room_height))
