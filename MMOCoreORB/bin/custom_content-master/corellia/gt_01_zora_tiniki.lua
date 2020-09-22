-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to SWGEMU & Team -- www.swgemu.com
-- Credit to MTG & Team -- http://www.modthegalaxy.com

-- Used in:
-- conv handler : SRii_GTour_npc01_convo_handler
-- screenplay: SRii_GTour01

gt_zora_tiniki = Creature:new {
	customName = "Zora Tiniki (Galactic Tour Agent)",
	--objectName = "",
	--randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 138,
	armor = 0,
	resists = {15,15,15,15,15,15,15,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_herald_noble_twk_female_01.iff"},
	--templates = {"object/mobile/dressed_corsair_captain_hum_f.iff"},  -- consider outfits for this mobile
				
	lootGroups = {},
	weapons = {},
	conversationTemplate = "SRii_GTour01_convo_template",  ---- conv handler : 
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(gt_zora_tiniki, "gt_zora_tiniki")
