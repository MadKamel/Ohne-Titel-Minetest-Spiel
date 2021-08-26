minetest.register_item(':', {
	type = 'none',
	wield_image = 'hand.png', -- Nicht hier jetzt, aber bald. (Not here yet, but soon.)
	wield_scale = {x = 0.5, y = 1, z = 4}, -- Config von Void Spiel (Config from Void game)
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level = 0.0,
	}
})
