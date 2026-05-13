instance_destroy(self);

with(other){
	instance_destroy();
	instance_destroy(obj_blockage1);
	instance_destroy(obj_blockage2);
	
	if(sprite_index == spr_archer){
		global.player_score += 1;
	}
}
