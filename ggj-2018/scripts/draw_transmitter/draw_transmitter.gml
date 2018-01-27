draw_sprite_ext(sprite_index,image_index,x,y,scaling,scaling,direction,c_white,1);

if (state <= transmitState.send_toTarget)
	draw_sprite_ext(spr_big_piece,0,x+32*scaling,y-32*scaling,scaling,scaling,0,piece_colour,1);