/// Draw the string and the box

scr_get_menuinput();

if(escape_key || cescape_key)
{
    i = 0;
    event_user(0);
}

    if(enter_key || center_key)
    {
        audio_play_sound(snd_menuclack, 11, false);
        i ++;
        count = 0;
        scr_choicecheck();
        event_user(0);
        mpos = 0;
    }
    
    display_set_gui_size(1920, 1080);    
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    draw_set_alpha(.7);
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
    var v = (array_length_1d(choice)*70);
    draw_set_alpha(1);
    draw_sprite_stretched(spr_choiceback, 0, ex + 2, ey + 555 - 6, t + 114, v + 12);
    draw_sprite_stretched(spr_menu, 0, ex + 8, ey + 555, t + 102, v);
    
    draw_set_alpha(.7);
    draw_set_color(c_white);
    
    var m;
    for(m = array_length_1d(choice) - 1; m > -1; m -= 1)
    {
        draw_set_font(fnt_dialouge);
        draw_text(ex + 64 , ey + 630 +(m * space), string(choice[m]));
        if(mpos == m)
        {
            draw_set_alpha(1);
            draw_text(ex + 64 , ey + 630 +(m * space), string(choice[m]));
            draw_set_alpha(.7);
        }
    }
    if(diadon < 6)
    {
        diadon += .25;
    }
    draw_sprite_stretched(spr_choicedone, diadon, ex + 24, ey + 572 + mpos * space, 48, 48);
    var move = 0;
    move -= max(arrow_up_key, up_key, cup_key, 0);
    move += max(arrow_down_key, down_key, cdown_key, 0);
    if(move != 0)
    {
        audio_play_sound(snd_menuclick, 10, false);
        mpos += move;
        if(mpos < 0){mpos = array_length_1d(choice) - 1;}
        if(mpos > array_length_1d(choice) - 1){mpos = 0;}
        diadon = 0;
    }
    draw_set_alpha(1);

