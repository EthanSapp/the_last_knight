// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.skeleton_attack = false;

globalvar attackCounter;

globalvar attackDelay;

attackCounter = 0;

attackDelay = 0;



attackCounter += 0.5; 
if (attackCounter == (room_speed*attackDelay)){
		if (o_player.x > o_skeleton.x){
	instance_create_layer(x + 6, y - 8, "sword_layer", o_dagger_right);
	instance_destroy(o_dagger_left);
		
	} else  if (o_player.x < o_skeleton.x){
			instance_create_layer(x - 6, y - 8, "sword_layer", o_dagger_left);
			instance_destroy(o_dagger_right);
	}
} else {
		instance_destroy(o_dagger_left);
		instance_destroy(o_dagger_right);
}
