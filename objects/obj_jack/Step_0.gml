vspd += grv;

if (place_meeting(x, y + 1, obj_cobblestone)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_cobblestone)) {
    while (!place_meeting(x, y + sign(vspd), obj_cobblestone)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

if (place_meeting(x, y + 1, obj_grass)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_grass)) {
    while (!place_meeting(x, y + sign(vspd), obj_grass)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

if (place_meeting(x, y + 1, obj_stone)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if(place_meeting(x, y + vspd, obj_stone)) {
    while (!place_meeting(x, y + sign(vspd), obj_stone)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

y += vspd

switch(room) {
	case rm_game2:
	
	if(mouse_check_button(mb_left)) {
		if(shootCooldown <= 0) {
			instance_create_layer(x, y, "instances", obj_sword2);
			shootCooldown = 45;
		}
	}
}

shootCooldown -= 1;

switch(state){
	
	#region
	
	case PLAYERRSTATE.DEFAULT: 
	
		keyright = keyboard_check(ord("A"));
		keyleft = keyboard_check(ord("D"));
		keydown = keyboard_check(vk_numpad2);
		keyup = keyboard_check(vk_numpad8);
		keyattack = mouse_check_button(mb_left);
		
		if (keyattack) state = PLAYERRSTATE.ATTACK;
		
		inputmag = (keyright - keyleft != 0);
		
		if(inputmag){
			
			inputdir = point_direction(0, 0, (keyright - keyleft), (keydown - keyup));
			
			switch(inputdir){
				
				case 0: dirfacing = 0; break;
				case 90: dirfacing = 90; break; 
				case 180:dirfacing = 180; break;
				case 270: dirfacing = 270; break;
		}
	}
		hspd = lengthdir_x(walkspeed * inputmag, inputdir);
		vspd = lengthdir_y(walkspeed * inputmag, inputdir);
		
		x += hspd;
		y += vspd;
}
	
	#endregion
			
	#region
		
	case PLAYERRSTATE.ATTACK:
		
		
	