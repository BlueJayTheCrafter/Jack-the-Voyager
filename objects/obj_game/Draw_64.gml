switch(room){
	case rm_menu:
		
		draw_set_halign(fa_left);
		
		draw_text(resW * 0.05,resH * 0.30,"Jack\nthe\nVoyager");
		draw_set_color(c_white);
		
	break;
	
	case rm_puzzle2:
	
		draw_set_halign(fa_left);
		draw_set_color(c_red);
		
		draw_text(250, 300, "SCORE: " + string(global.player_score));
		draw_text(250, 400, "LIVES: " + string(global.player_lives));
		
	break;
	
	case rm_puzzle3:
	
		draw_set_halign(fa_left);
		draw_set_color(c_red);
		
		draw_text(850, 100, "SCORE: " + string(global.player_score));
		draw_text(850, 150, "LIVES: " + string(global.player_lives));
	
	break;
	
	case rm_game:
	case rm_battle1:
	case rm_battle2:
	case rm_puzzle1:
	
		draw_set_halign(fa_left);
		draw_set_color(c_red);
		
		draw_text(20, 20, "SCORE: " + string(global.player_score));
		draw_text(20, 65, "LIVES: " + string(global.player_lives));
		
	break;
	
	case rm_death_screen:
		
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER", 
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 500,
			@"FINAL SCORE: "+string(global.player_score)
		);
		draw_text(
			room_width/2, 400,
			@"PRESS ENTER TO RESTART"
		);
		
	break;
		
	case rm_win_screen:
		
		draw_set_halign(fa_center);
		var c = c_green;
		draw_text_transformed_color(
			room_width/2, 150, "YOU DID IT!!", 
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 500,
			@"FINAL SCORE: "+string(global.player_score)
		);
		draw_text(
			room_width/2, 400,
			@"PRESS ENTER TO RESTART"
		);
}

