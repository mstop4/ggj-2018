if (!dashing && other.dashing && can_ouch)
{
	var _dir = point_direction(other.x,other.y,x,y);
	x_speed = lengthdir_x(6,_dir);
	y_speed = lengthdir_y(6,_dir);
	alarm[1] = 30;
	locked_input = true;
	can_ouch = false;
	temp_pause(7);
	var _w = instance_create_layer((x+other.x)/2,(y+other.y)/2,layer,obj_whomp);
	_w.alarm[0] = 7;
}