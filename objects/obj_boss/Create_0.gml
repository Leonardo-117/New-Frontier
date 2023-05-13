/// @description Insert description here
// You can write your code in this editor
//Levels do boss
level_boss_atual = "estado4"
delay_tiro = room_speed/2;
espera_tiro = 0;
delay_estado = room_speed*8;
espera_estado = delay_estado;
velocidade_x = 3;
vida_boss_max = 2000;
vida_boss_atual = vida_boss_max;
///@method tiro_01();
tiro_01 = function(_direita){
	if (_direita) {
	    var _posx = 162;
	}
	else {
	    var _posx = -162;
	}
	instance_create_layer(x+_posx,y+18,"shoots",obj_enemy_shoot);
}
///@method tiro_02();
tiro_02 = function(){
	instance_create_layer(x,y+80,"shoots",obj_enemy_shoot_2);
}
///@method estado1
estado_01 = function(){
	espera_tiro --;
    if (espera_tiro <= 0) {
	    tiro_02();
		espera_tiro = delay_tiro;
	}
}
estado_02 = function(){
	x += velocidade_x
	if (x >= 1632 || x <= 288) {
	    velocidade_x*=-1
	}
	espera_tiro --;
	if (espera_tiro <= 0){
		tiro_01(false);
		tiro_01(true);
		espera_tiro = delay_tiro*2;
	}
	
}
estado_03 = function(){
		x += velocidade_x
	if (x >= 1632 || x <= 288) {
	    velocidade_x*=-1
	}
	espera_tiro --;
	if (espera_tiro <= 0){
		tiro_02();
		espera_tiro = delay_tiro*2;
	}if (espera_tiro == delay_tiro){
		tiro_01(false);
		
	}if (espera_tiro = delay_tiro + round(delay_tiro / 2)) {
	    tiro_01(true);
	}	
}
estado_04 = function(){
	sprite_index = sprt_boss_2;	
}

