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
    
    if(dir == 0)
    {
        instance_create(obj_combatplayer.x + 8, obj_combatplayer.y - 14, obj_upstab);
    }
    else if(dir == 1)
    {
        instance_create(obj_combatplayer.x, obj_combatplayer.y + 12, obj_downstab);
    }
    else if(dir == 2)
    {
        instance_create(obj_combatplayer.x + 14, obj_combatplayer.y, obj_rightstab);
    }
    else if(dir == 3)
    {
        instance_create(obj_combatplayer.x - 14, obj_combatplayer.y, obj_leftstab);
    }
    obj_combatplayer.stanima += obj_combatplayer.stabstan;
}
