/// @description Comandos do jogador
// Variaveis de comando do player
var up, right, down, left;
left = keyboard_check(vk_left) 
up = keyboard_check(vk_up) 
right = keyboard_check(vk_right)
down = keyboard_check(vk_down)
//definindo os comandos de moviemnto
///Cima + Baixo
y += (down - up)*velocidade;
///Esquerda + Direita
x += (right - left)*velocidade;
//Limitando posição na tela para o player
x = clamp(x,64,1856);
y = clamp(y,64,1024);
//atirando
shooting();
//subindo level do tiro quando apertar para cima
/*if keyboard_check_pressed(vk_up){
	if shot_level < 5{
		shot_level++;
	}
	show_debug_message(shot_level);
}
if keyboard_check_pressed(vk_down){
	if shot_level > 1{
		shot_level--;
	}
	show_debug_message(shot_level);
}
if keyboard_check_pressed(vk_left) && shot_time >= 20{
	//aumentando a velocidade do tiro
		shot_time*=.9
}
if keyboard_check_pressed(vk_right){
	//Diminuindo a velocidade do tiro
	shot_time*=1.1
}*/
//Sistema de escuto
cria_escudo();
if vida == 0{
	instance_destroy();
}
	
