looted_container_hard = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		-- Keys/Misc Items 
		{itemTemplate = "avatar_key", weight = 50000},
		{itemTemplate = "axkva_key", weight = 50000},
		{itemTemplate = "ddf_key", weight = 50000},
		{itemTemplate = "exar_key", weight = 50000},
		{itemTemplate = "sherkar_key", weight = 50000},
		{itemTemplate = "huttbunker_key", weight = 50000},
		{itemTemplate = "ig_key", weight = 50000},
		{itemTemplate = "orf_key", weight = 50000},
		{itemTemplate = "wdf_key", weight = 50000},

		{itemTemplate = "color_crystals", weight = 100000},
		{itemTemplate = "jedi_holocron_dark", weight = 100000},
		{itemTemplate = "jedi_holocron_light", weight = 100000},
		{itemTemplate = "wearables_rare", weight = 2900000},
		{itemTemplate = "wearables_scarce", weight = 2850000},

		-- Weapons 
		{groupTemplate = "weapons_all", weight = 3500000},

	}
}

addLootGroupTemplate("looted_container_hard", looted_container_hard)
