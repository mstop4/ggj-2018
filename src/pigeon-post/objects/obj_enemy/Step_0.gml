if (!paused)
{
	if (!is_dead)
	{
		if (!charge && can_ouch)
		{
			var _nt = instance_nearest(x,y,cls_targetable);
			
			if (_nt <> noone)
			{
				if (can_charge && point_distance(x,y,_nt.x,_nt.y) < 128)
				{
					direction = point_direction(x,y,_nt.x,_nt.y);
					can_charge = false;
					charge = true;
					alarm[1] = 20;
				}
				
				else
					move_towards_point(_nt.x,_nt.y,2);
			}
			
			else
				speed = 0;
		}
	}

	else
	{
		direction += angle_delta;
		speed -= 0.05;
		image_angle += angle_delta*2;
		scaling -= 1/60;
		
		if (alarm[0] <= 15)
			image_alpha = alarm[0] / 15;
	}
}