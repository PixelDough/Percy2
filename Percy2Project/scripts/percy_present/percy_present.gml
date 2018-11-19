var _target = instance_place_plus(x, y+4, obj_solid);
if !present {
	if _target and input.d and input.action_two_pressed {
		if _target.object_index == obj_solid || (object_is_ancestor(_target.object_index, obj_platform)) exit;
		present = instance_create_layer(_target.x, _target.y, "META", obj_present);
		present.sprite_index = _target.sprite_index
		present.sprite_index = spr_present
		present.image_index = _target.image_index
	
		instance_destroy(_target);
	
	}
}

if present {
	if present.is_held {
		present.x = x
		if present.is_lifted {
			present.sprite_index = spr_present
			present.y = bbox_top-2;
			
			if input.action_two_pressed {
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