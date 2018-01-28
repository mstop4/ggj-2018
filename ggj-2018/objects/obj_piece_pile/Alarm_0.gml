/// @desc Emit a transmitter

if (num_pieces > 0 && num_transmitters > 0)
{
	var _t = instance_create_layer(x,y,"Actors",obj_transmitter);
	var _piece_number = pile_index_list[| 0];
	var _piece_colour = pile_colour_list[| _piece_number];
	ds_list_delete(pile_index_list, 0);
	var _col = _piece_number mod num_cols;
	var _row = _piece_number div num_cols;
	
	with (_t)
	{
		piece_colour = _piece_colour;
		piece_number = _piece_number;
		target_x = obj_goal.x - (other.num_cols / 2 * other.piece_width) + _col * other.piece_width + 8;
		target_y = obj_goal.y - (other.num_rows / 2 * other.piece_height) + _row * other.piece_height + 8;
		var _num_points = path_get_number(other.my_path);
		path_start_x = path_get_point_x(other.my_path,0);
		path_start_y = path_get_point_y(other.my_path,0);
		path_end_x = path_get_point_x(other.my_path,_num_points-1);
		path_end_y = path_get_point_y(other.my_path,_num_points-1);
	}
	
	global.pieces_in_play++;
	num_transmitters--;
}
	
num_pieces = ds_list_size(pile_index_list);
alarm[0] = 30;