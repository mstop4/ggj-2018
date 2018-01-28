if (other.dashing && !is_dead)
{
	direction = point_direction(other.x,other.y,x,y);
	angle_delta = choose(-5,5);
	speed = 6;
	is_dead = true;
	alarm[0] = 60;
	dashing = false;
	temp_pause(5);
	var _w = instance_create_layer((x+other.x)/2,(y+other.y)/2,layer,obj_whomp);
	_w.alarm[0] = 5;
}