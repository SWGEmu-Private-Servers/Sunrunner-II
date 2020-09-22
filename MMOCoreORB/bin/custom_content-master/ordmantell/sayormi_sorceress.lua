sayormi_sorceress = Creature:new {
	objectName = "@mob/creature_names:sayormi_sorceress",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 85,
	chanceHit = 2,
	damageMin = 800,
	damageMax = 1175,
	baseXp = 8423,
	baseHAM = 27500,
	baseHAMmax = 32250,
	armor = 1,
	resists = {150,170,145,160,155,170,170,145,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_sayormi_witch_05.iff",
		"object/mobile/dressed_sayormi_witch_06.iff",
		"object/mobile/dressed_sayormi_witch_07.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3000000},
				{group = "g_sayormi_books", chance = 2000000},
				{group = "g_sayormi_junk", chance = 3000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "color_crystals", chance = 1000000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(sayormi_sorceress, "sayormi_sorceress")
