//Diminuindo o alpha em 10%
	image_alpha -= .2;
//Destruindo se alpha for menor <=.5
if image_alpha = 0{
	instance_destroy(id,false);
}
//Repetindo o alarm
alarm[0] = room_speed;