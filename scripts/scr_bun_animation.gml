if (walking && sprite_index != spr_bun_walk) {
    sprite_index = spr_bun_walk
    image_index = 0
    image_speed = 0.1
} else if (!walking) sprite_index = spr_bun

if (right) image_xscale = 1
else if (-left) image_xscale = -1
