///@desc get_input()
// Keyboard input
left		= keyboard_check(vk_left);
right		= keyboard_check(vk_right);
up			= keyboard_check(vk_up);
down		= keyboard_check(vk_down);
attack		= keyboard_check_pressed(vk_shift);
jump		= keyboard_check_pressed(vk_space);
jump_held	= keyboard_check(vk_space);
block		= keyboard_check(ord("Z"));

// Controller input
var _dev = 0;
if (gamepad_is_connected(_dev)) {
	var _deadzone = 0.3;
	left		= gamepad_axis_value(_dev, gp_axislh) < -_deadzone or left;
	right		= gamepad_axis_value(_dev, gp_axislh) >  _deadzone or right;
	up			= gamepad_axis_value(_dev, gp_axislv) < -_deadzone or up;
	down		= gamepad_axis_value(_dev, gp_axislv) >  _deadzone or down;
	attack		= gamepad_button_check_pressed(_dev, gp_face2) or attack;
	jump		= gamepad_button_check_pressed(_dev, gp_face1) or jump;
	jump_held	= gamepad_button_check(_dev, gp_face1) or jump_held;
	block		= gamepad_button_check(_dev, gp_shoulderr) or block;
	
}
