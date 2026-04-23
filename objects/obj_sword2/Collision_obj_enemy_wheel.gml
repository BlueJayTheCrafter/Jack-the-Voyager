instance_destroy(self);

with(other){
	instance_destroy();
	instance_destroy(obj_blockage);
	
	if(sprite_index == spr_enemy_wheel){
		score += 1;
		instance_destroy(obj_cobblestone);
	}
}

