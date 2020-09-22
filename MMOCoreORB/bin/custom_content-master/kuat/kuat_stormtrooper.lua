kuat_stormtrooper = Creature:new {
	objectName = "@mob/creature_names:stormtrooper",
	randomNameType = NAME_STORMTROOPER,
	socialGroup = "townsperson",
	faction = "",
	level = 40,
	chanceHit = 1.5,
	damageMin = 375,
	damageMax = 525,
	baseXp = 3830,
	baseHAM = 12200,
	baseHAMmax = 14000,
	armor = 1,
	resists = {140,140,40,30,150,140,20,25,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = PACK + KILLER,
	diet = HERBIVORE,

	templates = {"object/mobile/warren_stormtrooper.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 3400000},
				{group = "rifles", chance = 1200000},
				{group = "pistols", chance = 1200000},
				{group = "melee_weapons", chance = 1200000},
				{group = "carbines", chance = 1200000},
				{group = "clothing_attachments", chance = 250000},
				{group = "armor_attachments", chance = 250000},
				{group = "stormtrooper_common", chance = 700000},
				{group = "wearables_common", chance = 500000}
			}
		}
	},
	weapons = {"stormtrooper_weapons"},
	attacks = merge(brawlermaster,marksmanmaster,riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(kuat_stormtrooper, "kuat_stormtrooper")