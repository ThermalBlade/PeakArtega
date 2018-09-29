/// Draw the string and the box
display_set_gui_size(1920, 1080);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Set color to white
draw_set_color(c_white);

// Are we past the width? Insert line break.
// This has to be before getting the last_space variable or it won't work.
if(string_width(str) > 1600)
{
    //Remove the space and replace it with a line break.
    message = string_delete(message, last_space, 1);
    message = string_insert("#", message, last_space);
    ds_list_add(start, last_space + 1);
}

// Make Sure we have not reached the end of the message
if(count < string_length(message))
{
    // Are we at a space? Set the last space variable.
    if(string_char_at(message, count) == " ")
    {
        last_space = count;
    }
    count += 2;
}
else if(count >= string_length(message))
{
    draw_sprite_stretched(spr_diadone, dot, 1800, 900, 80, 80);
    dot += .2;
    if(dot == 7)
    {
        dot = 0;
    }
    if(keyboard_check_pressed(vk_enter))
    {
        i ++;
        count = 0;
        event_user(0);
    }
}

// Grab string
str = string_copy(message, ds_list_find_value(start, line), count-ds_list_find_value(start, line))

// Draw Text
draw_set_font(fnt_dialouge);
draw_text(100, 350, str);
