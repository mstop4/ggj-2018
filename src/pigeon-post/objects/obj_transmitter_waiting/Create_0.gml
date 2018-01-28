image_xscale = 0.25;
image_yscale = 0.25;

x = random_range(obj_piece_pile.x-75,obj_piece_pile.x+75);
y = random_range(obj_piece_pile.y-75,obj_piece_pile.y+75);

target_x = random_range(obj_piece_pile.x-75,obj_piece_pile.x+75);
target_y = random_range(obj_piece_pile.y-75,obj_piece_pile.y+75);
move_towards_point(target_x,target_y,0.5);