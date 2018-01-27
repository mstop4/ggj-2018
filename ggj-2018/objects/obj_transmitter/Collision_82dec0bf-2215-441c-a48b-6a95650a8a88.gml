if (other.dashing && scaling == 1 && state <> transmitState.lost)
{
	if (state <= transmitState.send_toTarget)
	{
		ds_list_add(obj_piece_pile.pile_index_list, piece_number);
		global.pieces_in_play--;
	}

	obj_piece_pile.num_dead++;
	state = transmitState.lost;
	
	var _p = instance_create_layer(x+piece_x_offset,y+piece_y_offset,layer,obj_piece_effect);
	_p.image_angle = image_angle;
	_p.image_blend = piece_colour;
	_p.direction = direction;
	_p.speed = my_speed;
	
	angle_delta = choose(-5,5);
	direction = point_direction(other.x,other.y,x,y);
	speed = my_speed;
	path_end()
	alarm[0] = 60;
	target_scaling = 0.25;
}