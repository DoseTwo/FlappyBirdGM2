tvspeed = 0;
target_angle = 0;
dead = false;
depth = -1;
gravity = 0;
switch (global.birdsprite)
{
	case 0:
		object_set_sprite(obj_bird, spr_bird);
		break;
	case 1:
		object_set_sprite(obj_bird, spr_birdR);
		break;
	case 2:
		object_set_sprite(obj_bird, spr_birdB);
		break;
}
