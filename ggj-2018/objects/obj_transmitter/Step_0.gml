switch (state)
{
	case transmitState.send_toTarget:
		if (point_distance(x,y,target_x,target_y) < 2)
		{
			state = transmitState.return_toPath;
			if (!ds_list_find_index(obj_goal.piece_list,piece_number))
			{
				instance_create_layer(target_x,target_y,"Tiles",obj_piece);
				ds_list_add(obj_goal.piece_list,piece_number);
			}
		}
	
		else
		{
			move_towards_point(target_x,target_y,2);
		}
		break;
		
	case transmitState.return_toPath:
		if (point_distance(x,y,path_end_x,path_end_y) < 2)
		{
			state = transmitState.return_onPath;
			path_start(obj_piece_pile.my_path,-2,path_action_stop,true);
			path_position = 1;
		}
	
		else
		{
			move_towards_point(path_end_x,path_end_y,2);
		}
		break;

	case transmitState.return_toPile:
		move_towards_point(obj_piece_pile.x,obj_piece_pile.y,2);
		break;
}