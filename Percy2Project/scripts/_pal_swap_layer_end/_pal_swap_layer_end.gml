///You should not be calling this script directly
if(event_type==ev_draw)
{
	pal_swap_reset();
	if(ds_priority_empty(pal_Layer_Priority))
	{
		ds_priority_copy(pal_Layer_Priority,pal_Layer_Temp_Priority);
		ds_priority_clear(pal_Layer_Temp_Priority);
	}
}