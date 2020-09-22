sayormi_brute = Creature:new {
	objectName = "@mob/creature_names:sayormi_brute",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 85,
	chanceHit = 2,
	damageMin = 850,
	damageMax = 1275,
	baseXp = 8423,
	baseHAM = 29200,
	baseHAMmax = 34800,
	armor = 1,
	resists = {170,155,155,145,155,150,175,150,-1},
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
		"object/mobile/dressed_sayormi_warrior_01.iff",

		"object/mobile/dressed_sayormi_warrior_02.iff",

		"object/mobile/dressed_sayormi_warrior_03.iff",
		"object/mobile/dressed_sayormi_warrior_04.iff",

		"object/mobile/dressed_sayormi_warrior_05.iff",
	
		"object/mobile/dressed_sayormi_warrior_06.iff"

		},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "g_sayormi_junk", chance = 3000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "g_fan_metal", chance = 500000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,pikemanmaster,fencermaster,brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(sayormi_brute, "sayormi_brute")
