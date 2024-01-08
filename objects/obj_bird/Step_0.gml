if (!dead) 
	tvspeed = vspeed;

if (tvspeed > 0)// falling down 
{ 
   target_angle = max(-tvspeed*4, -90)
} 
else // falling up
{ 
  target_angle = -tvspeed
}

image_angle += (target_angle - image_angle) / 4;

// check for collision with ground
if (place_meeting(x, y + vspeed, obj_land)) 
{
   vspeed = 0
   dead = true
   gravity = 0
   // move to meet the ground (pixel perfect)
   while (!place_meeting(x, y+1, obj_land)) y +=1;
}

// check for pipes to increase score
var pipe;
pipe = collision_line(x - sprite_get_width(spr_pipeup), y, x - sprite_get_width(spr_pipeup), room_height, obj_pipeUp, true, true)
if (pipe) 
{
   if (!pipe.did_score) 
   {
      pipe.did_score = true;
      obj_game.gameScore += 1;
	  audio_play_sound(sfx_point, 2, false);
   }
}

if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))
{
	if (y > 0 && !dead) 
	{
	   vspeed = -18;
	   image_speed = 1;
	   audio_play_sound(sfx_flap, 0, false);
	}
}




