if (room == rm_puzzle2){
    var _t2 = instance_exists(obj_target2_yes);
    var _t3 = instance_exists(obj_target3_yes);
    var _t4 = instance_exists(obj_target4_yes);

    if (!_t2 || !_t3 || !_t4){
		instance_destroy(obj_blockage1);
		instance_destroy(obj_blockage2);
    } 
	else{
		draw_text(10, 10, "Target 2 Exists: " + string(instance_exists(obj_target2_yes)));
		draw_text(10, 30, "Target 3 Exists: " + string(instance_exists(obj_target3_yes)));
		draw_text(10, 50, "Target 4 Exists: " + string(instance_exists(obj_target4_yes))); 
    }
}
