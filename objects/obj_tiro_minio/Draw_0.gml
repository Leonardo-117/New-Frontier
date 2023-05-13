/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
draw_self();
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprt_shoot_hit_glow_effect_2,image_index,x,y,image_xscale*.5,image_yscale*.5,image_angle,#08FD00,0.2);
//resetando o blendmode
gpu_set_blendmode(bm_normal);
