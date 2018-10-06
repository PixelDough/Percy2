//sprite_index = sprites[ACTION];

invincible = max(invincible - 1, 0);

draw_sprite_ext(sprite_index,image_index,x,y,dir,1,0,c_white,100-(100*(invincible%2)));

if ACTION == player.die {
	if bbox_top > 224 {
		if !instance_exists(obj_splash_player) {
			var _splash = instance_create_layer(x,224,"Instances",obj_splash_player);
			_splash.creator = id;
		}
	}
}
