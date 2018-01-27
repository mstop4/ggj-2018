var _nt = instance_nearest(x,y,obj_transmitter);
if (_nt <> noone)
	move_towards_point(_nt.x,_nt.y,1);
else
	speed = 0;