/// @description Insert description here
// You can write your code in this editor

draw_set_color(make_color_rgb(83,83,83));


draw_set_font(fnt_main);
draw_text(room_width - 100, room_height - 100, string(global.speedModifier));
draw_text(room_width - 200, room_height - 600, "score : " + string(int64(score_cus)));



if (global.gameOver)
	draw_sprite(spr_gameover, 0, room_width/2, room_height/2);
