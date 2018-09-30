/// @desc move_pushed_horizontal
/// @param pushable

//Block is an upscaled 16*16 block, those variables carry it’s size if the block is bigger
//xscale_width = argument[0];
//yscale_height = argument[1];
var _pushable = argument0;

//Creating the list to store the colliding objects
var pushable_list = ds_list_create();

//Collision loop
while (place_meeting(x+sign(x-xprevious), y, _pushable)) //Collision with an additional pixel in the moving direction
{
	_pushable.x += sign(x-xprevious)
	with _pushable {
		while (position_meeting(bbox_left, y, obj_solid) and position_meeting(bbox_right, y, obj_solid)) and (position_meeting(x, bbox_top, obj_solid) and position_meeting(x, bbox_bottom, obj_solid)) {
			y--;
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

//If the list is not empty, reactivate the objects stored inside, and then delete them from the list.
while (!ds_list_empty(pushable_list))
{
   to_activate = ds_list_find_value(pushable_list, 0)
   instance_activate_object(to_activate);
   ds_list_delete(pushable_list, 0);    
}

//Destroy the list
ds_list_destroy(pushable_list);
