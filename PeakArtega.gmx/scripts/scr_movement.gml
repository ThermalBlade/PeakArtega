/// scr_move_state

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


// Get H and V Speed
hspd = xaxis;
vspd = yaxis;


// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control Sprite
image_speed = img;
if(hspd == 0 && vspd == 0) 
{
    image_index = 0;
    global.imagestate = 0;
}

// Check Sprint
spd = 1;
img = .1;
global.imagestate += .1;

// Horizontal Sprites
if(hspd > 0)
{
    sprite_index = spr_player_rightsprint;
    global.image = spr_player_rightsprint;
    if(hincline == 1)
    {
        sprite_index = spr_player_right;
        global.image = spr_player_right;
    }
}
else if(hspd < 0)
{
    sprite_index = spr_player_leftsprint;
    global.image = spr_player_leftsprint;
    if(hincline == 1)
    {
        sprite_index = spr_player_left;
        global.image = spr_player_left;
    }
}

// Vertical Sprites
if(vspd > 0)
{
    sprite_index = spr_player_downsprint;
    global.image = spr_player_downsprint;
    if(vincline == 1)
    {
        sprite_index = spr_player_down;
        global.image = spr_player_down;
    }
}
else if(vspd < 0)
{
    sprite_index = spr_player_upsprint;
    global.image = spr_player_upsprint;
    if(vincline == 1)
    {
        sprite_index = spr_player_up;
        global.image = spr_player_up;
    }
}


