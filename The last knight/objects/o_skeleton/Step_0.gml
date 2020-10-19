image_speed = 0;

var dir_ = point_direction(x, y, o_player.x, o_player.y);
if (distance_to_object(o_player) <= 64 && distance_to_object(o_player) > 5){
	
	hspeed_ = lengthdir_x(spd, dir_);
	vspeed_ = lengthdir_y(spd, dir_);


	if (place_meeting(x + hspeed_, y, o_collision)){
		while (!place_meeting(x + sign(hspeed_), y, o_collision)){
			x += sign(hspeed_);
		}
		hspeed_ = 0;
	}

	x += hspeed_;

	if (hspeed_ < 0){
		sprite_index = s_skeleton_left;
		image_speed = 1;
		dir = 0;
	} else if (hspeed_ > 0){
		sprite_index = s_skeleton_right;
		image_speed = 1;
	} else if(hspeed_ = 0){
		image_index = 0;
		dir = 180;
	}

	if (place_meeting(x, y + vspeed_, o_collision)){
		while (!place_meeting(x, y + sign(vspeed_), o_collision)){
			y += sign(vspeed_);
		}
		vspeed_ = 0;
	}

	y += vspeed_;
}





/*
if (!place_meeting(x, y, o_collision) && instance_exists(o_player)){
	if (distance_to_object(o_player) < 64){
		if (o_player.x > o_skeleton.x){
			move_towards_point(o_player.x, o_player.y, spd);
			sprite_index = s_skeleton_right;
			image_speed = 1;
		} else if (o_player.x < o_skeleton.x){
			move_towards_point(o_player.x, o_player.y, spd);
			sprite_index = s_skeleton_left;
			image_speed = 1;
		}
	} 
	if (distance_to_object(o_player) > 64){
		move_towards_point(o_player.x, o_player.y, starting_spd);
		image_speed = 0;
		image_index = 0;
	}
	
	if (distance_to_object(o_player) <= 5){
		move_towards_point(o_player.x, o_player.y, starting_spd);
		image_speed = 0;
		image_index = 0;
		global.skeleton_attack = true;
	}
}*/


/*global.skeleton_attack = false;
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
			}
		}
	}
} else if (o_player.x < o_skeleton){
	move_towards_point(o_player.x, o_player.y, starting_spd)
}*/



