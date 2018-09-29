/// scr_get_input

axis = .45;
up_key = keyboard_check(ord('W')) or (gamepad_axis_value(global.controller, gp_axislv) < (-1 * axis));
left_key = keyboard_check(ord('A')) or (gamepad_axis_value(global.controller, gp_axislh) < (-1 * axis));
down_key = keyboard_check(ord('S')) or (gamepad_axis_value(global.controller, gp_axislv) > axis);
right_key = keyboard_check(ord('D')) or (gamepad_axis_value(global.controller, gp_axislh) > axis);
shift_key = keyboard_check_pressed(vk_shift);
enter_key = keyboard_check_pressed(vk_enter);
arrow_up_key = keyboard_check_pressed(vk_up);
arrow_down_key = keyboard_check_pressed(vk_down);

