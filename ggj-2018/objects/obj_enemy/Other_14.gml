for (var i=0; i<5; i++)
{
	old_alarm[i] = alarm[i];
	alarm[i] = -1;
}

old_speed = speed;
old_image_speed = image_speed;
old_friction = friction;

paused = true;
speed = 0;
image_speed = 0;
friction = 0;