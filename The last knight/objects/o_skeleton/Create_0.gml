spd = 1.00;
starting_spd = 0;

globalvar dir;

global.skeleton_attack = false;

globalvar attackCounter;

globalvar attackDelay;

attackCounter = 0;

attackDelay = 0.5;

global.skeleton_attack = false;

image_index = 0;

hspeed_ = 0;
vspeed_ = 0;

attackCooldown = room_speed/10;
alarm[0] = attackCooldown;