exar_kun_head_cultist = Creature:new {
	customName = "Exar Kun Head Cultist",
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 131,
	chanceHit = 4.75,
	damageMin = 770,
	damageMax = 1250,
	baseXp = 12424,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 1,
	resists = {15,200,15,200,200,200,200,200,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_head_cultist.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "melee_weapons", chance = 1750000},
				{group = "g_massassiknuckler", chance = 2000000},
				{group = "g_sword_massassi", chance = 2000000},
				{group = "g_power_plant_sith", chance = 250000},

			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencernovice,swordsmanmaster,tkamid,brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(exar_kun_head_cultist, "exar_kun_head_cultist")
