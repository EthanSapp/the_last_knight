sprite_index = s_door_closed;

if (sprite_index = s_door_closed){
	instance_create_layer(o_door.x - 16, o_door.y - 32,"collision", o_collision);
	instance_create_layer(o_door.x, o_door.y - 32,"collision", o_collision);
}