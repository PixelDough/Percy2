hud_fruit = 0;

SEL = 0;

fruits = 0;
collectable = spr_jingleBell;

global.player_door = -1

LEVELS = [];
LEVELS[0] = [level1, level1_sub1];

LEVEL = 0;
ROOM = 0;

CURRENT_LEVEL = level_load(LEVELS, LEVEL);
room_goto_circle(CURRENT_LEVEL[ROOM]);
