/// @description CROUCH EVENT
sprite_index = spr_percy_down;
if abs(velocity[0]) > 3 {
	sprite_index = spr_percy_slide;
	var _hit = instance_place(x+velocity[0], y, obj_IceBlock)
	if _hit {
		if POWER = POWERS.STRONG {
			velocity[0] += 8 * sign(velocity[0])
			velocity[1] = -0.5;
			y = _hit.y + ((_hit.sprite_height / 2)+(bbox_bottom-bbox_top)/2);
		} else {
			velocity[0] = 0;
		}
		
		with _hit event_user(0);
		//x += 10 * sign(velocity[0])
	}
}