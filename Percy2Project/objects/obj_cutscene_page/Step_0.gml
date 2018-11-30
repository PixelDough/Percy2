
depth = obj_cutscene_book.depth-100 + PAGE * sign(image_xscale);

if image_xscale > 0 {
	image_index = PAGE+1;
	//depth = obj_cutscene_book.depth-100+PAGE
}
if image_xscale < 0 {
	image_index = PAGE+2;
	//depth = obj_cutscene_book.depth-100+PAGE + sign(image_xscale)
}

if PAGE < obj_cutscene_book.PAGE {
	ACTION = PAGES.ON;
}
if PAGE >= obj_cutscene_book.PAGE {
	ACTION = PAGES.OFF;
}

event_user(ACTION);
