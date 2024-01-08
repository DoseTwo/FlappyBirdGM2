//move ground
with (obj_land) 
{
     x -= obj_game.game_speed;
     // jump back to the other side
     if (x + sprite_width < 0) 
	 {
        x = room_width + 10;
     }
}

//stop moving everything when you die and do the flappy bird flash thing
if (obj_bird.dead)
{
	game_speed = 0;
	flash -= 0.05
	layer_hspeed(bgid, 0);
	//i forgot alarms are actually stupid
	if (godfuckingdamnit)
	{
		alarm[1] = 10;
		alarm[2] = 5;
		alarm[3] = 20;
		ermbetter = savehighscore();
		audio_play_sound(sfx_die, 1, false);
		instance_create_depth((room_width / 4) + 80, 330, -2, obj_restartbutton);
		godfuckingdamnit = false;
	}
	if (lolyeah)
	{
		overy = approach(overy, 140, 16);
	}
}

//move pipes
with (obj_pipeUp) 
{
     x -= obj_game.game_speed;
     if (x + sprite_width < 0)
	 {
        instance_destroy();
     }
}

with (obj_pipeDown) 
{
     x -= obj_game.game_speed;
     if (x + sprite_width < 0) 
	 {
        instance_destroy();
     }
}

if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))
{
	if (!did_start) 
	{
	   did_start = true;
	   obj_bird.gravity = 2;
	}
}



