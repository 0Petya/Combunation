if (walking && sprite_index != spr_bun_walk) {
    sprite_index = spr_bun_walk
    image_speed = 0.35
} else if (!walking) {
    sprite_index = spr_bun
    image_speed = 0.25
}

if (right) image_xscale = 1
else if (-left) image_xscale = -1
