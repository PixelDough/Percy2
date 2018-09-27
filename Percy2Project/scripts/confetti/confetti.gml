///@arg x
///@arg y
///@arg amount
var x_ = argument0;
var y_ = argument1;
var amount_ = argument2;
confetti_ = instance_create_layer(x_,y_,"META",obj_confetti_init);
confetti_.how_much = amount_;