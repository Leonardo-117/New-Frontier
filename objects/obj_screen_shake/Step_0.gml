/// @description Insert description here
// You can write your code in this editor
///tremendo a tela
view_xport[0] = random_range(-shake,shake);
view_yport[0] = random_range(-shake,shake);

shake *= .9;

if (shake < .5) {
    instance_destroy();
	view_xport[0]=0;
	view_yport[0]=0;
	show_debug_message("destruido")
}
