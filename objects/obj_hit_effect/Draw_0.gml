/// @description Insert description here
// You can write your code in this editor
draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.8,image_yscale*1.8,image_angle,#FBFF0C,0.5);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.4,image_yscale*1.4,image_angle,#0CFF98,0.5);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*2,image_yscale*2,image_angle,#FF0C0C,0.5);
//resetando o blendmode
gpu_set_blendmode(bm_normal);