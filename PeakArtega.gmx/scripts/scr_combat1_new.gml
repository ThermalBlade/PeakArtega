depth = -y;

if(startmoving != 20)
{
    startmoving += 1;
}
else if(startmoving == 19)
{
    script_execute(cre);
}
else
{
    if(launchback != 0)
    {
        go = 1;
        a = 1;
        rollback = 0;
        rollup = 0;
        rollbackright = 0;
        rollbackleft = 0;
        rollupright = 0;
        rollupleft = 0;
        rollright = 0;
        rollleft = 0;
        sprite_index = spr_player_upsprint;
        image_index = 0;
        image_speed = 0;
        if(launchback > 15)
        {
            phy_position_y += 4;
        }
        else if(launchback > 10)
        {
            phy_position_y += 3;
        }
        else if(launchback > 5)
        {
            phy_position_y += 2;
        }
        else if(launchback == 1)
        {
            go = 0;
            a = 0;
        }
        else
        {
            phy_position_y += 1;
        }
        launchback -= 1;
    }
    else if(launchup != 0)
    {
        go = 1;
        a = 1;
        rollback = 0;
        rollup = 0;
        rollbackright = 0;
        rollbackleft = 0;
        rollupright = 0;
        rollupleft = 0;
        rollright = 0;
        rollleft = 0;
        sprite_index = spr_player_downsprint;
        image_index = 0;
        image_speed = 0;
        if(launchup > 15)
        {
            phy_position_y -= 4;
        }
        else if(launchup > 10)
        {
            phy_position_y -= 3;
        }
        else if(launchup > 5)
        {
            phy_position_y -= 2;
        }
        else if(launchup == 1)
        {
            go = 0;
            a = 0;
        }
        else
        {
            phy_position_y -= 1;
        }
        launchup -= 1;
    }
    else if(launchright != 0)
    {
        go = 1;
        a = 1;
        rollback = 0;
        rollup = 0;
        rollbackright = 0;
        rollbackleft = 0;
        rollupright = 0;
        rollupleft = 0;
        rollright = 0;
        rollleft = 0;
        sprite_index = spr_player_leftsprint;
        image_index = 0;
        image_speed = 0;
        if(launchright > 15)
        {
            phy_position_x += 4;
        }
        else if(launchright > 10)
        {
            phy_position_x += 3;
        }
        else if(launchright > 5)
        {
            phy_position_x += 2;
        }
        else if(launchright == 1)
        {
            go = 0;
            a = 0;
        }
        else
        {
            phy_position_x += 1;
        }
        launchright -= 1;
    }
    else if(launchleft != 0)
    {
        go = 1;
        a = 1;
        rollback = 0;
        rollup = 0;
        rollbackright = 0;
        rollbackleft = 0;
        rollupright = 0;
        rollupleft = 0;
        rollright = 0;
        rollleft = 0;
        sprite_index = spr_player_rightsprint;
        image_index = 0;
        image_speed = 0;
        if(launchleft > 15)
        {
            phy_position_x -= 4;
        }
        else if(launchleft > 10)
        {
            phy_position_x -= 3;
        }
        else if(launchleft > 5)
        {
            phy_position_x -= 2;
        }
        else if(launchleft == 1)
        {
            go = 0;
            a = 0;
        }
        else
        {
            phy_position_x -= 1;
        }
        launchleft -= 1;
    }
    else if(rollback != 0)
    {
        phy_position_y += 2 * rollspeed;
        rollback -= 1;
        if(rollback == 1)
        {
            sprite_index = spr_player_downsprint;
            a = 0;
            rollback = 0;
        }
    }
    else if(rollbackright != 0)
    {
        phy_position_y += 1.41 * rollspeed;
        phy_position_x += 1.41 * rollspeed;
        rollbackright -= 1;
        if(rollbackright == 1)
        {
            sprite_index = spr_player_downsprint;
            a = 0;
            rollbackright = 0;
        }
    }
    else if(rollbackleft != 0)
    {
        phy_position_y += 1.41 * rollspeed;
        phy_position_x -= 1.41 * rollspeed;
        rollbackleft -= 1;
        if(rollbackleft == 1)
        {
            sprite_index = spr_player_downsprint;
            a = 0;
            rollbackleft = 0;
        }
    }
    else if(rollup != 0)
    {
        phy_position_y -= 2 * rollspeed;
        rollup -= 1;
        if(rollup == 1)
        {
            sprite_index = spr_player_upsprint;
            a = 0;
            rollup = 0;
        }
    }
    else if(rollupright != 0)
    {
        phy_position_y -= 1.41 * rollspeed;
        phy_position_x -= 1.41 * rollspeed;
        rollupright -= 1;
        if(rollupright == 1)
        {
            sprite_index = spr_player_upsprint;
            a = 0;
            rollupright = 0;
        }
    }
    else if(rollupleft != 0)
    {
        phy_position_y -= 1.41 * rollspeed;
        phy_position_x += 1.41 * rollspeed;
        rollupleft -= 1;
        if(rollupleft == 1)
        {
            sprite_index = spr_player_upsprint;
            a = 0;
            rollupleft = 0;
        }
    }
    else if(rollright != 0)
    {
        phy_position_x += 2 * rollspeed;
        rollright -= 1;
        if(rollright == 1)
        {
            sprite_index = spr_player_rightsprint;
            a = 0;
            rollright = 0;
        }
    }
    else if(rollleft != 0)
    {
        phy_position_x -= 2 * rollspeed;
        rollleft -= 1;
        if(rollleft == 1)
        {
            sprite_index = spr_player_leftsprint;
            a = 0;
            rollleft = 0;
        }
    }
    else if(a == 0)
    {
        script_execute(state);
    }
    
 
    if(stanima > 0)
    {
        stanima -= stanimaspeed;
    }
    if(stanima < 0)
    {
        stanima = 0;
    }
    if(stanima >= 23)
    {
        stanima = 23;
    }
}
