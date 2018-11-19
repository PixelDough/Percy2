 /// @desc move_pushed_horizontal
/// @param pushable

//Block is an upscaled 16*16 block, those variables carry it’s size if the block is bigger
//xscale_width = argument[0];
//yscale_height = argument[1];
var _pushable = argument0;

//Creating the list to store the colliding objects


//with _pushable {
//	var _tl = collision_point(bbox_left, bbox_top, obj_solid, false, true);
//	var _tr = collision_point(bbox_right, bbox_top, obj_solid, false, true);
//	var _bl = collision_point(bbox_left, bbox_bottom, obj_solid, false, true);
//	var _br = collision_point(bbox_right, bbox_bottom, obj_solid, false, true);
//	while _tl and _tr and _bl and _br {
//		x -= other.x-other.xprevious
//		y -= other.y-other.yprevious
//	}
//}

//Collision loop
if solid_ {
	//var pushable_list = ds_list_create();
	
	if object_is_ancestor(_pushable.object_index, physics_object) and _pushable.object_index != obj_solid {
		if (place_meeting(x+sign(velocity[0]), y+sign(velocity[1]), _pushable))// and (sign(y-_pushable.y) == sign(_pushable.velocity[1])) //Collision with an additional pixel in the moving direction
		{
			//_pushable.x += x-xprevious;
			//_pushable.y += y-yprevious;
	
			//if velocity[0] != 0 or velocity[1] != 0 {
				_pushable.x += sign(velocity[0]);
				_pushable.y += sign(velocity[1]);
			//}
		
			with _pushable {
				var _hit = instance_place_plus(x+sign(other.velocity[0]), y+sign(other.velocity[1]), obj_solid)
				if _hit and _hit != other {
					make_dead(self);
					exit;
				}
			}
	
			////Getting the ID of an object colliding
			//var pushable;
			//pushable = collision_rectangle(x+(velocity[0]), y, x+(velocity[0])+sprite_width, y+sprite_height, _pushable, false, true)
			//if (instance_exists(pushable))
			//{
			//   //pushable.x = x; //Allign the object to the moving block coordinates
			//   while(place_meeting(x+(velocity[0]), y, pushable)) //Then push it away until it’s outside the block
			//   {
			//       pushable.x += sign(velocity[0])*1;
			//   }
			//}
   

			////Adding the object to the list, then deactivating it to allow the loop to end
			////If multiple objects, the loop keeps going until all of them stored in the list and deactivated
			//ds_list_add(pushable_list, pushable);
			//instance_deactivate_object(pushable);
		}
	}
}
