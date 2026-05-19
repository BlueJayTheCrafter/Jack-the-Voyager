instance_destroy(self);
audio_play_sound(snd_die, 0, false);

with(other){
	instance_destroy();
	
	if(sprite_index == spr_archer){
		global.player_score += 1;
	}
}
