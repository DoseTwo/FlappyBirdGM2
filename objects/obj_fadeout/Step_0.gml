if (fade != 1)
	fade += 0.05;
else if (fade == 1 && room == rm_title)
	room_goto(rm_game);
else
	room_restart();