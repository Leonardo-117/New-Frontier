/// @description Variaveis e mecanicas do player
velocidade = 5;
shot_time = room_speed;
shot_level = 1;
//Sistema de vida
vida = 3;
escudos = 3;
meu_escudo = noone;
//variaveis de tiros
shot_level_1 = function(){
	var y_shot = y-sprite_height/3;
	instance_create_layer(x,y_shot ,"Shoots",obj_shoot);
}
shot_level_2 = function(){
			var y_shot = y-sprite_height/3;
			var shot_1 = instance_create_layer(x - 35,y_shot + 10 ,"Shoots",obj_shot_2);
			var shot_2 = instance_create_layer(x + 35,y_shot + 10 ,"Shoots",obj_shot_2);
			shot_1.hspeed = -5;
			shot_2.hspeed = 5;
			shot_1.image_angle = direction +90
			shot_2.image_angle = direction -90 
}
shot_level_3 = function(){
			var y_shot = y-sprite_height/3;
			var shot_1 = instance_create_layer(x - 35,y_shot + 10 ,"Shoots",obj_shot_2);
			var shot_2 = instance_create_layer(x + 35,y_shot + 10 ,"Shoots",obj_shot_2);
			instance_create_layer(x,y-sprite_height/3 ,"Shoots",obj_shoot);
			shot_1.hspeed = -5;
			shot_2.hspeed = 5;
			shot_1.image_angle = direction +90;
			shot_2.image_angle = direction -90 ;
			
}
shot_level_4 = function(){
	var y_shot = y-sprite_height/3;
	var angle_direction = 75;
	repeat(3){
		var shot_1 = instance_create_layer(x,y_shot-10,"Shoots",obj_shoot);
		//Firts shot,Second shot and Third shot
		shot_1.direction = angle_direction;
		shot_1.image_angle = shot_1.direction - 90;
		angle_direction +=15;
		}
	}
shot_level_5 = function(){
var y_shot = y-sprite_height/3;
var angle_direction = 75;
var angle_direction_2 = 60;
repeat(3){
	var shot_1 = instance_create_layer(x,y_shot-10,"Shoots",obj_shoot);
	//Firts shot,Second shot and Third shot
	shot_1.direction = angle_direction;
	shot_1.image_angle = shot_1.direction - 90;
	angle_direction +=15;
}
//First special shot and Second speacil shot
repeat(2){
	var shot_2 = instance_create_layer(x,y_shot + 10 ,"Shoots",obj_shot_2);
	shot_2.direction = angle_direction_2;
	shot_2.image_angle = shot_2.direction - 90
	angle_direction_2 += 60;
	}
}
//Mecanica de tiro manual e automatico
shooting = function(){
	var fire = keyboard_check(vk_space) && alarm[0] == -1
	if fire{
		alarm[0] = shot_time;
		//criando o tiro na hora que apertei espeço e só exeucta apos 1 segundo
		if shot_level == 1 {
			shot_level_1();
		} else if (shot_level == 2) {
			shot_level_2();
		} else if (shot_level == 3){
			shot_level_3();
		} else if (shot_level == 4){
			shot_level_4();
		} else if (shot_level == 5){
			shot_level_5();
		}
	}
}
///Power ups
//Velocidade = .05 | Limite = 10 | 45%
//Velocidade do tiro = 10% | Limite = 20  | 45%
//Level do tiro = 1 | Limite = 1  | 10%
upgrade = function(_chance){
if _chance >= 90{
	if (shot_level < 5) {
	    shot_level++
	} else {
		multiply_points(100);
	}
}else if _chance >=45 && shot_time > 15{
		shot_time*=.9
	} else{
		if velocidade < 10{
			velocidade += .05;
		} else {
			multiply_points(100);
		}
	}
}

///@method perde_vida();
perde_vida = function(){
	if (!meu_escudo) {
		if vida > 0 {
			vida--
			screenshake(5);
		} else {
			instance_destroy();
			screenshake(250);
		}
	}
	
}

cria_escudo = function(){
	var shield = keyboard_check_pressed(ord("Z"));
	if shield && escudos > 0 && !meu_escudo {
		var escudo = instance_create_layer(x,y,"escudo",obj_escudo);
		escudo.alvo = id;
		escudos --
		meu_escudo = escudo
	}	
}

