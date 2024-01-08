if (swaying)
{
	if (ysway == 8)
		swaying = false;
	else
		ysway += 0.5;
}
else
{
	if (ysway == -4)
		swaying = true;
	else
		ysway -= 0.5;
}

y = starty + ysway