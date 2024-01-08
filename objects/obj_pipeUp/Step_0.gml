var player;
// check for collision with player
player = collision_rectangle(x, y, x + sprite_width, room_height, obj_bird, true, true)

if (player) 
{
	player.dead = true
}

