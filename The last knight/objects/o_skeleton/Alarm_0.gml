instance_create_layer(x + 6, y - 8, "sword_layer", o_dagger_right);

/*
if (o_player.x > o_skeleton.x){
	instance_create_layer(x + 6, y - 8, "sword_layer", o_dagger_right);
	if (ev_animation_end){
		instance_destroy(o_dagger_left);
	}	
} else  if (o_player.x < o_skeleton.x){
	instance_create_layer(x - 6, y - 8, "sword_layer", o_dagger_left);
	if(ev_animation_end){
		instance_destroy(o_dagger_right);
	}
} else {
	instance_destroy(o_dagger_left);
	instance_destroy(o_dagger_right);
}*/