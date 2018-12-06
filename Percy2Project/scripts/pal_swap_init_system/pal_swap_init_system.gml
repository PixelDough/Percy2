/// @description pal_swap_init_system(shader)
/// @function pal_swap_init_system
/// @param Shader
/// @param <HTML5_Sprite_Shader>
/// @param <HTML5_Surface_Shader>

//Initiates the palette system.  Call once at the beginning of your game somewhere.
//IMPORTANT: if you plan on using this for HTML5, you need to specify your two HTML5 
//versions of the shader.  

globalvar pal_Shader,pal_Texel_Size, pal_UVs, pal_Index, pal_Texture, pal_Shader_Is_Set, 
					pal_Layer_Priority, pal_Layer_Temp_Priority, pal_Layer_Map, 
					pal_HTML5,pal_HTML5_Sprite, pal_HTML5_Surface;
					
enum pal_Shader_Type{Standard,HTML_Sprite,HTML_Surface}
pal_HTML5 = os_browser != browser_not_a_browser;
if(!pal_HTML5)
{
	pal_Shader = argument[0];

	pal_Texel_Size[pal_Shader_Type.Standard] = shader_get_uniform(pal_Shader, "u_pixelSize");
	pal_UVs[pal_Shader_Type.Standard] = shader_get_uniform(pal_Shader, "u_Uvs");
	pal_Index[pal_Shader_Type.Standard] = shader_get_uniform(pal_Shader, "u_paletteId");
	pal_Texture[pal_Shader_Type.Standard] = shader_get_sampler_index(pal_Shader, "u_palTexture");

	pal_Shader_Is_Set = false;
}
else
{
	if(argument_count<3)
	{
		show_message("Must provide pal_swap_init_system() with 2 additional arguments for HTML5 Compatible Sprite and Surface Shaders");
		game_end();
	}
	pal_HTML5 = true;
	pal_HTML5_Sprite  = argument[1];
	pal_HTML5_Surface = argument[2];
	
	pal_Texel_Size[pal_Shader_Type.HTML_Sprite] = shader_get_uniform(pal_HTML5_Sprite, "u_pixelSize");
	pal_UVs[pal_Shader_Type.HTML_Sprite] = shader_get_uniform(pal_HTML5_Sprite, "u_Uvs");
	pal_Index[pal_Shader_Type.HTML_Sprite] = shader_get_uniform(pal_HTML5_Sprite, "u_paletteId");
	pal_Texture[pal_Shader_Type.HTML_Sprite] = shader_get_sampler_index(pal_HTML5_Sprite, "u_palTexture");
	
	pal_Texel_Size[pal_Shader_Type.HTML_Surface] = shader_get_uniform(pal_HTML5_Surface, "u_pixelSize");
	pal_UVs[pal_Shader_Type.HTML_Surface] = shader_get_uniform(pal_HTML5_Surface, "u_Uvs");
	pal_Index[pal_Shader_Type.HTML_Surface] = shader_get_uniform(pal_HTML5_Surface, "u_paletteId");
	pal_Texture[pal_Shader_Type.HTML_Surface] = shader_get_sampler_index(pal_HTML5_Surface, "u_palTexture");
}

pal_Layer_Priority = ds_priority_create();
pal_Layer_Temp_Priority = ds_priority_create();
pal_Layer_Map = ds_map_create();
