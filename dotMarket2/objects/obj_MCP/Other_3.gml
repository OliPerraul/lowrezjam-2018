font_delete(global.fnt_pix);

ds_list_destroy(dot_stock);
ds_list_destroy(undo_dot_stock);
ds_list_destroy(dot_price);
ds_list_destroy(dot_fair_price);

for (var i=0; i<6; i++) {
	ds_grid_destroy(pattern_storage[i]);
}