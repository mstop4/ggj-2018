/// @desc Emit a transmitter

if (num_pieces > 0 && num_transmitters > 0)
{
	var _t = instance_create_layer(x,y,layer,obj_transmitter);
	var _piece_number = pile_list[| 0]
	ds_list_delete(pile_list, 0);
	num_pieces = ds_list_size(pile_list);
	var _col = _piece_number mod num_cols;
	var _row = _piece_number div num_cols;
	
	with (_t)
	{
		piece_colour = _piece_number;
		piece_number = _piece_number;
		target_x = obj_goal.x - (other.num_cols / 2 * 16) + _col * 16 + 8;
		target_y = obj_goal.y - (other.num_rows / 2 * 16) + _row * 16 + 8;
		var _num_points = path_get_number(other.my_path);
		path_end_x = path_get_point_x(other.my_path,_num_points-1);
		path_end_y = path_get_point_y(other.my_path,_num_points-1);
		
		path_start(other.my_path,2,path_action_stop,true);
	}
	
	num_transmitters--;
}
	
alarm[0] = 60;