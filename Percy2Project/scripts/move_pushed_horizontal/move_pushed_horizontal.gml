/// @desc move_pushed_horizontal
/// @arg xscale_width
/// @arg yscale_height

//Block is an upscaled 16*16 block, those variables carry it’s size if the block is bigger
xscale_width = argument[0];
yscale_height = argument[1];

//Creating the list to store the colliding objects
var pushable_list = ds_list_create();

//Collision loop
while (place_meeting(x+sign(velocity[0]), y, physics_object)) //Collision with an additional pixel in the moving direction
{
   //Getting the ID of an object colliding
   var pushable;
   pushable = collision_rectangle(x+sign(velocity[0]), y, x+xscale_width*16+sign(velocity[0]), y+yscale_height*16, physics_object, false, true)
   if (instance_exists(pushable))
   {
      pushable.x = x; //Allign the object to the moving block coordinates
      while(place_meeting(x, y, pushable)) //Then push it away until it’s outside the block
      {
          pushable.x += sign(velocity[0]);
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