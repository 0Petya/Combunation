if (!animation_lock) {
    if (right) image_xscale = 1
    else if (-left) image_xscale = -1
    
    if (sprite_index != spr_tiger) {
        sprite_index = spr_tiger
        image_speed = 0.4
    }
    
    if (firing) {
        if (atk_right) image_xscale = 1
        else if (atk_left) image_xscale = -1
        
        animation_lock = true
        sprite_index = spr_tiger_atk
        image_speed = 0.4
    }
}
