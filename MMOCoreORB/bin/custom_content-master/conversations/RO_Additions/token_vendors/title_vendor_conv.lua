-- Token System
-- Title Vendor Convo Template

--[[
		{"Caedous Title's", "caedous_titles"},
		{"Carebear Title's", "carebear_titles"},
		{"Deathwatch Title's", "deathwatch_titles"},
		{"Dragon Title's", "dragon_titles"},
		{"Droid Title's", "droid_titles"},
		{"Ewok Title's", "ewok_titles"},
		{"Geonosian Title", "geonosian_titles"},
		{"Graul Title's", "graul_titles"},
		{"Gungan Title's", "gungan_titles"},
		{"Janta Title's", "janta_titles"},
		{"Jawa Title's", "jawa_titles"},
		{"Meatlump Title's", "meatlump_titles"},
		{"Mokk Title's", "mokk_titles"},
		{"Nightsister Title's", "nightsister_titles"},
		{"Piket Title's", "piket_titles"},
		{"Rancor Title's", "rancor_titles"},
		{"Singing Mountain Clan Title's", "smc_titles"},
		{"Spider Title's", "spider_titles"},
		{"Squill Title's", "squill_titles"},
		{"Tusken Title's", "tusken_titles"},
		{"Undead Title's", "undead_titles"},
		{"Warren Title's", "warren_titles"},
		]]

titleVendorTemplate = ConvoTemplate:new {
	initalScreen = "",
	templateType = "Lua",
	luaClassHandler = "titleVendorConvoHandler",
	screens = {}
}

not_novice = ConvoScreen:new {
	id = "not_novice",
	customDialogText = "Sorry but you can not purchase titles without Novice Badge Hunter. Go see the Badge Hunter trainer in CNET to get Novice.",
	stopConversation = true,
	options = {}
}
titleVendorTemplate:addScreen(not_novice);

title_vendor_start = ConvoScreen:new {
	id = "title_vendor_start",
	customDialogText = "Hey there would you like to purchase a title today?",
	stopConversation = false,
	options = {
				
		{"Corellia", "corellia"},
		{"Dathomir", "dathomir"},
		{"Dantooine", "dantooine"},
		{"Endor", "endor"},
		{"General","general"},
		{"Mandalore", "mandalore"},
		{"Naboo", "naboo"},
		{"Professions", "professions"},
		{"Taanab", "taanab"},
		{"Tatooine", "tatooine"},
		{"Yavin4", "yavin4"},
		{"What do I need to get titles?", "what_do_i_need_to_get"},
		{"What are titles?","what_are"}
	}
}
titleVendorTemplate:addScreen(title_vendor_start);


available_titles = ConvoScreen:new {
	id = "available_titles",
	customDialogText = "Here are the available titles.",
	stopConverstation = false,
	options = {}
}
titleVendorTemplate:addScreen(available_titles);

what_are = ConvoScreen:new {
	id = "what_are",
	customDialogText = "Title are text that display below your player name for other players to see and to show off your accomplishments. You can turn them on an off in the character interface of your UI.",
	stopConversation = false,
	options = {
		{"View Title List","title_vendor_start"}
	}
}
titleVendorTemplate:addScreen(what_are);

what_do_i_need_to_get = ConvoScreen:new {
	id = "what_do_i_need_to_get",
	customDialogText = "Titles are gained by turning in tokens from different mobs you kill during your adventuring.",
	stopConversation = false,
	options = {
		{"View Title List","title_vendor_start"}
	}
}
titleVendorTemplate:addScreen(what_do_i_need_to_get);

corellia = ConvoScreen:new {
	id = "corellia",
	customDialogText = "Corellia Titles: Tokens for these can only be found on Corellia.",
	stopeConverstation = true,
	options = {
		{"Meatlump Title's", "meatlump_titles"},
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(corellia);

professions = ConvoScreen:new {
	id = "professions",
	customDialogText = "Master Professions: Galaxy Tokens are used to purchase various profession Masters.",
	stopeConverstation = true,
	options = {
		{"Master Artisan", "professions_galaxy"},
		{"Master Brawler", "professions_galaxy"},
		{"Master Entertainer","professions_galaxy"},
		{"Master Image Designer", "professions_galaxy"},
		{"Master Marksman", "professions_galaxy"},
		{"Master Medic", "professions_galaxy"},
		{"Master Merchant", "professions_galaxy"},
		{"Master Scout","professions_galaxy"},		
	},
}
titleVendorTemplate:addScreen(professions);



dathomir = ConvoScreen:new {
	id = "dathomir",
	customDialogText = "Dathomir Titles: Tokens for these can only be found on Dathomir.",
	stopeConverstation = true,
	options = {
		{"Nightsister Title's", "nightsister_titles"},
		{"Rancor Title's", "rancor_titles"},
		{"Singing Mountain Clan Title's", "smc_titles"},
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(dathomir);

dantooine = ConvoScreen:new {
	id = "dantooine",
	customDialogText = "Dantooine Titles: Tokens for these can only be found on Dantooine.",
	stopeConverstation = true,
	options = {
		{"Graul Title's", "graul_titles"},
		{"Janta Title's", "janta_titles"},
		{"Mokk Title's", "mokk_titles"},
		{"Piket Title's", "piket_titles"},
		{"Warren Title's", "warren_titles"},
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(dantooine);

endor = ConvoScreen:new {
	id = "endor",
	customDialogText = "Endor Titles: Tokens for these can only be found on Endor.",
	stopeConverstation = true,
	options = {
		{"Deathwatch Title's", "deathwatch_titles"},
		{"Ewok Title's", "ewok_titles"},
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(endor);

general = ConvoScreen:new {
	id = "general",
	customDialogText = "General Titles: Tokens for these can be found on multiple planets.",
	stopeConverstation = true,
	options = {
		{"Dragon Title's", "dragon_titles"},
		{"Droid Title's", "droid_titles"},
		{"Imperial Title's","imperial_titles"},
		{"Rebel Title's", "rebel_titles"},
		{"Spider Title's", "spider_titles"},
		{"Undead Title's", "undead_titles"},
		{"Wookie Title's", "wookie_titles"},
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(general);

mandalore = ConvoScreen:new {
	id = "mandalore",
	customDialogText = "Mandalore Titles: Tokens for these can only be found on Mandalore.",
	stopeConverstation = true,
	options = {
		{"Caedous Title's", "caedous_titles"},
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(mandalore);

naboo = ConvoScreen:new {
	id = "naboo",
	customDialogText = "Naboo Titles: Tokens for these can only be found on Naboo.",
	stopeConverstation = true,
	options = {
		{"Gungan Title's", "gungan_titles"},
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(naboo);

taanab = ConvoScreen:new {
	id = "taanab",
	customDialogText = "Taanab Titles: Tokens for these can only be found on Taanab.",
	stopeConverstation = true,
	options = {
		{"Carebear Title's", "carebear_titles"},
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(taanab);

tatooine = ConvoScreen:new {
	id = "tatooine",
	customDialogText = "Tatooine Titles: Tokens for these can only be found on Tatooine.",
	stopeConverstation = true,
	options = {
		{"Bantha Title's", "bantha_titles"},
		{"Jawa Title's", "jawa_titles"},
		{"Squill Title's", "squill_titles"},
		{"Tusken Title's", "tusken_titles"},
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(tatooine);

yavin4 = ConvoScreen:new {
	id = "yavin4",
	customDialogText = "Yavin 4 Titles: Tokens for these can only be found on Yavin 4.",
	stopeConverstation = true,
	options = {
		{"Geonosian Title", "geonosian_titles"},
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(yavin4);

bantha_titles = ConvoScreen:new {
	id = "bantha_titles",
	customDialogText = "Bantha Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(bantha_titles);

caedous_titles = ConvoScreen:new {
	id = "caedous_titles",
	customDialogText = "Caedous Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(caedous_titles);

carebear_titles = ConvoScreen:new {
	id = "carebear_titles",
	customDialogText = "Carebear Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(carebear_titles);

deathwatch_titles = ConvoScreen:new {
	id = "deathwatch_titles",
	customDialogText = "Deathwatch Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(deathwatch_titles);

dragon_titles = ConvoScreen:new {
	id = "dragon_titles",
	customDialogText = "Dragon Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(dragon_titles);

droid_titles = ConvoScreen:new {
	id = "droid_titles",
	customDialogText = "Droid Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(droid_titles);

ewok_titles = ConvoScreen:new {
	id = "ewok_titles",
	customDialogText = "Ewok Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(ewok_titles);

geonosian_titles = ConvoScreen:new {
	id = "geonosian_titles",
	customDialogText = "Geonosian Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(geonosian_titles);

graul_titles = ConvoScreen:new {
	id = "graul_titles",
	customDialogText = "Grauls Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(graul_titles);

gungan_titles = ConvoScreen:new {
	id = "gungan_titles",
	customDialogText = "Gungan Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(gungan_titles);

imperial_titles = ConvoScreen:new {
	id = "imperial_titles",
	customDialogText = "Imperial Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(imperial_titles);

janta_titles = ConvoScreen:new {
	id = "janta_titles",
	customDialogText = "Janta Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(janta_titles);

jawa_titles = ConvoScreen:new {
	id = "jawa_titles",
	customDialogText = "Jawa Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(jawa_titles);

meatlump_titles = ConvoScreen:new {
	id = "meatlump_titles",
	customDialogText = "Meatlump Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(meatlump_titles);

mokk_titles = ConvoScreen:new {
	id = "mokk_titles",
	customDialogText = "Mokk Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(mokk_titles);

nightsister_titles = ConvoScreen:new {
	id = "nightsister_titles",
	customDialogText = "Nightsister Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(nightsister_titles);

piket_titles = ConvoScreen:new {
	id = "piket_titles",
	customDialogText = "Piket Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(piket_titles);

rancor_titles = ConvoScreen:new {
	id = "rancor_titles",
	customDialogText = "Rancor Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(rancor_titles);

rebel_titles = ConvoScreen:new {
	id = "rebel_titles",
	customDialogText = "Rebel Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(rebel_titles);

smc_titles = ConvoScreen:new {
	id = "smc_titles",
	customDialogText = "Singing Mountain Clan Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(smc_titles);

spider_titles = ConvoScreen:new {
	id = "spider_titles",
	customDialogText = "Spider Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(spider_titles);

squill_titles = ConvoScreen:new {
	id = "squill_titles",
	customDialogText = "Squill Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(squill_titles);

tusken_titles = ConvoScreen:new {
	id = "tusken_titles",
	customDialogText = "Tusken Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"} 
	},
}
titleVendorTemplate:addScreen(tusken_titles);

undead_titles = ConvoScreen:new {
	id = "undead_titles",
	customDialogText = "Undead Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(undead_titles);

warren_titles = ConvoScreen:new {
	id = "warren_titles",
	customDialogText = "Warren Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(warren_titles);

wookie_titles = ConvoScreen:new {
	id = "wookie_titles",
	customDialogText = "Wookie Title List",
	stopConverstation = true,
	options = {
		{"View Title List","title_vendor_start"}
	},
}
titleVendorTemplate:addScreen(wookie_titles);

addConversationTemplate("titleVendorTemplate", titleVendorTemplate);
