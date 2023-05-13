/// @description Insert description here
// You can write your code in this editor
//Criando a sprt do tiro
draw_self();
//efeito de glow do tiro
gpu_set_blendmode(bm_add);
draw_sprite_ext(glow,image_index,x,y,image_xscale*0.7,image_yscale*0.7,image_angle,color,0.3);
//resetando o blendmode
gpu_set_blendmode(bm_normal);
