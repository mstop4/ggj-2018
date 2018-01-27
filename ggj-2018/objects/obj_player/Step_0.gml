var h_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// Friction
var _dir = point_direction(0,0,x_speed,y_speed);
var _mag_x = abs(lengthdir_x(my_fric,_dir));
var _mag_y = abs(lengthdir_y(my_fric,_dir));

var _sign_x = sign(x_speed);
var _sign_y = sign(y_speed);

x_speed = _sign_x * soft_clamp(abs(x_speed),-_mag_x,0,max_speed);
y_speed = _sign_y * soft_clamp(abs(y_speed),-_mag_y,0,max_speed);

// Accel
if (h_input > 0)
	x_speed = soft_max(x_speed,h_input,max_speed);
else if (h_input < 0)
	x_speed = soft_min(x_speed,h_input,-max_speed);	
	
if (v_input > 0)
	y_speed = soft_max(y_speed,v_input,max_speed);
else if (v_input < 0)
	y_speed = soft_min(y_speed,v_input,-max_speed);	

// Move to new position

x += x_speed;
y += y_speed;