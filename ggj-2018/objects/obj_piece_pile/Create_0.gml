num_pieces = num_cols * num_rows;
num_dead = 0;
pile_list = ds_list_create();

for (var i=0; i<num_pieces; i++)
{
	ds_list_add(pile_list,i);
}

ds_list_shuffle(pile_list);

alarm[0] = 60;