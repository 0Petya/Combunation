x += hsp
y += vsp

if (place_meeting(x, y, obj_enemy) && object_index != obj_bullet) {
    var enemy = instance_place(x, y, obj_enemy);
    enemy.hp = enemy.hp - damage
    instance_destroy()
} else if (place_meeting(x, y, obj_player) && object_index != obj_poop) {
    var player = instance_place(x, y, obj_player);
    player.hp = player.hp - damage
    instance_destroy()
} else if (place_meeting(x, y, obj_solid) && !place_meeting(x, y, obj_entity)) instance_destroy()
