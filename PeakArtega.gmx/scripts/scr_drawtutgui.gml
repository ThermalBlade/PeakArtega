/// Draw the string and the box
if(ran == 0)
{
    ran = irandom_range(30, 600);
}
else if(ran == 15)
{
    holder = emotion;
    emotion = sprite_get_number(person) - 1 - holder;
    ran -= 1;
}
else if(ran == 1)
{
    emotion = holder;
    ran -= 1;
}
else
{
    ran -= 1;
}
if(invis == 0)
{
    global.move = 1;
    with(obj_player)
    {
        image_speed = 0;
    }
    display_set_gui_size(1920, 1080);
    if(pal != 1){pal += .1;}
    draw_set_alpha(pal);
    draw_sprite_stretched(person, emotion, 1350, -32, 422, 750);
    if(tal != 1){tal += .1;}
    draw_set_alpha(tal);
    //draw_sprite_stretched(spr_textbox, 0, 0, 650, 1912, 430);
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_black);
    
    if(count <= 0 && i >= 1)
    {
        var j;
        for(j = 0; j < string_length(message); j ++)
        {
            if(string_width(stri) > 1500)
            {
                message = string_delete(message, last_space, 1);
                message = string_insert("#", message, last_space);
                ds_list_add(start, last_space + 1);
            }
            if(string_char_at(message, j) == " ")
            {
                last_space = j;
            }
            stri = string_copy(message, ds_list_find_value(start, line), j-ds_list_find_value(start, line));
        }
        for(j = 0; j < string_length(message) + 100; j ++)
        {
            if(string_char_at(message, j - 1) == ".")
            {
                message = string_insert("////////", message, j);
            }
            if(string_char_at(message, j - 1) == ",")
            {
                message = string_insert("//////", message, j);
            }
        }
    }
    
    if(count <= string_length(message) && i >= 1)
    {
        count += .5;
        if(string_char_at(message, count) == "/")
        {
            message = string_delete(message, count, 1);
            count -= .5;
        }
    }
    else if(count >= string_length(message) && i >= 1)
    {
        draw_sprite_stretched(spr_diadone, dot, 5, 740, 80, 80);
        dot += .1;
        if(dot == 7)
        {
            dot = 0;
        }
        if(keyboard_check_pressed(vk_enter))
        {
            i ++;
            count = 0;
            scr_choicecheck();
            event_user(0);
            finishline = 0;
            mpos = 0;
        }
    }
    else
    {
        i++;
        event_user(0);
    }
    
    if(keyboard_check_pressed(vk_shift) && finishline == 0)
    {
        count = string_length(message);
        finishline = 1;
    }
    
    // Grab string
    str = string_copy(message, ds_list_find_value(start, line), count-ds_list_find_value(start, line))
    
    // Draw Text
    draw_set_font(fnt_names);
    if(finishline == 0)
    {
        draw_text(90, 745, str);
    }
    else
    {
        draw_text_ext(90, 745, messageplace, 65, 1500);
    }
    draw_set_halign(fa_center);
    draw_set_font(fnt_names);
    draw_text(380, 655, name);
    
    // Choice
    if(array_length_1d(choice) > 1 && count >= string_length(message))
    {
        draw_set_halign(fa_left);
        draw_set_valign(fa_bottom);
        
        if(cal < .7){cal += .07;}
        draw_set_alpha(cal);
        draw_set_color(c_gray);
        if(choiceamt == 4)
        {
            if(string_length(choice[3]) >= 0)
            {
                var t = max(string_width(choice[0]), string_width(choice[1]), string_width(choice[2]), string_width(choice[3]), 0);
            }
            else if(string_length(choice[2]) >= 0)
            {
                var t = max(string_width(choice[0]), string_width(choice[1]), string_width(choice[2]), 0);
            }
            else if(string_length(choice[1]) >= 0)
            {
                var t = max(string_width(choice[0]), string_width(choice[1]), 0);
            }
        }
        else if(choiceamt == 3)
        {
            if(string_length(choice[2]) >= 0)
            {
                var t = max(string_width(choice[0]), string_width(choice[1]), string_width(choice[2]), 0);
            }
            else if(string_length(choice[1]) >= 0)
            {
                var t = max(string_width(choice[0]), string_width(choice[1]), 0);
            } 
        }
        else if(choiceamt == 2)
        {
            var t = max(string_width(choice[0]), string_width(choice[1]), 0);
        }
        var v = (array_length_1d(choice)*72);   
        draw_sprite_stretched(spr_choiceback, 0, 2, 634 - v, t + 114, v + 12);
        draw_sprite_stretched(spr_choice, 0, 8, 640 - v, t + 102, v);
        
        draw_set_alpha(cal);
        draw_set_color(c_white);
        
        var m;
        for(m = 0; m < array_length_1d(choice); m += 1)
        {
            draw_set_font(fnt_dialouge);
            draw_text(64 , 630 -(m * space), string(choice[m]));
            if(mpos == m)
            {
                draw_set_alpha(1);
                draw_text(64 , 630 -(m * space), string(choice[m]));
                draw_set_alpha(cal);
            }
        }
        if(diadon < 6)
        {
            diadon += .25;
        }
        draw_sprite_stretched(spr_choicedone, diadon,  24, 572 - mpos * space, 48, 48);
        var move = 0;
        move += max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
        move -= max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);
        if(move != 0)
        {
            mpos += move;
            if(mpos < 0){mpos = array_length_1d(choice) - 1;}
            if(mpos > array_length_1d(choice) - 1){mpos = 0;}
            diadon = 0;
        }
        draw_set_alpha(1);
    }
}
