/// @description Insert description here
// You can write your code in this editor
if (global.gameOver)
{
	grav = 0;
	global.speedModifier = 0;
	exit;
}

//input

jumpKey = keyboard_check_pressed(vk_up);
jumpKeyAlt = keyboard_check_pressed(vk_space);
duckKey = keyboard_check(vk_down);

//ground check
if (duckKey)
{
	ducking = true;
	jumping = false;
	falling = true;
}

if (place_meeting(x, y+1, obj_block))
{
	vspd = 0;
	jumping = false;
	falling = false;
	
	if (!duckKey)
		ducking = false;
		
	if ((jumpKey || jumpKeyAlt) && !duckKey)
	{
		jumping = true;
		vspd = -jspd
	}
}
else
{
	if(ducking)
	{
		vspd += grav*4
	}
	else
	{
		if (vspd < termVelocity)
			vspd += grav;
			
		if (sign(vspd)==1)
			falling = true;
	}
}

//jump check
if (jumping)
{
	if (vspd < 0)
	{
		jumping = true;
	}
	else
	{
		jumping = false;
		falling = true;
	}
}

//collision
if (place_meeting(x, y + vspd, obj_block))
{
	while (!place_meeting(x, y+sign(vspd), obj_block))
	{
		y += sign(vspd);
	}
	
	vspd = 0;
}

y += vspd;

//set sprite
if (jumping || falling)
	sprite_index = spr_player_idle;
	
if (ducking)
	sprite_index = spr_player_ducking;
	
if (!jumping && !falling && !ducking)
	sprite_index = spr_player_running;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	