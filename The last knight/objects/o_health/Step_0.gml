

if (global.playerHP == 6){
	sprite_index = s_full_health;
} else if (global.playerHP == 5){
	sprite_index = s_five_sixth_health;
} else if (global.playerHP == 4){
	sprite_index = s_two_thirds_health;
} else if (global.playerHP == 3){
	sprite_index = s_half_health;
} else if (global.playerHP == 2){
	sprite_index = s_one_third_health;
} else if (global.playerHP == 1){
	sprite_index = s_one_sixth_health;
} else if (global.playerHP <= 0){
	sprite_index = s_no_health;
	instance_destroy(o_player);
	game_restart();
} 