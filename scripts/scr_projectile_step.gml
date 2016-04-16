x += hsp
y += vsp

if (place_meeting(x + hsp, y, obj_solid)) instance_destroy()
if (place_meeting(x, y + vsp, obj_solid)) instance_destroy()
