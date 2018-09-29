var a;
a = irandom_range(0, 1);
var dir = 0;
if(obj_combat.enemy1.dead == 0)
{
    if(obj_combatplayer.sprite_index == spr_player_upsprint)
    {
        dir = 0;
    }
    else if(obj_combatplayer.sprite_index == spr_player_downsprint)
    {
        dir = 1;
    }
    else if(obj_combatplayer.sprite_index == spr_player_rightsprint)
    {
        dir = 2;
    }
    else if(obj_combatplayer.sprite_index == spr_player_leftsprint)
    {
        dir = 3;
    }
    if(a == 0)
    {
        if(dir == 0)
        {
            instance_create(obj_combatplayer.x, obj_combatplayer.y - 10, obj_upleftslice);
        }
        else if(dir == 1)
        {
            instance_create(obj_combatplayer.x, obj_combatplayer.y + 10, obj_downleftslice);
        }
        else if(dir == 2)
        {
            instance_create(obj_combatplayer.x + 14, obj_combatplayer.y, obj_rightleftslice);
        }
        else if(dir == 3)
        {
            instance_create(obj_combatplayer.x - 14, obj_combatplayer.y, obj_leftleftslice);
        }
    }
    else
    {
        if(dir == 0)
        {
            instance_create(obj_combatplayer.x, obj_combatplayer.y - 10, obj_uprightslice);
        }
        else if(dir == 1)
        {
            instance_create(obj_combatplayer.x, obj_combatplayer.y + 10, obj_downrightslice);
        }
        else if(dir == 2)
        {
            instance_create(obj_combatplayer.x + 14, obj_combatplayer.y, obj_rightrightslice);
        }
        else if(dir == 3)
        {
            instance_create(obj_combatplayer.x - 14, obj_combatplayer.y, obj_leftrightslice);
        }
    }
    obj_combatplayer.stanima += obj_combatplayer.slicestan;
}
