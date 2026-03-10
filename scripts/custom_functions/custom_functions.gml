function draw_my_weapon()

	function get_damaged_create(_hp = 10)

	function get_damaged_cleanup()

function get_damaged(_damageObj, _iframes = false) {
	if place_meeting(x, y, _damageObj) {
		var _instList = ds_list_create();
		instance_place_list(x, y, _damageObj, _instList, false);
		var _listSize = ds_list_size(_instList);
		
		for(var i = 0; i < _listSize; i++) {
			var _inst - ds_list_find_value(_listSize, i);
			if _iframes == true || ds_list_find_index(damageList, _inst) == -1 {
				if _iframes == false {
				ds_list_add(damageList, _inst);
				}
				hp -= _inst.damage;
				_inst.hitConfirm = true;
			}
		}
		ds_list_destroy(_instList);
	}
	var _damageListSize = ds_list_size(damageList);
}