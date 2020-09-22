underworldVendorConvoTemplate = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "PvPRecruiterConvoHandler",
	screens = {}
}

greet_hated = ConvoScreen:new {
	id = "greet_hated",
	leftDialog = "@conversation/faction_recruiter_rebel:s_462", -- I'm sorry, but I do not know you and do not wish to.
	stopConversation = "true",
	options = {
	}
}

underworldVendorConvoTemplate:addScreen(greet_hated);



neutral_need_more_points = ConvoScreen:new {
	id = "neutral_need_more_points",
	leftDialog = "@conversation/faction_recruiter_rebel:s_582", -- Your enthusiasm warms my heart. I'm afraid that right now, your loyalty is somewhat in question. Go out and prove to us that you want to help us overthrow the Empire and we can talk later.
	stopConversation = "true",
	options = {
	}
}

underworldVendorConvoTemplate:addScreen(neutral_need_more_points);




confirm_bribe = ConvoScreen:new {
	id = "confirm_bribe",
	leftDialog = "@conversation/faction_recruiter_rebel:s_570", -- I would be happy to accept a donation.
	stopConversation = "false",
	options = {
		{"@conversation/faction_recruiter_rebel:s_572", "accepted_bribe_20k"} -- I just happen to have a spare 20000 credits for you.
	}
}

underworldVendorConvoTemplate:addScreen(confirm_bribe);

accepted_bribe_20k = ConvoScreen:new {
	id = "accepted_bribe_20k",
	leftDialog = "@conversation/faction_recruiter_rebel:s_574", -- Your donation is certainly appreciated. Let me just quickly verify the bank funds.
	stopConversation = "true",
	options = {
	}
}

underworldVendorConvoTemplate:addScreen(accepted_bribe_20k);

accepted_bribe_100k = ConvoScreen:new {
	id = "accepted_bribe_100k",
	leftDialog = "@conversation/faction_recruiter_rebel:s_578", -- Wow! That's quite a donation. Thank you very much. Your donation will be processed after I verify the funds.
	stopConversation = "true",
	options = {
	}
}

underworldVendorConvoTemplate:addScreen(accepted_bribe_100k);

faction_purchase = ConvoScreen:new {
	id = "faction_purchase",
	leftDialog = "@conversation/faction_recruiter_rebel:s_482",  -- we have some things.  what do you need?
	stopConversation = "false",
	options = {
		--{ "@conversation/faction_recruiter_rebel:s_484", "fp_installations" }, -- We have some things. What do you need?
		{ "@conversation/faction_recruiter_rebel:s_488", "fp_weapons_armor" }, -- I need better weaponry and armor.
		--{ "@conversation/faction_recruiter_rebel:s_492", "fp_schematics" }, -- I like to build. What schematics are available?
		--{ "@conversation/faction_recruiter_rebel:s_496", "fp_furniture"}, -- I would like to do some decorating. I need furniture.
		--{ "@conversation/faction_recruiter_rebel:s_500", "fp_hirelings" }, -- I need some back-up troops.
	},
}

underworldVendorConvoTemplate:addScreen(faction_purchase);

fp_furniture = ConvoScreen:new {
	id = "fp_furniture",
	leftDialog = "@conversation/faction_recruiter_rebel:s_498", -- What suits your style? This is what I have available.
	stopConversation = "true",
	options = {	},
}
underworldVendorConvoTemplate:addScreen(fp_furniture);

fp_weapons_armor = ConvoScreen:new {
	id = "fp_weapons_armor",
	leftDialog = "@conversation/faction_recruiter_rebel:s_490", -- Don't we all? With all the Imperial thugs crawling around, I don't blame you. Let me show you my selection.
	stopConversation = "true",
	options = {},
}
underworldVendorConvoTemplate:addScreen(fp_weapons_armor);

fp_installations = ConvoScreen:new {
	id = "fp_installations",
	leftDialog = "@conversation/faction_recruiter_rebel:s_486", -- All right. Let me show you the plans that are available.
	stopConversation = "true",
	options = {},
}
underworldVendorConvoTemplate:addScreen(fp_installations);

fp_schematics = ConvoScreen:new {
	id = "fp_schematics",
	leftDialog = "@conversation/faction_recruiter_rebel:s_494", -- Good. We always need people making useful goods. I'll show you what I have.
	stopConversation = "true",
	options = {},
}
underworldVendorConvoTemplate:addScreen(fp_schematics);

fp_hirelings = ConvoScreen:new {
	id = "fp_hirelings",
	leftDialog = "@conversation/faction_recruiter_rebel:s_502", -- I'll see what I can do, but as you know, every soldier is valuable.
	stopConversation = "true",
	options = {},

}
underworldVendorConvoTemplate:addScreen(fp_hirelings);



addConversationTemplate("underworldVendorConvoTemplate", underworldVendorConvoTemplate);
