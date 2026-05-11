if(room == rm_battle1){
	if(mouse_check_button(mb_left)) {
		audio_play_sound(snd_shoot, 1, true);
		if(shootCooldown <= 0) {
			instance_create_layer(x, y, "instances", obj_sword2);
			shootCooldown = 45;
		}
	}
}