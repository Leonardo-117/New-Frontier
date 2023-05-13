//Criando a sprt 
draw_self();
//efeito de glow 
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprt_shoot_hit_glow_effect_2,image_index,x,y,image_xscale*.8,image_yscale*.8,image_angle,cor_upgrade,image_alpha -0.3);
//resetando o blendmode
gpu_set_blendmode(bm_normal);
