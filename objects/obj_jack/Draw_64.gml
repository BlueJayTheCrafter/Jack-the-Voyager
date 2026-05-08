if (room == rm_puzzle2){
    var _t2 = instance_exists(obj_target2_yes);
    var _t3 = instance_exists(obj_target3_yes);
    var _t4 = instance_exists(obj_target4_yes);      

    if (_t2 || _t3 || _t4){
		draw_text(825, 200, "Target 2 Exists: " + string(instance_exists(obj_target2_yes)));
		draw_text(825, 300, "Target 3 Exists: " + string(instance_exists(obj_target3_yes)));
		draw_text(825, 400, "Target 4 Exists: " + string(instance_exists(obj_target4_yes))); 
    }
}