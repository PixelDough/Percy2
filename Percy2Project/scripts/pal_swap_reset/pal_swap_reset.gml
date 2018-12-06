/// @description pal_swap_reset();
/// @function pal_swap_reset
//Resets the shader
if(pal_Shader_Is_Set)
{
	shader_reset();
}
pal_Shader_Is_Set=false;