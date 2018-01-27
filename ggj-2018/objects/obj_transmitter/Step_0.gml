if (scaling < target_scaling)
	scaling = min(scaling+0.02,target_scaling);
		
else if (scaling > target_scaling)
	scaling = max(scaling-0.02,target_scaling);
	
if (scaling <> 1 && scaling <> 0.25)
	speed_scaling = power((scaling - 0.25)/0.75,2) * 0.75 + 0.25;
else
	speed_scaling = scaling;
	
switch (state)
{
	case transmitState.lost:
		direction += angle_delta;
		speed -= 0.05;
		image_angle += angle_delta*2;
		
		if (alarm[0] <= 15)
			image_alpha = alarm[0] / 15;
		break;
	
	case transmitState.send_toPath:
		if (point_distance(x,y,path_start_x,path_start_y) < my_speed * speed_scaling)
		{
			state = transmitState.send_onPath;
			path_start(obj_piece_pile.my_path,my_speed * speed_scaling,path_action_stop,true);
			target_scaling = 1;
		}
	
		else
			move_towards_point(path_start_x,path_start_y,my_speed * speed_scaling);

		break;
	
	case transmitState.send_toTarget:
		if (point_distance(x,y,target_x,target_y) < my_speed * speed_scaling)
		{
			state = transmitState.return_toPath;
			if (!ds_list_find_index(obj_goal.piece_list,piece_number))
			{
				var _t = instance_create_layer(target_x,target_y,"Tiles",obj_piece);
				_t.image_blend = piece_colour;
				ds_list_add(obj_goal.piece_list,piece_number);
				global.pieces_in_play--;
			}
		}
	
		else
			move_towards_point(target_x,target_y,my_speed * speed_scaling);

		break;
		
	case transmitState.return_toPath:
		if (point_distance(x,y,path_end_x,path_end_y) < my_speed * speed_scaling)
		{
			state = transmitState.return_onPath;
			path_start(obj_piece_pile.my_path,-my_speed * speed_scaling,path_action_stop,true);
			path_position = 1;
			target_scaling = 1;
		}
	
		else
			move_towards_point(path_end_x,path_end_y,my_speed * speed_scaling);

		break;

	case transmitState.return_toPile:
		move_towards_point(obj_piece_pile.x,obj_piece_pile.y,my_speed * speed_scaling);
		break;
		
	case transmitState.send_onPath:
		path_speed = my_speed * scaling;
		break;
		
	case transmitState.return_onPath:
		path_speed = -my_speed * scaling;
		break;	
	
}