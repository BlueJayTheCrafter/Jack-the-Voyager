switch(room){
	case rm_menu:
	
		draw_set_halign(fa_left);
		
		draw_text(resW * 0.05,resH * 0.30,"Jack\nthe\nVoyager");
		draw_set_color(c_white);
		
	break;
	
	case rm_game1:
	
		draw_set_halign(fa_left);
		
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 65, "LIVES: "+string(lives));
		draw_set_color(c_black);
		
	break;
	
	case rm_battle1:
	
		draw_set_halign(fa_left);
		
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 65, "LIVES: "+string(lives));
		draw_set_color(c_black);
		
	break;
	
	case rm_puzzle2:
	
		draw_set_halign(fa_left);
		
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 65, "LIVES: "+string(lives));
		draw_set_color(c_black);
}

