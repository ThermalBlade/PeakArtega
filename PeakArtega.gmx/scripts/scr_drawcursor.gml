display_set_gui_size(1920, 1080);    
ex = enemiesx[choosingenemy] * 6;
ex -= 40 * 6;
ex -= 119;
ey = enemiesy[choosingenemy] * 6;
ey -= 23 * 6;
ey -= 225;
curem += .15;
if(curem >= 8)
{
    curem = 0;
}
draw_sprite_stretched(spr_diadone, curem, ex + 24, ey + 24, 96, 96);
