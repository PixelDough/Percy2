event_inherited();

if instance_exists(obj_player) {
	if (POWER != POWERS.WAND and obj_player.POWER != POWER) and !instance_exists(obj_mint) sprite_index = spr_StarBlock;
}

if sprite_index != spr_block sprite_index = spr_StarBlock;

