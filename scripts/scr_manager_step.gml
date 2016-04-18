if (!generated) {
    if (level == 1) {
        var player = obj_bun
        var instance = instance_create(0, 0, player)
        var position = script_execute(scr_free_spot, instance.sprite_width, instance.sprite_height);
        instance.x = position[0]
        instance.y = position[1]
    } else if (level != 4) {
        var diff = level * difficulty
        var enemies = irandom_range(diff, diff + (diff / 2))
        var i
        for (i = 0; i < enemies; i++) {
            var enemy = choose(obj_robot)
            var instance = instance_create(0, 0, enemy)
            var position = script_execute(scr_free_spot, instance.sprite_width, instance.sprite_height);
            instance.x = position[0]
            instance.y = position[1]
        }
    }
    
    generated = true
}

if (instance_number(obj_enemy) == 0) {
    generated = false
    level++
}
