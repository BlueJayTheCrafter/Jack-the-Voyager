if(room = rm_puzzle2){
	var t2 = instance_exists(obj_target2_yes);
	var t3 = instance_exists(obj_target3_yes);
	var t4 = instance_exists(obj_target4_yes);

	if(!t2 && !t3 && !t4){
		instance_destroy(obj_blockage1);
		instance_destroy(obj_blockage2);
	}
}