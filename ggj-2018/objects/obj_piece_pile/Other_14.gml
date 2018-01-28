if (!paused)
{
	old_alarm[0] = alarm[0];
	old_alarm[1] = alarm[1];

	paused = true;
	alarm[0] = -1;
	alarm[1] = -1;
}