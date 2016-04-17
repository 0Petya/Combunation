x += hsp
y += vsp

if (place_meeting(x, y, obj_solid)) instance_destroy()

var enemy
if (place_meeting(x, y, obj_enemy)) {
    enemy = instance_place(x, y, obj_enemy)
    enemy.hp = enemy.hp - damage
    instance_destroy()
}

var player
if (place_meeting(x, y, obj_player)) {
    player = instance_place(x, y, obj_player)
    player.hp = player.hp - damage
    instance_destroy()
}
