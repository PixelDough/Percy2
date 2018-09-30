/// @desc move_pushed_horizontal
/// @param pushable

//Block is an upscaled 16*16 block, those variables carry it’s size if the block is bigger
//xscale_width = argument[0];
//yscale_height = argument[1];
var _pushable = argument0;

//Creating the list to store the colliding objects
var pushable_list = ds_list_create();

//Collision loop
while (place_meeting(x, y+(velocity[1]), _pushable)) //Collision with an additional pixel in the moving direction
{
   //Getting the ID of an object colliding
   var pushable;
   pushable = collision_rectangle(x, y+(velocity[1]), x+sprite_width, y+sprite_height+(velocity[1]), _pushable, false, true)
   if (instance_exists(pushable))
   {
      //pushable.y = y; //Allign the object to the moving block coordinates
      while(place_meeting(x, y+(velocity[1]), pushable)) //Then push it away until it’s outside the block
      {
          pushable.y += sign(velocity[1])*1;
      }
   }
   

   //Adding the object to the list, then deactivating it to allow the loop to end
   //If multiple objects, the loop keeps going until all of them stored in the list and deactivated
   ds_list_add(pushable_list, pushable);
   instance_deactivate_object(pushable);
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



var _moving_ground = ds_list_create();
instance_place_list(x, bbox_top-4, _pushable, _moving_ground, true);
if ds_list_size(_moving_ground) > 0 {
	for (var _i=0; _i < ds_list_size(_moving_ground); _i++) {
		//if object_is_ancestor(_moving_ground[|_i].object_index, _pushable) {
			with _moving_ground[|_i] {
				//x+=other.velocity[0]
				//collide([0, other.velocity[1]]);
				velocity_carry[1] = other.velocity[1]
			}
		//}
	}
}
