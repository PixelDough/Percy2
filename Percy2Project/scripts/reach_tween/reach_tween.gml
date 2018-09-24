/// @param var,goal,divider_amount
/*
	This function moves towards the goal variable by the distance between them divided by an amount.
	
	Example: anim = reach_tween(anim, anim_goal, 7);
	This will move anim towards anim_goal with a distance dividing factor of 7
	
	created by SETH (@ENDESGA)
	- do NOT redistribute or claim as your own -
	CC0: no need to attribute me if you use this within your game
		
	QUESTIONS? Contact me: seth@endesga.com  or DM me on Twitter: @ENDESGA
*/
return(argument0+(min(abs(argument1-argument0)/argument2,abs(argument1-argument0))*sign(argument1-argument0)));