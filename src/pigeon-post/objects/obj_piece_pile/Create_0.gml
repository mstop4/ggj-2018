num_cols = sprite_get_width(my_image);
num_rows = sprite_get_height(my_image);
num_pieces = num_cols * num_rows;
num_dead = 0;
pile_index_list = ds_list_create();
pile_colour_list = ds_list_create();

var _temp_surf = surface_create(num_cols,num_rows);

surface_set_target(_temp_surf);
	draw_sprite(my_image,0,0,0);
surface_reset_target();

for (var i=0; i<num_pieces; i++)
{
	ds_list_add(pile_index_list,i);
	
	var _col = surface_getpixel(_temp_surf, i mod num_cols, i div num_cols);
	ds_list_add(pile_colour_list,_col);
}

ds_list_shuffle(pile_index_list);

for (var i=0; i<num_transmitters; i++)
{
	transmitter[i] = instance_create_layer(x,y,layer,obj_transmitter_waiting);
}

surface_free(_temp_surf);
global.pieces_in_play = 0;
alarm[0] = 30;

my_image = choose(spr_quack,spr_toutatis,spr_snackoil,spr_bunny);

paused = false;