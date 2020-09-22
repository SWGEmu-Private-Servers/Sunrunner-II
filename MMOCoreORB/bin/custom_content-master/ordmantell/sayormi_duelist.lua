sayormi_duelist = Creature:new {
	objectName = "@mob/creature_names:sayormi_duelist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 82,
	chanceHit = 1.75,
	damageMin = 580,
	damageMax = 820,
	baseXp = 7923,
	baseHAM = 18100,
	baseHAMmax = 21800,
	armor = 1,
	resists = {160,155,150,145,150,150,170,145,-1},
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
		"object/mobile/dressed_sayromi_monk_04.iff",
		"object/mobile/dressed_sayromi_monk_05.iff",
		"object/mobile/dressed_sayromi_monk_06.iff"
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

CreatureTemplates:addCreatureTemplate(sayormi_duelist, "sayormi_duelist")
