if(obj_combatplayer.numberofattacks == 2)
{
    if(m == 0 && slicecolor == 1)
    {
        draw_set_color(c_gray);
        if(mpos == m)
        {
            mpos += skip;
        }
    }
    else
    {
        draw_set_color(c_white);
    }
    if(m == 1 && stabcolor == 1)
    {
        draw_set_color(c_gray);
        if(mpos == m)
        {
            mpos += skip;
        }
    }
    else
    {
        draw_set_color(c_white);
    }
}
