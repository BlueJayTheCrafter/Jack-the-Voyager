if not hurt{
	hurt = true;
	audio_play_sound(snd_die, 0, false);
	alarm[0] = room_speed * 1;
	global.player_lives -= 1;
}
x = xstart;
room_restart();
