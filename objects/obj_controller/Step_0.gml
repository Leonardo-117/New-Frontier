/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_actor_spaceship) && !gameover_seq{
	gameover_seq = layer_sequence_create("game_over",room_width/2,room_height/2,sq_game_over);
 } 
 
//Reiniciando o jogo se o player já morreu

 if keyboard_check_released((vk_space)){
	 if gameover_seq {
		game_restart();
	}
}
