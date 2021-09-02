-- register mapgen aliases for v7.
-- regestrierer Mapgen-Aliasnamen für v7

minetest.register_alias("mapgen_stone", "otms_default:stone")
minetest.register_alias("mapgen_water_source", "otms_default:water_source")
minetest.register_alias("mapgen_river_water_source", "otms_default:riverwater_source")



-- register biome-node aliases

minetest.register_alias("biomes_topsoil", "otms_default:topsoil")



-- register decoration-node aliases

minetest.register_decoration({
	decoration = "otms_default:reeds",
	deco_type = "simple",
	place_on = "otms_default:topsoil",
	fill_ratio = 0.02,
	height = 2,
	height_max = 3,
	y_max = 1,
	y_min = 1,
})

minetest.register_decoration({
	decoration = "otms_default:grass",
	deco_type = "simple",
	place_on = "otms_default:topsoil",
	fill_ratio = 0.1,
	y_min = 1,
})



-- register biomes

minetest.register_biome({
	name = "dirtland",
	node_top = "biomes_topsoil",
	depth_top = 3,
	heat_point = 0,
	humidity_point = 50,
})
