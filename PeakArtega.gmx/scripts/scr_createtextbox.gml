// Keep Track of Starting Line
start = ds_list_create();
ds_list_add(start, 0);
str = "";
space = 64;
mpos = 0;
finishline = 0;
diadon = 6;
choiceamt = 0;
invis = 0;
anim = 0;
personobject = 0;
thought = 0;
beat = 0;
randomize();
with(obj_player)
{
    image_speed = 0;
}

// Keep Track of Last Space and Current Position
count = 0;
messageplace = 0;
last_space = 0;
line = 0;
message = 0;
i = 0;
person = 0;
stri = "";
emotion = 0;
name = 0;
dot = 0;   
global.move = 1;
global.choice = 0;
tal = 0;
pal = 0;
cal = 0;
ran = 0;
holder = 0;
event_user(0);
