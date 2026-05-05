switch(room){
	case rm_menu:
	
		draw_set_halign(fa_left);
		
		draw_text(resW * 0.05,resH * 0.30,"Jack\nthe\nVoyager");
		draw_set_color(c_white);
		
	break;
	
	case rm_puzzle2:
	
		draw_set_halign(fa_left);
		draw_set_color(c_red);
		
		draw_text(412, 300, "SCORE: " + string(global.player_score));
		draw_text(412, 400, "LIVES: " + string(global.player_lives));
	
	break;
	
	case rm_game1:
	case rm_battle1:
	case rm_battle2:
	case rm_puzzle1:
	
		draw_set_halign(fa_left);
		draw_set_color(c_red);
		
		draw_text(20, 20, "SCORE: " + string(global.player_score));
		draw_text(20, 65, "LIVES: " + string(global.player_lives));
		
	break;
}

