if (!paused)
{
	old_alarm[0] = alarm[0];
	old_speed = speed;
	old_path_speed = path_speed;
	old_image_speed = image_speed;

	paused = true;
	alarm[0] = -1;
	speed = 0;
	path_speed = 0;
	image_speed = 0;
}