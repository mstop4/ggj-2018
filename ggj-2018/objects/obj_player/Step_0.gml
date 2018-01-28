if (!paused)
{
	// Input
	var h_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var v_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	var _input_vec_x = 0;
	var _input_vec_y = 0;

	if (!(h_input == 0 && v_input == 0))
	{
		if (!locked_input)
			facing = point_direction(0,0,h_input,v_input);
		_input_vec_x = lengthdir_x(1,facing);
		_input_vec_y = lengthdir_y(1,facing);
	}

	if (!locked_input && keyboard_check_pressed(vk_space))
	{
		locked_input = true;
		x_speed = lengthdir_x(max_speed*4,facing);
		y_speed = lengthdir_y(max_speed*4,facing);
		dashing = true;
		alarm[0] = 10;
	}

	// Friction
	var _dir = point_direction(0,0,x_speed,y_speed);
	var _mag_x = abs(lengthdir_x(my_fric,_dir));
	var _mag_y = abs(lengthdir_y(my_fric,_dir));

	if (abs(x_speed) < _mag_x)
		x_speed = 0;
	else
	{
		var _sign_x = sign(x_speed);
		x_speed = _sign_x * soft_clamp(abs(x_speed),-_mag_x,0,max_speed);
	}

	if (abs(y_speed) < _mag_y)
		y_speed = 0;
	else
	{
		var _sign_y = sign(y_speed);
		y_speed = _sign_y * soft_clamp(abs(y_speed),-_mag_y,0,max_speed);
	}

	// Accel
	if (!locked_input)
	{
		if (_input_vec_x > 0)
			x_speed = soft_max(x_speed,_input_vec_x,max_speed);
		else if (_input_vec_x < 0)
			x_speed = soft_min(x_speed,_input_vec_x,-max_speed);	
	
		if (_input_vec_y > 0)
			y_speed = soft_max(y_speed,_input_vec_y,max_speed);
		else if (_input_vec_y < 0)
			y_speed = soft_min(y_speed,_input_vec_y,-max_speed);	
	}

	// Move to new position
	x += x_speed;
	y += y_speed;
}