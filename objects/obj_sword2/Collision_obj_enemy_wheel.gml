instance_destroy(self);

with(other){
	instance_destroy();
	instance_destroy(obj_blockage);
	
	if(sprite_index == spr_enemy_wheel){
		global.player_score += 1;
		instance_destroy(obj_cobblestone);
	}
}

