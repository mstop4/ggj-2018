if (state <= transmitState.send_toTarget)
{
	ds_list_add(obj_piece_pile.pile_index_list, piece_number);
}

obj_piece_pile.num_dead++;
instance_destroy();