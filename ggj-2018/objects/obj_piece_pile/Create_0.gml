num_pieces = num_cols * num_rows;
piece_list = ds_list_create();
piece_index = 0;

for (var i=0; i<num_pieces; i++)
{
	ds_list_add(piece_list,i);
}

ds_list_shuffle(piece_list);

alarm[0] = 60;