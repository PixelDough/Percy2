/// @description BLOCK HIT EVENT
// Inherit the parent event
event_inherited();

if sprite_index != spr_block {
	confetti(x+sprite_width/2, bbox_top, 10);
	var _mint = instance_create_depth(x+(sprite_width/2), bbox_top-4, depth-1, obj_mint)
	_mint.POWER = POWER;
	_mint.velocity[1] = -2;
}
//obj_player.velocity[1] = 0;

sprite_index = spr_block;