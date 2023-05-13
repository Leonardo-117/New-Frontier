/// @description Insert description here
// You can write your code in this editor
// usando a sprite original
if (level_boss_atual != "estado4") {
    sprite_index = sprt_boss
}
//Debug do estado atual
show_debug_message(level_boss_atual)

if keyboard_check((vk_lcontrol)){
	vida_boss_atual -=10;
}

//Limitando posição na tela para o player
//Alternando os estados
espera_estado --;
if (espera_estado <= 0) {
   level_boss_atual = choose("estado1","estado2","estado3");
   espera_estado = delay_estado;
}

//Iniciando os estados do boss
if (level_boss_atual == "estado1") {
		estado_01();
} else if (level_boss_atual == "estado2") {
	       estado_02();
} else if (level_boss_atual == "estado3") {
	      estado_03();
} else if (level_boss_atual == "estado4") {
	      estado_04();
}
