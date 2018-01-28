if (!paused)
{
	old_alarm[0] = alarm[0];
	old_speed = speed;

	paused = true;
	alarm[0] = -1;
	speed = 0;
}