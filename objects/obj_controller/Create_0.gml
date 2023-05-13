/// @description Insert description here
// You can write your code in this editor
//allow gamepag
randomize();
//creating player
instance_create_layer(room_width/2,room_height/1.2,"player",obj_actor_spaceship);
// Variavel de vida do player
//Variavel de posição da criação do inimigo em x
alarm[0] = room_speed;
//Sistema de pontos
points = 0;
//Sistema de level
level = 1;
next_level = 100;
//Metodo de pontos
///@method gain_points()
gain_points = function(_points){
	points += _points * level;
	//Metodo de level
	if points > next_level{
		level++;
		next_level *= 2
	}
}
///Função para criar inimigos
creating_enemys = function(){
	//Posições de inimigos
	var enemy_x_posision = irandom_range(192,1760);
	//Aumentando o limite com base no lvl do jogo
	var enemy_y_posision = irandom_range(-64,-604 - (level*800));
	//Inimigos
	var enemy = obj_enemy_1;
	//Chance de gerar enemy_2
	var chance = random_range(0 ,level);
	//Creating enemys
	if chance >= 2{
		enemy = obj_enemy_2
	}
	instance_create_layer(enemy_x_posision,enemy_y_posision,"enemys",enemy)
}
///Defininfo power ups
///Variavel de controle para o game_over
gameover_seq = noone;
