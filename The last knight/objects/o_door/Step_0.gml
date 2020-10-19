if (distance_to_object(o_player) < 5 ) && (keyboard_check_released(ord("E"))){
	sprite_index = s_door_open;
}

if (sprite_index != s_door_open){
	instance_create_layer(o_door.x - 16, o_door.y - 32,"collision", o_collision);
	instance_create_layer(o_door.x, o_door.y - 32,"collision", o_collision);
}

