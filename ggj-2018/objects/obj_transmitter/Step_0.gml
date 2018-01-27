if (state == 0)
{
	
	if (point_distance(x,y,target_x,target_y) < 2)
	{
		state = 1;
		if (!ds_list_find_index(obj_goal.piece_list,piece_number))
		{
			instance_create_layer(target_x,target_y,layer,obj_piece);
			ds_list_add(obj_goal.piece_list,piece_number);
		}
		
		with (obj_piece_pile)
		{
			var _i = ds_list_find_index(piece_list,other.piece_number);
			ds_list_delete(piece_list,_i);
			num_pieces = ds_list_size(piece_list);
		}
	}
	
	else
	{
		move_towards_point(target_x,target_y,2);
	}
}

else
{
	move_towards_point(obj_piece_pile.x,obj_piece_pile.y,2);
}