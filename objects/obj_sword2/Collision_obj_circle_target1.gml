audio_play_sound(snd_die, 0, false);

if not hurt{
	hurt = true;
	alarm[0] = room_speed * 1;
	global.player_lives -= 1;
}

instance_destroy(self);