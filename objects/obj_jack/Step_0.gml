vspd += grv;

if (place_meeting(x, y + 1, obj_grass)) && (keyboard_check_pressed(vk_space)) {
    vspd = jump_height;
}

if (place_meeting(x, y + vspd, obj_grass)) {
    while (!place_meeting(x, y + sign(vspd), obj_grass)) {
        y = y + sign(vspd);
    }
    vspd = 0;
}

y += vspd