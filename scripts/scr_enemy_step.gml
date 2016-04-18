event_inherited()

nearest_player = instance_nearest(x, y, obj_player)
player_direction = point_direction(x, y, nearest_player.x, nearest_player.y)
player_in_range = instance_exists(nearest_player) && distance_to_object(nearest_player) < attack_distance
