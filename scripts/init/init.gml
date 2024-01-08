ini_open("score.ini");
global.pipesprite = 0; //0 is green, 1 is red.
global.birdsprite = 2; //0 is yellow, 1 is red, 2 is blue.
global.highscore = ini_read_real("Score", "score", 0);
global.font = font_add_sprite(spr_scorefont, ord("0"), true, 2);
global.menufont = font_add_sprite(spr_menuscore, ord("0"), true, 2);
ini_close();