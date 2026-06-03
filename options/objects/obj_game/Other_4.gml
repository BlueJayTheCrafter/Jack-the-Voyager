if(room == rm_menu){
	audio_play_sound(snd_menu, 0, false);
}

if(room == rm_battle1 && rm_puzzle1){
	audio_play_sound(snd_game, 0, true);
}

if(room == rm_puzzle2 && rm_battle2){
	audio_stop_sound(snd_game);
	audio_play_sound(snd_cave, 0, true);
}
