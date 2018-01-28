if (other.dashing && !is_dead && can_ouch)
{
	direction = point_direction(other.x,other.y,x,y);
	my_hp--;
	dashing = false;
	charge = false;
	alarm[1] = -1;
	alarm[2] = -1;
	alarm[3] = -1;
	alarm[4] = -1;
	var _w = instance_create_layer((x+other.x)/2,(y+other.y)/2,layer,obj_whomp);
	can_ouch = false;
			
	if (my_hp <= 0)
	{
		angle_delta = choose(-5,5);

		is_dead = true;
		alarm[0] = 60;
		alarm[5] = -1;
		friction = 0;
		speed = 6;
		temp_pause(10);
		_w.alarm[0] = 10;
	}
	
	else
	{
		alarm[0] = -1;
		alarm[5] = 30;
		speed = 8;
		temp_pause(7);
		_w.alarm[0] = 7;
	}
}