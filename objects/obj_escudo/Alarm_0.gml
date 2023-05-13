/// @description Insert description here
// You can write your code in this editor
if image_index >0{
	image_index --;
	//Declarando a redução do alpha
	image_alpha -= .2;
} else {
	instance_destroy();
}
alarm[0] = room_speed
