// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake){
	var screen = instance_create_layer(0,0,"player",obj_screen_shake);
	screen.shake = _shake;
}

//função para ganhar pontos

function multiply_points(_points2){
	if (instance_exists(obj_controller)) { 
		obj_controller.gain_points(_points2);
	}
}
