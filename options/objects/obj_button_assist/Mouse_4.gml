// Inherit the parent event
event_inherited();

audio_play_sound(snd_button_press, 0, false);

if(instance_exists(obj_controls)) {
	audio_play_sound(snd_button_press, 0, false);
	instance_destroy(obj_controls);		
}

else {
	instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_controls);
}