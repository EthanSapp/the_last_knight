image_speed = 0;

var dir_ = 0;
global.skeleton_attack = false;

if (instance_exists(o_player)){
	if (distance_to_object(o_player) > 5){
		move_towards_point(o_player.x, o_player.y, spd);
		if (x > 0){
			sprite_index = s_skeleton_right;
			dir_ = 0;
		}
		if (x < 0){
			dir_ = 180;
			sprite_index = s_skeleton_left;
		}
		image_speed = 1;
		//dir_ = global.dir;
		instance_destroy(o_dagger_left);
		instance_destroy(o_dagger_right);
	}
	if (distance_to_object(o_player) < 5){
		move_towards_point(o_player.x, o_player.y, starting_spd)
		image_speed = 0;
		image_index = 0;
		global.skeleton_attack = true;
		if (global.skeleton_attack = true){
			if (dir_  == 0){
				instance_create_layer(x + 6, y - 8, "sword_layer", o_dagger_right);
			} else  if (dir_  == 180){
				instance_create_layer(x - 6, y - 8, "sword_layer", o_dagger_left);
			}
		} else {
			instance_destroy(o_dagger_left);
			instance_destroy(o_dagger_right);
		}
	}
}

