if(up_key == 1)
{
    if(obj_combatplayer.sprite_index == spr_player_upsprint)
    {
        obj_combat.timer = 0;
        obj_combat.truetimer = 0;
        obj_combatplayer.turn = 0;
        obj_combat.nomorecircs = 1;
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
        instance_destroy();
    }
    else
    {
        obj_combatplayer.sprite_index = spr_player_leftsprint;
    }
}
if(shift_key == 1 && (obj_combatplayer.stanima + obj_combatplayer.stanimacost - 1) <= 23)
{
    if(obj_combatplayer.sprite_index == spr_player_upsprint)
    {
        obj_combat.timer = 0;
        obj_combat.truetimer = 0;
        obj_combatplayer.turn = 0;
        obj_combatplayer.rollup = 15;
        obj_combatplayer.image_speed = .24 * obj_combatplayer.rollspeed;
        obj_combatplayer.image_index = 0;
        obj_combatplayer.sprite_index = spr_player_uproll;
        obj_combatplayer.a = 1;
        obj_combatplayer.stanima += obj_combatplayer.stanimacost;
        instance_destroy();
    }
    else if(obj_combatplayer.sprite_index == spr_player_downsprint)
    {
        obj_combat.timer = 0;
        obj_combat.truetimer = 0;
        obj_combatplayer.turn = 0;
        obj_combatplayer.rollback = 15;
        obj_combatplayer.image_speed = .24 * obj_combatplayer.rollspeed;
        obj_combatplayer.image_index = 0;
        obj_combatplayer.sprite_index = spr_player_rolldown;
        obj_combatplayer.a = 1;
        obj_combatplayer.stanima += obj_combatplayer.stanimacost;
        instance_destroy();
    }
    else if(obj_combatplayer.sprite_index == spr_player_rightsprint)
    {
        obj_combat.timer = 0;
        obj_combat.truetimer = 0;
        obj_combatplayer.turn = 0;
        obj_combatplayer.rollright = 15;
        obj_combatplayer.image_speed = .24 * obj_combatplayer.rollspeed;
        obj_combatplayer.image_index = 0;
        obj_combatplayer.sprite_index = spr_player_rightroll;
        obj_combatplayer.a = 1;
        obj_combatplayer.stanima += obj_combatplayer.stanimacost;
        instance_destroy();
    }
    else if(obj_combatplayer.sprite_index == spr_player_leftsprint)
    {
        obj_combat.timer = 0;
        obj_combat.truetimer = 0;
        obj_combatplayer.turn = 0;
        obj_combatplayer.rollleft = 15;
        obj_combatplayer.image_speed = .24 * obj_combatplayer.rollspeed;
        obj_combatplayer.image_index = 0;
        obj_combatplayer.sprite_index = spr_player_leftroll;
        obj_combatplayer.a = 1;
        obj_combatplayer.stanima += obj_combatplayer.stanimacost;
        instance_destroy();
    } 
    obj_combat.nomorecircs = 1;
}
