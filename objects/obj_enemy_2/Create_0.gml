// Inherit the parent event
event_inherited();
//Defininfo a velocidade do enemy_2
vspeed = 4
//Variavel de pontos
enemy_points = 20;
//Limitando a movimentação do inimigo
limit_move_to_sides = true;
// Disparando tiro 2
shooting_enemy = function(){
if y >= 0{
	instance_create_layer(x - 3, y + sprite_height/3,"Shoots", obj_enemy_shoot_2);
}}
//Chance de drop
chance = 35