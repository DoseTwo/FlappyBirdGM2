//i cannot be bother to make a million scripts so FUCK YOU GAMEMAKER ONE SCRIPT!
function getassets()
{
	global.pipesprite = choose(0, 1);
	global.birdsprite = choose(0, 1, 2);
	global.oops = true;
}

function approach(_start, _end, _shift)
{
	if (_start < _end) 
		return min(_start + _shift, _end);
	else 
		return max(_start - _shift, _end);
}

function savehighscore()
{
	ini_open("score.ini");
	var temp = ini_read_real("Score", "score", 0);
	if (gameScore > temp)
	{
		ini_write_real("Score", "score", gameScore);
		global.highscore = gameScore;
		ini_close();
		return true;
	}
	ini_close();
	return false;
}