/// @description Insert description here
// You can write your code in this editor
global.gameOver = true;

if (!instance_exists(obj_replay))
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_replay);