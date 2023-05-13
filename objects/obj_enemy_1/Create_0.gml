//Variavel de pontos
enemy_points = 10
//Checando se estou colindindo com outro inimigo
if place_meeting(x,y,obj_enemy_1){
	instance_destroy(id,false);
}
//Criando o disparo 
shooting_enemy = function(){
if y >= 0{
	instance_create_layer(x - 3, y + sprite_height/4,"Shoots", obj_enemy_shoot);
}}
//Setando a velocidade do inimigo
vspeed = 3;
// iniciando o disparo
alarm[0] = room_speed*random_range(1,3);
//Drop power ups
chance = 20
/// @method idrop();
idrop = function(_chance){
	var valor = random(100);
	if valor < _chance && y > 96{
		instance_create_layer(x,y,"power_ups",obj_power_up);
	}
}


