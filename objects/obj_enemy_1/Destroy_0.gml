/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,"enemys",obj_explosion);
//Giving points after enemy death
if instance_exists(obj_controller) = true{
	obj_controller.gain_points(enemy_points);
}
//Dropando Item
idrop(chance);
//Screen shake
screenshake(10);
