/// @description Insert description here
// You can write your code in this editor


var i = instance_create_layer(room_width - 1, room_height + 420, "Instances", obj_obstacle);
i.sprite_index = choose(spr_small, spr_large, spr_bird);



i.y = choose(room_height - 200, room_height - 445);

alarm[0] = room_speed * 1;
