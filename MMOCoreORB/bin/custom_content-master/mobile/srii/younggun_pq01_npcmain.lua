-- Modified for DrDax's Pandorum Collection 2017-8
-- Credit to MTG & Team -- http://www.modthegalaxy.com
-------------------------------------------------------------
--[[

Quest : Young Gun
Mobile Outfit : younggun_pq01_npcmain_outfit
Mobile Convo : younggun_pq01_npcmain_conv_handler


--]]

younggun_pq01_npcmain = Creature:new {
	customName = "Nym's Local Coordinator",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 100,
	chanceHit = 0.26,
	damageMin = 55,
	damageMax = 65,
	baseXp = 187,
	baseHAM = 270,
	baseHAMmax = 330,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/huff_darklighter.iff"},
	outfit = "younggun_pq01_npcmain_outfit",
	conversationTemplate = "younggun_pq01_npcmain_convo_template",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(younggun_pq01_npcmain, "younggun_pq01_npcmain")

