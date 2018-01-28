if (!paused)
{
	old_alarm[0] = alarm[0];
	old_alarm[1] = alarm[1];
	old_speed = speed;
	old_image_speed = image_speed;

	paused = true;
	alarm[0] = -1;
	alarm[1] = -1;
	speed = 0;
	image_speed = 0;
}