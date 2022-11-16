/// @desc Core player logic
// Get player inputs

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate our movement

var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

// Horizontal Colision
if (place_meeting(x+hsp,y,obj_wallunder
{
	while (!place_meeting(x+sign(hsp),y,obj_wallunder)))
	{
		x = x + sign(hsp);
	}
	hsp = 0;

}
x = x + hsp

// Vertical Colision
if (place_meeting(x+vsp,y,obj_wallunder
{ 
	while (!place_meeting(x,y+sign(vsp),obj_wallunder)))
	{
		y = y + sign(vsp);
	}
	vsp = 0;

}
y = y + vsp