image_angle = direction;
image_xscale = scaling;
image_yscale = scaling;

if (my_hp == 1)
	image_blend = merge_color(c_white,$8080FF,pulse(t,0,0.5));
else
	image_blend = c_white;