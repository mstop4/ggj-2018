/// @desc Emit a transmitter

var _length = ds_list_size(piece_list);

if (_length > 0)
{
	if (piece_index >= _length)
	{
		piece_index = 0;
	}
	
	var _t = instance_create_layer(x,y,layer,obj_transmitter);
	var _piece_number = piece_list[| piece_index];
	var _col = _piece_number mod num_cols;
	var _row = _piece_number div num_cols;
	
	_t.piece_colour = _piece_number;
	_t.piece_number = _piece_number;
	_t.target_x = obj_goal.x - (num_cols / 2 * 16) + _col * 16 + 8;
	_t.target_y = obj_goal.y - (num_rows / 2 * 16) + _row * 16 + 8; 
	
	piece_index++;
	
	alarm[0] = 60;
}