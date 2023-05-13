/// @description Insert description here
// You can write your code in this editor
var multiplicador = 0;
var espaco = 60;
repeat(vida){
	draw_sprite_ext(sprt_actor_spaceship,0,40+espaco*multiplicador,60,.3,.3,0,c_white,0.5)
	multiplicador ++;
}

multiplicador = 0
repeat(escudos){
	draw_sprite_ext(sprt_escudo,2,40+espaco*multiplicador,120,.3,.3,0,c_white,0.5)
	multiplicador ++
}
	
