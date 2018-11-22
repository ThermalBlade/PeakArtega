if(canMove == true) //Running
{    
    // Get Input
    scr_get_input();
    
    // Get The Axis
    var xaxis = (right_key - left_key);
    var yaxis = (down_key - up_key);
    
    if(xaxis != 0 && hspd == 0)
    {
        image_index = 1;
    }
    if(yaxis != 0 && vspd == 0)
    {
        image_index = 1;
    }
    
    // Get Direction
    var dir = point_direction(0, 0, xaxis, yaxis);
    
    // Get Length
    if (xaxis == 0 and yaxis == 0)
    {
        len = 0;   
    }
    else
    {
        len = spd * movespeed;
    }
    
    // Get H and V Speed
    hspd = lengthdir_x(len, dir);
    vspd = lengthdir_y(len, dir);
    
    // Move
    phy_position_x += hspd;
    phy_position_y += vspd;
    
    // Control Sprite
    image_speed = img * movespeed;
    if(len == 0) 
    {
        image_index = 0;
    }
    spd = 1;
    img = .1;
    
    // Horizontal Sprites
    if(hspd > 0)
    {
        sprite_index = spr_player_rightsprint;
    }
    else if(hspd < 0)
    {
        sprite_index = spr_player_leftsprint;
    }
    
    // Vertical Sprites
    if(vspd > 0)
    {
        sprite_index = spr_player_downsprint;
    }
    else if(vspd < 0)
    {
        sprite_index = spr_player_upsprint;
    }
    if(shift_key)
    {
        if(sprite_index == spr_player_upsprint){rollUp = true; if(vspd == 0){vspd = -1;}}
        else if(sprite_index == spr_player_downsprint){rollDown = true; if(vspd == 0){vspd = 1;}}
        else if(sprite_index == spr_player_rightsprint){rollRight = true; if(hspd == 0){hspd = 1;}}
        else{rollLeft = true; if(hspd == 0){hspd = -1;}}
        rolling = true;
        canMove = false;
        image_index = 0;
    }
}
if(rolling == true) //Rolling
{
    phy_position_x += hspd * rollSpeed;
    phy_position_y += vspd * rollSpeed;
    image_speed = rollImageSpeed;
    if(rollUp == true)
    {
        sprite_index = spr_player_uproll;
        if(image_index >= 2)
        {
            image_speed = 0;
            image_index = 0;
            sprite_index = spr_player_upsprint;
            rolling = false;
            canMove = true;
            rollUp = false;
        }
    }
    else if(rollDown == true)
    {
        sprite_index = spr_player_downroll;
        if(image_index >= 2)
        {
            image_speed = 0;
            image_index = 0;
            sprite_index = spr_player_downsprint;
            rolling = false;
            canMove = true;
            rollDown = false;
        }
    }
    else if(rollRight == true)
    {
        sprite_index = spr_player_rightroll;
        if(image_index >= 2)
        {
            image_speed = 0;
            image_index = 0;
            sprite_index = spr_player_rightsprint;
            rolling = false;
            canMove = true;
            rollRight = false;
        }
    }
    else if(rollLeft == true)
    {
        sprite_index = spr_player_leftroll;
        if(image_index >= 2)
        {
            image_speed = 0;
            image_index = 0;
            sprite_index = spr_player_leftsprint;
            rolling = false;
            canMove = true;
            rollLeft = false;
        }
    }
}
