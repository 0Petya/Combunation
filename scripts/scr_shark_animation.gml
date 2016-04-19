if (!animation_lock) {
    if (right) image_xscale = 1
    else if (-left) image_xscale = -1
    
    if (sprite_index != spr_shark) {
        sprite_index = spr_shark
        image_speed = 0.4
    }
    
    if (firing) {
        if (atk_right) image_xscale = 1
        else if (atk_left) image_xscale = -1
        
        sprite_index = spr_shark_atk
        image_speed = 0.4
    }
}
