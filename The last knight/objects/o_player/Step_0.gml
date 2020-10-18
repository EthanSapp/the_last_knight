image_speed = 0;


if (keyboard_check(ord("D")) && !place_meeting(x + 2, y , o_collision)) {
	x += 2;
	sprite_index = s_player_right;
	image_speed = 1;
	global.dir = 0;
}

if (keyboard_check(ord("A")) && !place_meeting(x - 2, y , o_collision)) {
	x -= 2;
	sprite_index = s_player_left;
	image_speed = 1;
	global.dir = 180;
} 

if (keyboard_check(ord("W")) && !place_meeting(x , y - 2, o_collision)) {
	y -= 2;
	image_speed = 1;
	if(global.dir == 0){
		global.dir = 0;
	} else if (global.dir = 180){
		global.dir = 180;
	}
} 

if (keyboard_check(ord("S")) && !place_meeting(x , y + 2, o_collision)) {
	y += 2;
	image_speed = 1;
	if(global.dir == 0){
		global.dir = 0;
	} else if (global.dir = 180){
		global.dir = 180;
	}
} 


/*if (global.playerHP <= 0){
	instance_destroy();
	room_goto(R_death);
}*/

x = clamp (x , 15, room_width - 15);
y = clamp(y, 40, room_height - 40);

if (keyboard_check_pressed(ord("J"))){
	if (global.dir == 0){
		instance_create_layer(x + 8, y - 10, "sword_layer", o_sword_right);
	} else if (global.dir == 180){
		instance_create_layer(x - 8, y - 10, "sword_layer", o_sword_left);
	}
} else {
	//instance_destroy(o_sword_left);
	//instance_destroy(o_sword_right);
}


//if (global.playerHP == 6){
//	instance_create_layer(global.cx, global.cy, "player_health", o_health	);
//}
