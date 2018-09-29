// Choice
display_set_gui_size(1920, 1080);    
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
ex = 55;
ey = 820;

if(combackalpha >= .7)
{
    combackalpha = .7;
}
else
{
    combackalpha += .1;
}
draw_set_alpha(combackalpha);
draw_sprite_stretched(spr_combatback, obj_combatpause.backimage, -1, 649, 324, 432);

draw_set_alpha(.25);

scr_pausecolorcheck();
    
draw_set_color(c_white);
m = 0;
for(m = array_length_1d(choice) - 1; m > -1; m -= 1)
{
    draw_set_font(fnt_combat);
    scr_applycolorcheck();
    if(mpos < 0){mpos = array_length_1d(choice) - 1;}
    if(mpos > array_length_1d(choice) - 1){mpos = 0;}
    if(mpos == m)
    {
        draw_set_alpha(1);
        draw_set_font(fnt_combatbig);
        draw_text(ex , ey +(m * space), string(choice[m]));
        draw_set_font(fnt_combat);
        draw_set_alpha(.25);
    }
    else
    {
        draw_text(ex, ey +(m * space), string(choice[m]));
    }
}
if(diadon < 6)
{
    diadon += .25;
}
draw_set_alpha(1);
draw_sprite_stretched(spr_choiced, diadon, ex - 55, ey - 85 + mpos * space, 96, 96);
draw_set_alpha(1);
var move = 0;
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);
if(move != 0)
{
    if(move < 0)
    {
        skip = -1;
    }
    else
    {
        skip = 1;
    }
    mpos += move;
    if(mpos < 0){mpos = array_length_1d(choice) - 1;}
    if(mpos > array_length_1d(choice) - 1){mpos = 0;}
    diadon = 0;
}
draw_set_alpha(1);

