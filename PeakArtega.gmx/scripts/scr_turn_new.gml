if(up_key == 1)
{
    if(obj_combatplayer.sprite_index == spr_player_upsprint)
    {
        obj_combat.timer = 0;
        obj_combat.truetimer = 0;
        obj_combatplayer.turn = 0;
        obj_combat.nomorecircs = 1;
        instance_create(0, 0, obj_tut1check);
        instance_destroy();
    }
    else
    {
        obj_combatplayer.sprite_index = spr_player_upsprint;
    }
}
else if(down_key == 1)
{
    if(obj_combatplayer.sprite_index == spr_player_downsprint)
    {
        obj_combat.timer = 0;
        obj_combat.truetimer = 0;
        obj_combatplayer.turn = 0;
        obj_combat.nomorecircs = 1;
        instance_create(0, 0, obj_tut1check);
        instance_destroy();
    }
    else
    {
        obj_combatplayer.sprite_index = spr_player_downsprint;
    }
}
else if(right_key == 1)
{
    if(obj_combatplayer.sprite_index == spr_player_rightsprint)
    {
        obj_combat.timer = 0;
        obj_combat.truetimer = 0;
        obj_combatplayer.turn = 0;
        obj_combat.nomorecircs = 1;
        instance_create(0, 0, obj_tut1check);
        instance_destroy();
    }
    else
    {
        obj_combatplayer.sprite_index = spr_player_rightsprint;
    }
}
else if(left_key == 1)
{
    if(obj_combatplayer.sprite_index == spr_player_leftsprint)
    {
        obj_combat.timer = 0;
        obj_combat.truetimer = 0;
        obj_combatplayer.turn = 0;
        obj_combat.nomorecircs = 1;
        instance_create(0, 0, obj_tut1check);
        instance_destroy();
    }
    else
    {
        obj_combatplayer.sprite_index = spr_player_leftsprint;
    }
}

