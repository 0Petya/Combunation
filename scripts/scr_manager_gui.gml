var player = instance_nearest(x, y, obj_player)

if (floating == -25) float_down = true
else if (floating == floating_max) float_down = false

if (float_down) floating++
else if (!float_down) floating--

draw_sprite(spr_bun, 0, 32, 42 + floating / 5 * float_array[0])
draw_sprite(spr_baby_dragon, 0, 96, 42 + floating / 5 * float_array[1])
draw_sprite(spr_baby_tiger, 0, 160, 42 + floating / 5 * float_array[2])
draw_sprite(spr_baby_shark, 0, 224, 42 + floating / 5 * float_array[3])

draw_set_font(fnt_consolas)

var bun_color = c_white
var dragon_color = c_white
var tiger_color = c_white
var shark_color = c_white

if (instance_exists(obj_bun)) bun_color = c_red
else if (instance_exists(obj_dragon)) dragon_color = c_red
//else if (instance_exists(obj_tiger)) tiger_color = c_red
//else if (instance_exists(obj_shark)) shark_color = c_red

script_execute(scr_text_outline, 24, 80, "1", bun_color, c_black)
script_execute(scr_text_outline, 88, 80, "2", dragon_color, c_black)
script_execute(scr_text_outline, 152, 80, "3", tiger_color, c_black)
script_execute(scr_text_outline, 216, 80, "4", shark_color, c_black)

script_execute(scr_text_outline, view_wport[0] - 156, 32, "Level " + string(level - 1), c_white, c_black)

if (instance_exists(obj_player)) {
    var player = instance_nearest(x, y, obj_player)
    var i
    for (i = 1; i <= player.hp; i++)
        draw_sprite(spr_health, 0, 32 * i, view_hport[0] - 32)
}
