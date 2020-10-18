image_speed = 0;

var dir_ = 0;
global.skeleton_attack = false;
if (!place_meeting(x, y, o_collision)){
	if (instance_exists(o_player)){
		if (distance_to_object(o_player) > 5){
			move_towards_point(o_player.x, o_player.y, spd);
			if (o_player.x > o_skeleton.x){
				sprite_index = s_skeleton_right
				image_speed = 1;
				dir_ = 0;
			} else if (o_player.x < o_skeleton.x){
				sprite_index = s_skeleton_left;
				image_speed = 1;
				dir_ = 180;
			}
			image_speed = 1;
			//dir_ = global.dir;
			instance_destroy(o_dagger_left);
			instance_destroy(o_dagger_right);
		}
		if (distance_to_object(o_player) < 10){
			move_towards_point(o_player.x, o_player.y, starting_spd)
			image_speed = 0;
			image_index = 0;
			global.skeleton_attack = true;
			/*if (global.skeleton_attack = true){
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
			}*/
		}
	}
} else if (place_empty(o_skeleton.x - 2, o_skeleton.y, o_skeleton)) {
	x -= 2;
	image_speed = 1;
	
	move_towards_point(o_player.x, o_player.y, starting_spd)
			image_speed = 0;
			image_index = 0;

} else if (place_empty(o_skeleton.x + 2, o_skeleton.y, o_skeleton)) {
	x += 2;
	image_speed = 1;
	
	move_towards_point(o_player.x, o_player.y, starting_spd)
			image_speed = 0;
			image_index = 0;

} else if (place_empty(o_skeleton.x , o_skeleton.y -2, o_skeleton)) {
	y -= 2;
	image_speed = 1;
	
	move_towards_point(o_player.x, o_player.y, starting_spd)
			image_speed = 0;
			image_index = 0;

} else if (place_empty(o_skeleton.x , o_skeleton.y + 2, o_skeleton)) {
	y += 2;
	image_speed = 1;
	
	move_towards_point(o_player.x, o_player.y, starting_spd)
			image_speed = 0;
			image_index = 0;

}

if (global.skeleton_attack = true){
	attackCounter += 0.5; 
	if (attackCounter == (room_speed*attackDelay)){
		if (o_player.x > o_skeleton.x){
			instance_create_layer(x + 6, y - 8, "sword_layer", o_dagger_right);
			if (ev_animation_end){
				
				instance_destroy(o_dagger_left);
			}
		
			} else  if (o_player.x < o_skeleton.x){
					instance_create_layer(x - 6, y - 8, "sword_layer", o_dagger_left);
					instance_destroy(o_dagger_right);
			}
			attackCounter = 0;
		} else {
				instance_destroy(o_dagger_left);
				instance_destroy(o_dagger_right);
		}
	
}


