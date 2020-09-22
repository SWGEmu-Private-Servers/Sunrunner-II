-- Token System
-- Galaxy Vendor Convo Template

galaxyVendorTemplate = ConvoTemplate:new {
	initalScreen = "",
	templateType = "Lua",
	luaClassHandler = "galaxyVendorConvoHandler",
	screens = {}
}

not_novice = ConvoScreen:new {
	id = "not_novice",
	customDialogText = "Sorry but you can not purchase titles without Novice Badge Hunter. Go see the Badge Hunter trainer in CNET to get Novice.",
	stopConversation = true,
	options = {}
}
galaxyVendorTemplate:addScreen(not_novice);

galaxy_vendor_start = ConvoScreen:new {
	id = "galaxy_vendor_start",
	customDialogText = "Hey there what would you like to purchase today?",
	stopConversation = false,
	options = {
		
		{"Halloween Items", "clothing"},
		{"Furniture", "furniture"},
		{"Vehicles/Mounts", "deed_vehicles"},
		--{"Veteran Rewards", "veteran_rewards"},
		--{"Misc Items", "misc_items"},
		{"What are Galaxy Tokens?","what_are"}
	}
}
galaxyVendorTemplate:addScreen(galaxy_vendor_start);


available_titles = ConvoScreen:new {
	id = "available_titles",
	customDialogText = "Here are the available titles.",
	stopConverstation = false,
	options = {}
}
galaxyVendorTemplate:addScreen(available_titles);

what_are = ConvoScreen:new {
	id = "what_are",
	customDialogText = "Galaxy Tokens (gt) are gained by killing mobs around the galaxy.  Here is a breakdown of how tokens can be spent for the listed price of an item.  50gt=1-50gt.                 100gt=2-50gt.                 200gt=4-50gt.                 500gt=1-500gt(or 10 50gt). 1000gt=1-1000gt (or 2 500gt). 2000gt=2-1000gt (or 4 500gt). 5000gt=5-1000gt",
	stopConversation = false,
	options = {
		{"View Item List","galaxy_vendor_start"}
	}
}
galaxyVendorTemplate:addScreen(what_are);

what_do_i_need_to_get = ConvoScreen:new {
	id = "what_do_i_need_to_get",
	customDialogText = "Titles are gained by turning in tokens from different mobs you kill during your adventuring.",
	stopConversation = false,
	options = {
		{"View Item List","galaxy_vendor_start"}
	}
}
galaxyVendorTemplate:addScreen(what_do_i_need_to_get);

furniture = ConvoScreen:new {
	id = "furniture",
	customDialogText = "Furniture Items",
	stopConverstation = true,
	options = {
		{"Jedi","furniture_jedi"},
		{"Lighting","furniture_lighting"},
		{"Mini's" ,"furniture_minis"},
		{"Misc","furniture_misc"},
		{"Modern","furniture_modern"},
		{"Paintings","furniture_paintings"},
		{"Plain","furniture_plain"},
		{"Plants","furniture_plants"},
		{"Rugs","furniture_rugs"},
		{"Skulls", "furniture_skulls"},
		{"Statues","furniture_statues"},
		{"Trophies","furniture_trophies"},
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture);

veteran_rewards = ConvoScreen:new {
	id = "veteran_rewards",
	customDialogText = "Veteran Rewards Items",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(veteran_rewards);

misc_items = ConvoScreen:new {
	id = "misc_items",
	customDialogText = "Misc Items",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(misc_items);

-- Clothing Convo lists
clothing = ConvoScreen:new {
	id = "clothing",
	customDialogText = "Clothing",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(clothing);
-- End Clothing Convo Lists

-- Deeds Convo lists
deed_vehicles = ConvoScreen:new {
	id = "deed_vehicles",
	customDialogText = "Vehicles",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(deed_vehicles);
-- End Deeds Convo Lists

-- Furniture Convo lists
furniture_trophies = ConvoScreen:new {
	id = "furniture_trophies",
	customDialogText = "Furniture Trophy Items",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_trophies);

furniture_minis = ConvoScreen:new {
	id = "furniture_minis",
	customDialogText = "Furniture Mini's",
	stopConverstation = false,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_minis);

furniture_skulls = ConvoScreen:new {
	id = "furniture_skulls",
	customDialogText = "Furniture Skulls",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_skulls);

furniture_statues = ConvoScreen:new {
	id = "furniture_statues",
	customDialogText = "Furniture Statues",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_statues);

furniture_paintings = ConvoScreen:new {
	id = "furniture_paintings",
	customDialogText = "Furniture Paintings",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_paintings);

furniture_plain = ConvoScreen:new {
	id = "furniture_plain",
	customDialogText = "Furniture Plain",
	stopConverstation = false,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_plain);

furniture_modern = ConvoScreen:new {
	id = "furniture_modern",
	customDialogText = "Furniture Modern",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_modern);

furniture_lighting = ConvoScreen:new {
	id = "furniture_lighting",
	customDialogText = "Furniture Lighting",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_lighting);

furniture_rugs = ConvoScreen:new {
	id = "furniture_rugs",
	customDialogText = "Furniture Rugs",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_rugs);

furniture_plants = ConvoScreen:new {
	id = "furniture_plants",
	customDialogText = "Furniture Plants",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_plants);

furniture_misc = ConvoScreen:new {
	id = "furniture_misc",
	customDialogText = "Furniture Misc",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_misc);

furniture_jedi = ConvoScreen:new {
	id = "furniture_jedi",
	customDialogText = "Furniture Jedi",
	stopConverstation = true,
	options = {
		{"View Item List","galaxy_vendor_start"}
	},
}
galaxyVendorTemplate:addScreen(furniture_jedi);

-- End Furniture


addConversationTemplate("galaxyVendorTemplate", galaxyVendorTemplate);
