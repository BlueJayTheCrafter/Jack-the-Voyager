switch(room){
	case rm_game1:
	
		draw_set_halign(fa_left);
		
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 65, "LIVES: "+string(lives));
		
	
	break;
	
	case rm_game2:
	
		draw_set_halign(fa_left);
		
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 65, "LIVES: "+string(lives));
}

draw_set_color(c_black);