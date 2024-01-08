var player;
// check for collision with player
player = collision_rectangle(x, y + sprite_height, x + sprite_width, 0, obj_bird, true, true)

if (player) {
   player.dead = true
}