/// @description BLOCK HIT EVENT
// Inherit the parent event
event_inherited();

if sprite_index != spr_block {
	velocity[1] = -1
	confetti(x+sprite_width/2, bbox_top, 10);
}
obj_player.velocity[1] = 0;

sprite_index = spr_block;