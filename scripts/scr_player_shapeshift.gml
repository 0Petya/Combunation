var bun = keyboard_check(ord("1"))
var dragon = keyboard_check(ord("2"))

if (!animation_lock) {
    if (bun && shifted == 0 && id.object_index != obj_bun) {
        var new_hp = hp
        var new_fired = fired
        instance_change(obj_bun, true)
        hp = new_hp
        fired = new_fired
        poof = true
    } else if (dragon && shifted == 0 && id.object_index != obj_dragon) {
        var new_hp = hp
        var new_fired = fired
        instance_change(obj_dragon, true)
        hp = new_hp
        fired = new_fired
        poof = true
    }
}

if (poof) {
    shifted = shift_speed
    instance_create(x, y, obj_poof)
    audio_play_sound(snd_poof, 3, false)
    poof = false
}

if (shifted != 0) shifted--
