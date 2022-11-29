/// @desc Core player logic
// Get player inputs

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// Calculate our movement

var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_wallunder)) and (key_jump)

{
	vsp = -jumpsp
}
if (not place_meeting(x,y+1,obj_wallunder)) and (key_jump) and (jumpspdused = 0)

{
	vsp = -jumpspd
	jumpspdused = 1
}
if (place_meeting(x,y+1,obj_wallunder))
{
	jumpspdused = 0
}

// Horizontal Colision
if (place_meeting(x+hsp,y,obj_wallunder))
{
	while (!place_meeting(x+sign(hsp),y,obj_wallunder))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Verticle Colision
if (place_meeting(x,y+vsp,obj_wallunder))
{
	while (!place_meeting(x,y+sign(vsp),obj_wallunder))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,obj_wallunder))
{
	sprite_index = spr_erwinjump;
	image_speed = 0;
	if (vsp > 0) image_index = 8; else image_index = 7;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_erwin;
	}
	else
	{
		sprite_index = spr_erwinwalk;
	}
}

if (hsp != 0) image_xscale = sign(hsp);