
PAGE = 0;

for (var _i = 0; _i < sprite_get_number(spr_cutscene_pages); _i += 2) {
	var _page = instance_create_depth(x, y, depth-100+_i, obj_cutscene_page)
	_page.PAGE = _i;
}

alarm[0] = 300;