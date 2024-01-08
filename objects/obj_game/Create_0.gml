depth = -9999;
gameScore = 0;
sprmedal = 0;
game_speed = 4;
did_start = false;
flash = 1;
lolyeah = false;
godfuckingdamnit = true;
ermbetter = false;
overy = -22;
bgid = layer_get_id("Backgrounds_1");

//1.2 assets for variety
event_user(0);

//create second land object
instance_create_depth(obj_land.x + obj_land.sprite_width, obj_land.y, -1, obj_land);

//pipe create stuff
pipe_gap = 150;
max_height = obj_land.y;
padding = 20;
alarm[0] = 1;

function getmedal()
{
	if (gameScore >= 40)
		sprmedal = 3;
	else if (gameScore >= 30)
		sprmedal = 2;
	else if (gameScore >= 20)
		sprmedal = 1;
	else if (gameScore >= 10)
		sprmedal = 0;
}