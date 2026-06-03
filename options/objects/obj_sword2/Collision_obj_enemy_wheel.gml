instance_destroy(self);
audio_play_sound(snd_die, 0, false);

with(other){
	instance_destroy();
	instance_destroy(obj_blockage1);
	instance_destroy(obj_blockage2);
	
	if(sprite_index == spr_enemy_wheel){
		global.player_score += 1;
	}
}
