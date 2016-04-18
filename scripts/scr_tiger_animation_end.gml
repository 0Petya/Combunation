if (sprite_index == spr_tiger_atk) animation_lock = false
while(instance_exists(obj_claw)) {
    var claw = instance_nearest(x, y, obj_claw)
    with (claw) instance_destroy()
}
