/// scr_get_input

up_key = keyboard_check_pressed(ord('W'));
left_key = keyboard_check_pressed(ord('A'));
down_key = keyboard_check_pressed(ord('S'));
right_key = keyboard_check_pressed(ord('D'));
enter_key = keyboard_check_pressed(vk_enter);
arrow_up_key = keyboard_check_pressed(vk_up);
arrow_down_key = keyboard_check_pressed(vk_down);
arrow_right_key = keyboard_check_pressed(vk_right);
arrow_left_key = keyboard_check_pressed(vk_left);
escape_key = keyboard_check_pressed(vk_escape);
    
if(global.controller != -1)
{
    cup_key = gamepad_button_check_pressed(global.controller, gp_padu);
    cleft_key = gamepad_button_check_pressed(global.controller, gp_padl);
    cdown_key = gamepad_button_check_pressed(global.controller, gp_padd);
    cright_key = gamepad_button_check_pressed(global.controller, gp_padr);
    center_key = gamepad_button_check_pressed(global.controller, gp_face1);
    cescape_key = gamepad_button_check_pressed(global.controller, gp_start);
}
else
{
    cup_key = 0;
    cleft_key = 0;
    cdown_key = 0;
    cright_key = 0;
    center_key = 0;
    cescape_key = 0;
}

