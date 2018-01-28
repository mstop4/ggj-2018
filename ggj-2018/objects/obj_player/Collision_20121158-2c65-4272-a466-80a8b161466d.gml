if (!dashing && other.dashing && can_ouch && !is_dead)
{
	
	locked_input = true;
	can_ouch = false;
	var _w = instance_create_layer((x+other.x)/2,(y+other.y)/2,layer,obj_whomp);
	audio_play_sound(snd_whomp,1,false);
	show_hp = true;
	alarm[3] = 120;
	
	my_hp--;
	
	if (my_hp <= 0)
	{
		alarm[2] = 60;
		temp_pause(10);
		_w.alarm[0] = 10;
		angle_delta = 5;
		is_dead = true;
	}
	
	else
	{
		var _dir = point_direction(other.x,other.y,x,y);
		x_speed = lengthdir_x(6,_dir);
		y_speed = lengthdir_y(6,_dir);
		alarm[1] = 30;
		temp_pause(7);
		_w.alarm[0] = 7;
	}
}