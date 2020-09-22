-- Token System
-- Token Bank Vendor Convo Template

tokenBankVendorTemplate = ConvoTemplate:new {
	initalScreen = "",
	templateType = "Lua",
	luaClassHandler = "tokenBankVendorConvoHandler",
	screens = {}
}

not_novice = ConvoScreen:new {
	id = "not_novice",
	customDialogText = "Sorry but you can not purchase token without Novice Badge Hunter. Go see the Badge Hunter trainer in CNET to get Novice.",
	stopConversation = true,
	options = {}
}
tokenBankVendorTemplate:addScreen(not_novice);

goodbye = ConvoScreen:new {
	id = "goodbye",
	customDialogText = "See you next time.",
	stopConversation = true,
	options = {}
}
tokenBankVendorTemplate:addScreen(goodbye);

howto = ConvoScreen:new {
	id = "howto",
	customDialogText = "Select which token you want to convert and I will give you back the required amount of tokens for your single token.  Only 500, 1000 and 10000 tokens can be converted and the lowest denomination you can get is a 50 token.",
	stopConversation = true,
	options = {}
}
tokenBankVendorTemplate:addScreen(howto);


token_bank_vendor_start = ConvoScreen:new {
	id = "token_bank_vendor_start",
	customDialogText = "Would you like to convert some of your tokens today?",
	stopConversation = false,
	options = {
		{"500 Tokens", "_500_tokens"},
		{"1000 Tokens", "_1000_tokens"},
		{"10000 Tokens", "_10000_tokens"},
		{"How do I convert tokens?","howto"},
		{"Goodbye","goodbye"}
	}
}
tokenBankVendorTemplate:addScreen(token_bank_vendor_start);

_500_tokens = ConvoScreen:new {
	id = "_500_tokens",
	customDialogText = "Please select the token you would like to convert.",
	stopConversation = false,
	options = {
		{"500 Bantha Tokens","_500_bantha_token_convert"},
		{"500 Caedous Tokens","_500_caedous_token_convert"},
		{"500 Carebear Tokens","_500_carebear_token_convert"},		
		{"500 Deathwatch Tokens","_500_deathwatch_token_convert"},
		{"500 Dragon Tokens","_500_dragon_token_convert"},
		{"500 Droid Tokens","_500_droid_token_convert"},
		{"500 Ewok Tokens","_500_ewok_token_convert"},
		{"500 Galaxy Tokens","_500_galaxy_token_convert"},
		{"500 Geonosian Tokens","_500_geonosian_token_convert"},
		{"500 Graul Tokens","_500_graul_token_convert"},
		{"500 Gungan Tokens","_500_gungan_token_convert"},
		{"500 Imperial Tokens","_500_imperial_token_convert"},
		{"500 Janta Tokens","_500_janta_token_convert"},
		{"500 Jawa Tokens","_500_jawa_token_convert"},
		{"500 Meatlump Tokens","_500_meatlump_token_convert"},
		{"500 Mokk Tokens","_500_mokk_token_convert"},
		{"500 Nightsister Tokens","_500_nightsister_token_convert"},
		{"500 Piket Tokens","_500_piket_token_convert"},
		{"500 Rancor Tokens","_500_rancor_token_convert"},
		{"500 Rebel Tokens","_500_rebel_token_convert"},
		{"500 Singing Mountain Clan Tokens","_500_smc_token_convert"},
		{"500 Spider Tokens","_500_spider_token_convert"},
		{"500 Squill Tokens","_500_squill_token_convert"},
		{"500 Tusken Tokens","_500_tusken_token_convert"},
		{"500 Undead Tokens","_500_undead_token_convert"},
		{"500 Warren Tokens","_500_warren_token_convert"},
		{"500 Wookie Tokens","_500_wookie_token_convert"},
	}
}
tokenBankVendorTemplate:addScreen(_500_tokens);

_1000_tokens = ConvoScreen:new {
	id = "_1000_tokens",
	customDialogText = "Please select the token you would like to convert.",
	stopConversation = false,
	options = {
		{"1000 Bantha Tokens","_1000_bantha_token_convert"},
		{"1000 Caedous Tokens","_1000_caedous_token_convert"},
		{"1000 Carebear Tokens","_1000_carebear_token_convert"},		
		{"1000 Deathwatch Tokens","_1000_deathwatch_token_convert"},
		{"1000 Dragon Tokens","_1000_dragon_token_convert"},
		{"1000 Droid Tokens","_1000_droid_token_convert"},
		{"1000 Ewok Tokens","_1000_ewok_token_convert"},
		{"1000 Galaxy Tokens","_1000_galaxy_token_convert"},
		{"1000 Geonosian Tokens","_1000_geonosian_token_convert"},
		{"1000 Graul Tokens","_1000_graul_token_convert"},
		{"1000 Gungan Tokens","_1000_gungan_token_convert"},
		{"1000 Imperial Tokens","_1000_imperial_token_convert"},
		{"1000 Janta Tokens","_1000_janta_token_convert"},
		{"1000 Jawa Tokens","_1000_jawa_token_convert"},
		{"1000 Meatlump Tokens","_1000_meatlump_token_convert"},
		{"1000 Mokk Tokens","_1000_mokk_token_convert"},
		{"1000 Nightsister Tokens","_1000_nightsister_token_convert"},
		{"1000 Piket Tokens","_1000_piket_token_convert"},
		{"1000 Rancor Tokens","_1000_rancor_token_convert"},
		{"1000 Rebel Tokens","_1000_rebel_token_convert"},
		{"1000 Singing Mountain Clan Tokens","_1000_smc_token_convert"},
		{"1000 Spider Tokens","_1000_spider_token_convert"},
		{"1000 Squill Tokens","_1000_squill_token_convert"},
		{"1000 Tusken Tokens","_1000_tusken_token_convert"},
		{"1000 Undead Tokens","_1000_undead_token_convert"},
		{"1000 Warren Tokens","_1000_warren_token_convert"},
		{"1000 Wookie Tokens","_1000_wookie_token_convert"},
	}
}
tokenBankVendorTemplate:addScreen(_1000_tokens);

_10000_tokens = ConvoScreen:new {
	id = "_10000_tokens",
	customDialogText = "Please select the token you would like to convert.",
	stopConversation = false,
	options = {
		{"10000 Bantha Tokens","_10000_bantha_token_convert"},
		{"10000 Caedous Tokens","_10000_caedous_token_convert"},
		{"10000 Carebear Tokens","_10000_carebear_token_convert"},		
		{"10000 Deathwatch Tokens","_10000_deathwatch_token_convert"},
		{"10000 Dragon Tokens","_10000_dragon_token_convert"},
		{"10000 Droid Tokens","_10000_droid_token_convert"},
		{"10000 Ewok Tokens","_10000_ewok_token_convert"},
		{"10000 Galaxy Tokens","_10000_galaxy_token_convert"},
		{"10000 Geonosian Tokens","_10000_geonosian_token_convert"},
		{"10000 Graul Tokens","_10000_graul_token_convert"},
		{"10000 Gungan Tokens","_10000_gungan_token_convert"},
		{"10000 Imperial Tokens","_10000_imperial_token_convert"},
		{"10000 Janta Tokens","_10000_janta_token_convert"},
		{"10000 Jawa Tokens","_10000_jawa_token_convert"},
		{"10000 Meatlump Tokens","_10000_meatlump_token_convert"},
		{"10000 Mokk Tokens","_10000_mokk_token_convert"},
		{"10000 Nightsister Tokens","_10000_nightsister_token_convert"},
		{"10000 Piket Tokens","_10000_piket_token_convert"},
		{"10000 Rancor Tokens","_10000_rancor_token_convert"},
		{"10000 Rebel Tokens","_10000_rebel_token_convert"},
		{"10000 Singing Mountain Clan Tokens","_10000_smc_token_convert"},
		{"10000 Spider Tokens","_10000_spider_token_convert"},
		{"10000 Squill Tokens","_10000_squill_token_convert"},
		{"10000 Tusken Tokens","_10000_tusken_token_convert"},
		{"10000 Undead Tokens","_10000_undead_token_convert"},
		{"10000 Warren Tokens","_10000_warren_token_convert"},
		{"10000 Wookie Tokens","_10000_wookie_token_convert"},
	}
}
tokenBankVendorTemplate:addScreen(_10000_tokens);

_500_bantha_token_convert = ConvoScreen:new {
	id = "_500_bantha_token_convert",
	customDialogText = "Attempting to convert 500 bantha tokens to (10) 50 bantha tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_bantha_token_convert);

_1000_bantha_token_convert = ConvoScreen:new {
	id = "_1000_bantha_token_convert",
	customDialogText = "Attempting to convert 1000 bantha tokens to (2) 500 bantha tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_bantha_token_convert);

_10000_bantha_token_convert = ConvoScreen:new {
	id = "_10000_bantha_token_convert",
	customDialogText = "Attempting to convert 10000 bantha tokens to (10) 1000 bantha tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_bantha_token_convert);

_500_caedous_token_convert = ConvoScreen:new {
	id = "_500_caedous_token_convert",
	customDialogText = "Attempting to convert 500 caedous tokens to (10) 50 caedous tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_caedous_token_convert);

_1000_caedous_token_convert = ConvoScreen:new {
	id = "_1000_caedous_token_convert",
	customDialogText = "Attempting to convert 1000 caedous tokens to (2) 500 caedous tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_caedous_token_convert);

_10000_caedous_token_convert = ConvoScreen:new {
	id = "_10000_caedous_token_convert",
	customDialogText = "Attempting to convert 10000 caedous tokens to (10) 1000 caedous tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_caedous_token_convert);

_500_carebear_token_convert = ConvoScreen:new {
	id = "_500_carebear_token_convert",
	customDialogText = "Attempting to convert 500 carebear tokens to (10) 50 carebear tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_carebear_token_convert);

_1000_carebear_token_convert = ConvoScreen:new {
	id = "_1000_carebear_token_convert",
	customDialogText = "Attempting to convert 1000 carebear tokens to (2) 500 carebear tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_carebear_token_convert);

_10000_carebear_token_convert = ConvoScreen:new {
	id = "_10000_carebear_token_convert",
	customDialogText = "Attempting to convert 10000 carebear tokens to (10) 1000 carebear tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_carebear_token_convert);

_500_deathwatch_token_convert = ConvoScreen:new {
	id = "_500_deathwatch_token_convert",
	customDialogText = "Attempting to convert 500 deathwatch tokens to (10) 50 deathwatch tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_deathwatch_token_convert);

_1000_deathwatch_token_convert = ConvoScreen:new {
	id = "_1000_deathwatch_token_convert",
	customDialogText = "Attempting to convert 1000 deathwatch tokens to (2) 500 deathwatch tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_deathwatch_token_convert);

_10000_deathwatch_token_convert = ConvoScreen:new {
	id = "_10000_deathwatch_token_convert",
	customDialogText = "Attempting to convert 10000 deathwatch tokens to (10) 1000 deathwatch tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_deathwatch_token_convert);

_500_dragon_token_convert = ConvoScreen:new {
	id = "_500_dragon_token_convert",
	customDialogText = "Attempting to convert 500 dragon tokens to (10) 50 dragon tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_dragon_token_convert);

_1000_dragon_token_convert = ConvoScreen:new {
	id = "_1000_dragon_token_convert",
	customDialogText = "Attempting to convert 1000 dragon tokens to (2) 500 dragon tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_dragon_token_convert);

_10000_dragon_token_convert = ConvoScreen:new {
	id = "_10000_dragon_token_convert",
	customDialogText = "Attempting to convert 10000 dragon tokens to (10) 1000 dragon tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_dragon_token_convert);

_500_droid_token_convert = ConvoScreen:new {
	id = "_500_droid_token_convert",
	customDialogText = "Attempting to convert 500 droid tokens to (10) 50 droid tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_droid_token_convert);

_1000_droid_token_convert = ConvoScreen:new {
	id = "_1000_droid_token_convert",
	customDialogText = "Attempting to convert 1000 droid tokens to (2) 500 droid tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_droid_token_convert);

_10000_droid_token_convert = ConvoScreen:new {
	id = "_10000_droid_token_convert",
	customDialogText = "Attempting to convert 10000 droid tokens to (10) 1000 droid tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_droid_token_convert);

_500_ewok_token_convert = ConvoScreen:new {
	id = "_500_ewok_token_convert",
	customDialogText = "Attempting to convert 500 ewok tokens to (10) 50 ewok tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_ewok_token_convert);

_1000_ewok_token_convert = ConvoScreen:new {
	id = "_1000_ewok_token_convert",
	customDialogText = "Attempting to convert 1000 ewok tokens to (2) 500 ewok tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_ewok_token_convert);

_10000_ewok_token_convert = ConvoScreen:new {
	id = "_10000_ewok_token_convert",
	customDialogText = "Attempting to convert 10000 ewok tokens to (10) 1000 ewok tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_ewok_token_convert);

_500_galaxy_token_convert = ConvoScreen:new {
	id = "_500_galaxy_token_convert",
	customDialogText = "Attempting to convert 500 galaxy tokens to (10) 50 galaxy tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_galaxy_token_convert);

_1000_galaxy_token_convert = ConvoScreen:new {
	id = "_1000_galaxy_token_convert",
	customDialogText = "Attempting to convert 1000 galaxy tokens to (2) 500 galaxy tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_galaxy_token_convert);

_10000_galaxy_token_convert = ConvoScreen:new {
	id = "_10000_galaxy_token_convert",
	customDialogText = "Attempting to convert 10000 galaxy tokens to (10) 1000 galaxy tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_galaxy_token_convert);

_500_geonosian_token_convert = ConvoScreen:new {
	id = "_500_geonosian_token_convert",
	customDialogText = "Attempting to convert 500 geonosian tokens to (10) 50 geonosian tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_geonosian_token_convert);

_1000_geonosian_token_convert = ConvoScreen:new {
	id = "_1000_geonosian_token_convert",
	customDialogText = "Attempting to convert 1000 geonosian tokens to (2) 500 geonosian tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_geonosian_token_convert);

_10000_geonosian_token_convert = ConvoScreen:new {
	id = "_10000_geonosian_token_convert",
	customDialogText = "Attempting to convert 10000 geonosian tokens to (10) 1000 geonosian tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_geonosian_token_convert);

_500_graul_token_convert = ConvoScreen:new {
	id = "_500_graul_token_convert",
	customDialogText = "Attempting to convert 500 graul tokens to (10) 50 graul tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_graul_token_convert);

_1000_graul_token_convert = ConvoScreen:new {
	id = "_1000_graul_token_convert",
	customDialogText = "Attempting to convert 1000 graul tokens to (2) 500 graul tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_graul_token_convert);

_10000_graul_token_convert = ConvoScreen:new {
	id = "_10000_graul_token_convert",
	customDialogText = "Attempting to convert 10000 graul tokens to (10) 1000 graul tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_graul_token_convert);

_500_gungan_token_convert = ConvoScreen:new {
	id = "_500_gungan_token_convert",
	customDialogText = "Attempting to convert 500 gungan tokens to (10) 50 gungan tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_gungan_token_convert);

_1000_gungan_token_convert = ConvoScreen:new {
	id = "_1000_gungan_token_convert",
	customDialogText = "Attempting to convert 1000 gungan tokens to (2) 500 gungan tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_gungan_token_convert);

_10000_gungan_token_convert = ConvoScreen:new {
	id = "_10000_gungan_token_convert",
	customDialogText = "Attempting to convert 10000 gungan tokens to (10) 1000 gungan tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_gungan_token_convert);

_500_imperial_token_convert = ConvoScreen:new {
	id = "_500_imperial_token_convert",
	customDialogText = "Attempting to convert 500 imperial tokens to (10) 50 imperial tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_imperial_token_convert);

_1000_imperial_token_convert = ConvoScreen:new {
	id = "_1000_imperial_token_convert",
	customDialogText = "Attempting to convert 1000 imperial tokens to (2) 500 imperial tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_imperial_token_convert);

_10000_imperial_token_convert = ConvoScreen:new {
	id = "_10000_imperial_token_convert",
	customDialogText = "Attempting to convert 10000 imperial tokens to (10) 1000 imperial tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_imperial_token_convert);

_500_janta_token_convert = ConvoScreen:new {
	id = "_500_janta_token_convert",
	customDialogText = "Attempting to convert 500 janta tokens to (10) 50 janta tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_janta_token_convert);

_1000_janta_token_convert = ConvoScreen:new {
	id = "_1000_janta_token_convert",
	customDialogText = "Attempting to convert 1000 janta tokens to (2) 500 janta tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_janta_token_convert);

_10000_janta_token_convert = ConvoScreen:new {
	id = "_10000_janta_token_convert",
	customDialogText = "Attempting to convert 10000 janta tokens to (10) 1000 janta tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_janta_token_convert);

_500_jawa_token_convert = ConvoScreen:new {
	id = "_500_jawa_token_convert",
	customDialogText = "Attempting to convert 500 jawa tokens to (10) 50 jawa tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_jawa_token_convert);

_1000_jawa_token_convert = ConvoScreen:new {
	id = "_1000_jawa_token_convert",
	customDialogText = "Attempting to convert 1000 jawa tokens to (2) 500 jawa tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_jawa_token_convert);

_10000_jawa_token_convert = ConvoScreen:new {
	id = "_10000_jawa_token_convert",
	customDialogText = "Attempting to convert 10000 jawa tokens to (10) 1000 jawa tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_jawa_token_convert);

_500_meatlump_token_convert = ConvoScreen:new {
	id = "_500_meatlump_token_convert",
	customDialogText = "Attempting to convert 500 meatlump tokens to (10) 50 meatlump tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_meatlump_token_convert);

_1000_meatlump_token_convert = ConvoScreen:new {
	id = "_1000_meatlump_token_convert",
	customDialogText = "Attempting to convert 1000 meatlump tokens to (2) 500 meatlump tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_meatlump_token_convert);

_10000_meatlump_token_convert = ConvoScreen:new {
	id = "_10000_meatlump_token_convert",
	customDialogText = "Attempting to convert 10000 meatlump tokens to (10) 1000 meatlump tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_meatlump_token_convert);

_500_mokk_token_convert = ConvoScreen:new {
	id = "_500_mokk_token_convert",
	customDialogText = "Attempting to convert 500 mokk tokens to (10) 50 mokk tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_mokk_token_convert);

_1000_mokk_token_convert = ConvoScreen:new {
	id = "_1000_mokk_token_convert",
	customDialogText = "Attempting to convert 1000 mokk tokens to (2) 500 mokk tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_mokk_token_convert);

_10000_mokk_token_convert = ConvoScreen:new {
	id = "_10000_mokk_token_convert",
	customDialogText = "Attempting to convert 10000 mokk tokens to (10) 1000 mokk tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_mokk_token_convert);

_500_nightsister_token_convert = ConvoScreen:new {
	id = "_500_nightsister_token_convert",
	customDialogText = "Attempting to convert 500 nightsister tokens to (10) 50 nightsister tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_nightsister_token_convert);

_1000_nightsister_token_convert = ConvoScreen:new {
	id = "_1000_nightsister_token_convert",
	customDialogText = "Attempting to convert 1000 nightsister tokens to (2) 500 nightsister tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_nightsister_token_convert);

_10000_nightsister_token_convert = ConvoScreen:new {
	id = "_10000_nightsister_token_convert",
	customDialogText = "Attempting to convert 10000 nightsister tokens to (10) 1000 nightsister tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_nightsister_token_convert);

_500_piket_token_convert = ConvoScreen:new {
	id = "_500_piket_token_convert",
	customDialogText = "Attempting to convert 500 piket tokens to (10) 50 piket tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_piket_token_convert);

_1000_piket_token_convert = ConvoScreen:new {
	id = "_1000_piket_token_convert",
	customDialogText = "Attempting to convert 1000 piket tokens to (2) 500 piket tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_piket_token_convert);

_10000_piket_token_convert = ConvoScreen:new {
	id = "_10000_piket_token_convert",
	customDialogText = "Attempting to convert 10000 piket tokens to (10) 1000 piket tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_piket_token_convert);

_500_rancor_token_convert = ConvoScreen:new {
	id = "_500_rancor_token_convert",
	customDialogText = "Attempting to convert 500 rancor tokens to (10) 50 rancor tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_rancor_token_convert);

_1000_rancor_token_convert = ConvoScreen:new {
	id = "_1000_rancor_token_convert",
	customDialogText = "Attempting to convert 1000 rancor tokens to (2) 500 rancor tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_rancor_token_convert);

_10000_rancor_token_convert = ConvoScreen:new {
	id = "_10000_rancor_token_convert",
	customDialogText = "Attempting to convert 10000 rancor tokens to (10) 1000 rancor tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_rancor_token_convert);

_500_rebel_token_convert = ConvoScreen:new {
	id = "_500_rebel_token_convert",
	customDialogText = "Attempting to convert 500 rebel tokens to (10) 50 rebel tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_rebel_token_convert);

_1000_rebel_token_convert = ConvoScreen:new {
	id = "_1000_rebel_token_convert",
	customDialogText = "Attempting to convert 1000 rebel tokens to (2) 500 rebel tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_rebel_token_convert);

_10000_rebel_token_convert = ConvoScreen:new {
	id = "_10000_rebel_token_convert",
	customDialogText = "Attempting to convert 10000 rebel tokens to (10) 1000 rebel tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_rebel_token_convert);

_500_smc_token_convert = ConvoScreen:new {
	id = "_500_smc_token_convert",
	customDialogText = "Attempting to convert 500 singing mountain clan tokens to (10) 50 smc tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_smc_token_convert);

_1000_smc_token_convert = ConvoScreen:new {
	id = "_1000_smc_token_convert",
	customDialogText = "Attempting to convert 1000 singing mountain clan tokens to (2) 500 smc tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_smc_token_convert);

_10000_smc_token_convert = ConvoScreen:new {
	id = "_10000_smc_token_convert",
	customDialogText = "Attempting to convert 10000 singing mountain clan tokens to (10) 1000 smc tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_smc_token_convert);

_500_spider_token_convert = ConvoScreen:new {
	id = "_500_spider_token_convert",
	customDialogText = "Attempting to convert 500 spider tokens to (10) 50 spider tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_spider_token_convert);

_1000_spider_token_convert = ConvoScreen:new {
	id = "_1000_spider_token_convert",
	customDialogText = "Attempting to convert 1000 spider tokens to (2) 500 spider tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_spider_token_convert);

_10000_spider_token_convert = ConvoScreen:new {
	id = "_10000_spider_token_convert",
	customDialogText = "Attempting to convert 10000 spider tokens to (10) 1000 spider tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_spider_token_convert);

_500_squill_token_convert = ConvoScreen:new {
	id = "_500_squill_token_convert",
	customDialogText = "Attempting to convert 500 squill tokens to (10) 50 squill tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_squill_token_convert);

_1000_squill_token_convert = ConvoScreen:new {
	id = "_1000_squill_token_convert",
	customDialogText = "Attempting to convert 1000 squill tokens to (2) 500 squill tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_squill_token_convert);

_10000_squill_token_convert = ConvoScreen:new {
	id = "_10000_squill_token_convert",
	customDialogText = "Attempting to convert 10000 squill tokens to (10) 1000 squill tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_squill_token_convert);

_500_tusken_token_convert = ConvoScreen:new {
	id = "_500_tusken_token_convert",
	customDialogText = "Attempting to convert 500 tusken tokens to (10) 50 tusken tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_tusken_token_convert);

_1000_tusken_token_convert = ConvoScreen:new {
	id = "_1000_tusken_token_convert",
	customDialogText = "Attempting to convert 1000 tusken tokens to (2) 500 tusken tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_tusken_token_convert);

_10000_tusken_token_convert = ConvoScreen:new {
	id = "_10000_tusken_token_convert",
	customDialogText = "Attempting to convert 10000 tusken tokens to (10) 1000 tusken tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_tusken_token_convert);

_500_undead_token_convert = ConvoScreen:new {
	id = "_500_undead_token_convert",
	customDialogText = "Attempting to convert 500 undead tokens to (10) 50 undead tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_undead_token_convert);

_1000_undead_token_convert = ConvoScreen:new {
	id = "_1000_undead_token_convert",
	customDialogText = "Attempting to convert 1000 undead tokens to (2) 500 undead tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_undead_token_convert);

_10000_undead_token_convert = ConvoScreen:new {
	id = "_10000_undead_token_convert",
	customDialogText = "Attempting to convert 10000 undead tokens to (10) 1000 undead tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_undead_token_convert);

_500_warren_token_convert = ConvoScreen:new {
	id = "_500_warren_token_convert",
	customDialogText = "Attempting to convert 500 warren tokens to (10) 50 warren tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_warren_token_convert);

_1000_warren_token_convert = ConvoScreen:new {
	id = "_1000_warren_token_convert",
	customDialogText = "Attempting to convert 1000 warren tokens to (2) 500 warren tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_warren_token_convert);

_10000_warren_token_convert = ConvoScreen:new {
	id = "_10000_warren_token_convert",
	customDialogText = "Attempting to convert 10000 warren tokens to (10) 1000 warren tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_warren_token_convert);

_500_wookie_token_convert = ConvoScreen:new {
	id = "_500_wookie_token_convert",
	customDialogText = "Attempting to convert 500 wookie tokens to (10) 50 wookie tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_500_wookie_token_convert);

_1000_wookie_token_convert = ConvoScreen:new {
	id = "_1000_wookie_token_convert",
	customDialogText = "Attempting to convert 1000 wookie tokens to (2) 500 wookie tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_1000_wookie_token_convert);

_10000_wookie_token_convert = ConvoScreen:new {
	id = "_10000_wookie_token_convert",
	customDialogText = "Attempting to convert 10000 wookie tokens to (10) 1000 wookie tokens.",
	stopConversation = false,
	options = {}
}
tokenBankVendorTemplate:addScreen(_10000_wookie_token_convert);

addConversationTemplate("tokenBankVendorTemplate", tokenBankVendorTemplate);
