draw_set_font(global.font);
draw_set_color(c_white);
draw_set_halign(fa_center);
//some death ui elements
if (obj_bird.dead) 
{
	draw_sprite(spr_gameover, 0, room_width / 2, overy);
	draw_sprite(spr_scoredisplay, 0, room_width / 2, 230);
   
	if (gameScore >= 10)
	{
		getmedal();
		draw_sprite(spr_medal, sprmedal, (room_width / 2) - 65, 237);
	}
	draw_set_font(global.menufont);
	draw_text((room_width / 2) + 80, 205, string(gameScore))
	draw_text((room_width / 2) + 80, 247, string(global.highscore))
	if (ermbetter)
		draw_sprite(spr_new, 0, (room_width / 2) + 40, 238);  
	//this always has to be last
	draw_sprite_tiled_ext(spr_flash, 0, 0, 0, 1, 1, c_white, flash);
}
else
	draw_text(room_width / 2, room_height * 0.1, string(gameScore));
	
if (!did_start) 
   draw_sprite(spr_getready, 0, room_width / 2, room_height * 0.5);
   


