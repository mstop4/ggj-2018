var h_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += h_input * 2;
y += v_input * 2;