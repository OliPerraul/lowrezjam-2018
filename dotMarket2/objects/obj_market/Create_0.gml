current_colour = paletteColour.blank;
page = 0;

for (var i=0; i<4; i++) {
	store_items[i*2] = instance_create_layer(1,i*11+1,"Menu",obj_store_item);
	store_items[i*2].index_offset = 1+i;
	store_items[i*2].my_index = store_items[i*2].index_offset+page*8;

	store_items[i*2+1] = instance_create_layer(33,i*11+1,"Menu",obj_store_item);
	store_items[i*2+1].index_offset = 5+i;	
	store_items[i*2+1].my_index = store_items[i*2+1].index_offset+page*8;
}

buy_button = instance_create_layer(20,52,"Menu",obj_market_goto_buy_button);
history_button = instance_create_layer(34,52,"Menu",obj_goto_history_button);

buy_button.enabled = false;
history_button.enabled = false;

alarm[0] = 1;