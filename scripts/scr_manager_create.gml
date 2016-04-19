randomize()

audio_play_sound(snd_music, 1, true)

game_over = false
generated = false
level = 1
difficulty = 3
floating_min = -10
floating_max = 25

floating = -25
float_down = false

var i
for (i = 0; i < 4; i++) {
    var truthy = -1;
    if (irandom(1) > 0) truthy = 1
    float_array[i] = truthy
}
