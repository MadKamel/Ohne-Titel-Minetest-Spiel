minetest.register_node("otms_default:stone", {
	description = S("A block of stone."),
	tiles = {"stone.png"},
	groups = {stone = 1},
	is_ground_content = true
})

minetest.register_node("otms_default:water_source", {
	description = S("A source of water."),
	tiles = {"water_source.png"},
	groups = {water = 1},
	is_ground_content = true
})

minetest.register_node("otms_default:riverwater_source", {
	description = S("A source of river-water."),
	tiles = {"riverwater_source.png"},
	groups = {water = 1},
	is_ground_content = true
})
