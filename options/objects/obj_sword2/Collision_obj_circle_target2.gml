instance_destroy(self);
audio_play_sound(snd_die, 0, false);

with(other){
	instance_destroy();
	instance_destroy(obj_stone);
}