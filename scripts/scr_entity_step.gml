if (hp <= 0) {
    instance_create(x, y, obj_death)
    audio_play_sound(snd_death, 2, false)
    instance_destroy()
}

if (time == 0) time = time_step

time--
