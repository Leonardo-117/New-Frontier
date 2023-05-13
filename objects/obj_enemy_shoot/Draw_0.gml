
//Criando a sprt do tiro
draw_self();
//efeito de glow do tiro
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprt_shoot_hit_glow_effet,image_index,x,y,image_xscale*.4,image_yscale*.4,image_angle,#A4E518,0.5);
//resetando o blendmode
gpu_set_blendmode(bm_normal);
