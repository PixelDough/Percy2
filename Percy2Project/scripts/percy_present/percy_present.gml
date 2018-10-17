var _target = instance_place(x, y+4, obj_enemy);
if _target and input.d and input.action_two_pressed {
	present = instance_create_layer(_target.x, _target.y, "META", obj_present);
	present.sprite_index = _target.sprite_index
	present.image_index = _target.image_index
	
	instance_destroy(_target);
	
}

if present {
	if present.is_held {
		present.x = x
		if present.is_lifted {
			present.sprite_index = spr_present
			present.y = bbox_top-2;
			
			if input.action_two_released {
				present.velocity[0] = (image_xscale*3) //+ (velocity[0]);
				present.is_held = false;
				present = noone;
			}
		} else {
			if present.y > bbox_top+4 {
				present.y = lerp(present.y, bbox_top, 0.2);
				ACTION = PERCY.CROUCH;
			} else {
				present.is_lifted = true;
			}
		}
	}
}