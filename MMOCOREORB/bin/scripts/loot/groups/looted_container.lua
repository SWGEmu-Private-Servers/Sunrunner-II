looted_container = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		-- Accessories/Misc Items (25% chance)
		{groupTemplate = "sturdy_bracelet_l", weight = 200000},
		{groupTemplate = "sturdy_bracelet_r", weight = 200000},
		{groupTemplate = "sturdy_necklace", weight = 200000},
		{groupTemplate = "munition_exp_necklace", weight = 200000},
		{groupTemplate = "arma_exp_necklace", weight = 200000},
		{groupTemplate = "munition_assem_necklace", weight = 200000},
		{groupTemplate = "arma_assem_necklace", weight = 200000},
		{groupTemplate = "munition_rep_necklace", weight = 200000},
		{groupTemplate = "arma_rep_necklace", weight = 200000},

		{itemTemplate = "force_color_crystal", weight = 100000},
		{itemTemplate = "force_power_crystal", weight = 100000},
		{itemTemplate = "jedi_holocron_dark", weight = 100000},
		{itemTemplate = "jedi_holocron_light", weight = 100000},
		{itemTemplate = "attachment_clothing", weight = 150000},
		{itemTemplate = "attachment_armor", weight = 150000},

		-- Weapons (25% chance)
		{groupTemplate = "weapons_all", weight = 2500000},

		-- Armors (25% chance)
		{groupTemplate = "armor_all", weight = 2500000},

		-- Clothing (25% chance)
		{groupTemplate = "wearables_all", weight = 2500000},

	}
}

addLootGroupTemplate("looted_container", looted_container)
