local S = minetest.get_translator("otms_default")


minetest.register_node("otms_default:reeds", {
	description = S("Reeds"),
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {"otms_reeds.png"},
	groups = {plant = 1, reed = 1, mature_plant = 1},
	is_ground_content = true
})

minetest.register_node("otms_default:grass", {
	description = S("Grass"),
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {"otms_grass.png"},
	groups = {plant = 1, grass = 1, mature_plant = 1},
	is_ground_content = true
})

minetest.register_node("otms_default:sand", {
	description = S("Sand"),
	tiles = {"otms_sand.png"},
	groups = {sand = 1},
	is_ground_content = true
})

minetest.register_node("otms_default:topsoil", {
	description = S("Topsoil"),
	tiles = {"otms_topsoil.png"},
	groups = {soil = 1},
	is_ground_content = true
})

minetest.register_node("otms_default:stone", {
	description = S("Stone"),
	tiles = {"otms_stone.png"},
	groups = {stone = 1},
	is_ground_content = true
})

minetest.register_node("otms_default:water_source", {
	description = S("Source Water"),
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "otms_water_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1,
			},
		},
		{
			name = "otms_water_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	groups = {water = 1},
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	liquidtype = "source",
	liquid_alternative_flowing = "otms_default:water_flowing",
	liquid_alternative_source = "otms_default:water_source",
	liquid_viscosity = 1,
})

minetest.register_node("otms_default:water_flowing", {
	description = S("Flowing Water"),
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "otms_water_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1,
			},
		},
		{
			name = "otms_water_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 1,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	groups = {water = 1},
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	liquidtype = "flowing",
	liquid_alternative_flowing = "otms_default:water_flowing",
	liquid_alternative_source = "otms_default:water_source",
	liquid_viscosity = 1,
})

minetest.register_node("otms_default:riverwater_source", {
	description = S("Source River-Water"),
	tiles = {"otms_riverwater.png"},
	groups = {water = 1},
	is_ground_content = true
})
