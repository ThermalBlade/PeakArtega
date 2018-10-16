/// Draw the string and the box
scr_get_menuinput();
if(ran == 0)
{
    ran = irandom_range(30, 300);
}
else if(ran == 15)
{
    holder = emotion;
    emotion = sprite_get_number(port) - 1 - holder;
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
    display_set_gui_size(1920, 1080);
    if(pal < 1){pal += .1;}
    draw_set_alpha(pal);
    draw_sprite_stretched(port, emotion, 1300, 18, 525, 700);
    if(tal < 1){tal += .1;}
    draw_set_alpha(tal);
    if(i != 0)
    {
        draw_sprite_stretched(spr_textbox, 0, 0, 652, 1912, 430);
    }
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    draw_set_font(fnt_names);
    draw_text(380, 658, name);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    if(count <= 0 && i >= 1)
    {
        st = 0;
        var j;
        for(j = 0; j < string_length(message); j ++)
        {
            if(string_width(stri) > 1400)
            {
                message = string_delete(message, last_space, 1);
                message = string_insert("#", message, last_space);
                st = last_space + 1;
                //ds_list_add(start, last_space + 1);
            }
            if(string_char_at(message, j) == " ")
            {
                last_space = j;
            }
            //stri = string_copy(message, ds_list_find_value(start, line), j - ds_list_find_value(start, line));
            stri = string_copy(message, st, j - st);
        }
        fullmessage = message;
        for(j = 0; j < string_length(message) + 100; j ++)
        {
            if(string_char_at(message, j - 1) == ".")
            {
                message = string_insert("/////////", message, j);
            }
            if(string_char_at(message, j - 1) == "!")
            {
                message = string_insert("/////////", message, j);
            }
            if(string_char_at(message, j - 1) == "?")
            {
                message = string_insert("/////////", message, j);
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
        draw_sprite_stretched(spr_diadone, dot, 1750, 945, 80, 80);
        dot += .1;
        if(dot == 7)
        {
            dot = 0;
        }
        if(enter_key || center_key)
        {
            i ++;
            audio_play_sound(snd_diaclack, 11, false);
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
    
    if(enter_key && finishline == 0 && count > 3|| center_key && finishline == 0 && count > 3)
    {
        count = string_length(message);
        finishline = 1;
    }
    
    // Grab string
    str = string_copy(message, ds_list_find_value(start, line), count-ds_list_find_value(start, line))
    
    // Draw Text
    if(thought == 0)
    {
        draw_set_font(fnt_dialouge);
    }
    else
    {
        draw_set_font(fnt_thought);
    }
    if(finishline == 0)
    {
        draw_text(90, 745, str);
    }
    else
    {
        //draw_text_ext(90, 745, messageplace, 65, 1500);
        draw_text(90, 745, fullmessage);
    }
    
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
        draw_sprite_stretched(spr_choiceback, 0, 24, 634 - v, t + 114, v + 12);
        draw_sprite_stretched(spr_choice, 0, 30, 640 - v, t + 102, v);
        
        draw_set_alpha(cal);
        draw_set_color(c_white);
        
        var m;
        for(m = 0; m < array_length_1d(choice); m += 1)
        {
            draw_set_font(fnt_dialouge);
            draw_text(80 , 630 -(m * space), string(choice[m]));
            if(mpos == m)
            {
                draw_set_alpha(1);
                draw_text(80 , 630 -(m * space), string(choice[m]));
                draw_set_alpha(cal);
            }
        }
        if(diadon < 6)
        {
            diadon += .25;
        }
        draw_sprite_stretched(spr_choicedone, diadon,  44, 572 - mpos * space, 48, 48);
        var move = 0;
        move += max(up_key, arrow_up_key, cup_key, 0);
        move -= max(down_key, arrow_down_key, cdown_key, 0);
        if(move != 0)
        {
            mpos += move;
            audio_play_sound(snd_diaclick, 10, false);
            if(mpos < 0){mpos = array_length_1d(choice) - 1;}
            if(mpos > array_length_1d(choice) - 1){mpos = 0;}
            diadon = 0;
        }
        draw_set_alpha(1);
    }
}
else
{
    display_set_gui_size(1920, 1080);
    if(pal > 0){pal -= .25;}
    draw_set_alpha(pal);
    draw_sprite_stretched(port, emotion, 1300, 18, 525, 700);
    if(tal > 0){tal -= .25;}
    draw_set_alpha(tal);
    if(i != 0)
    {
        draw_sprite_stretched(spr_textbox, 0, 0, 652, 1912, 430);
    }
    draw_set_alpha(1);
}
//scr_print(tal, 100);
