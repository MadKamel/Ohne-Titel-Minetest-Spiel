local S = minetest.get_translator("otms_default")

minetest.register_node("otms_default:stone", {
	description = S("A block of stone."),
	tiles = {"omts_stone.png"},
	groups = {stone = 1},
	is_ground_content = true
})

minetest.register_node("otms_default:water_source", {
	description = S("A source of water."),
	tiles = {"otms_water.png"},
	groups = {water = 1},
	is_ground_content = true
})

minetest.register_node("otms_default:riverwater_source", {
	description = S("A source of river-water."),
	tiles = {"otms_riverwater.png"},
	groups = {water = 1},
	is_ground_content = true
})
