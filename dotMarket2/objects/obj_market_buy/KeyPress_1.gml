var _max = min(obj_MCP.stats[? "balance"] div obj_MCP.dot_price[| obj_market.current_colour],
				9999 - obj_MCP.dot_stock[| obj_market.current_colour]);

if (keyboard_key == vk_backspace || 
	keyboard_key == vk_delete) {
	quantity = max(quantity div 10,0);
	audio_play_sound(snd_beep,1,false);
}

else {
	var _digit = real(keyboard_lastchar);

	if (_digit >= 0 && _digit <= 9) {
		quantity = min(quantity*10 + _digit,_max);
		audio_play_sound(snd_beep,1,false);
	}
	
	else {
		audio_play_sound(snd_no,1,false);
	}
}