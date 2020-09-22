
object_weapon_ranged_pistol_pistol_pvp = object_weapon_ranged_pistol_shared_pistol_pvp:new {
	--noTrade = 1,
	playerRaces = { 	"object/creature/player/smc_female.iff",
				"object/creature/player/smc_male.iff",
				"object/creature/player/talz_male.iff",
				"object/creature/player/talz_female.iff",
				"object/creature/player/togruta_female.iff",
				"object/creature/player/togruta_male.iff",
				"object/creature/player/weequay_male.iff",
				"object/creature/player/weequay_female.iff",
				"object/creature/player/nautolan_male.iff",
				"object/creature/player/nautolan_female.iff",
				"object/creature/player/nightsister_female.iff",
				"object/creature/player/nightsister_male.iff",
				"object/creature/player/nikto_male.iff",
				"object/creature/player/nikto_female.iff",
				"object/creature/player/quarren_male.iff",
				"object/creature/player/quarren_female.iff",
				"object/creature/player/ishi_tib_male.iff",
				"object/creature/player/ishi_tib_female.iff",
				"object/creature/player/hutt_female.iff",
				"object/creature/player/hutt_male.iff",
				"object/creature/player/gran_male.iff",
				"object/creature/player/gran_female.iff",
				"object/creature/player/gotal_male.iff",
				"object/creature/player/gotal_female.iff",
				"object/creature/player/aqualish_female.iff",
				"object/creature/player/aqualish_male.iff",
				"object/creature/player/bith_female.iff",
				"object/creature/player/bith_male.iff",
				"object/creature/player/chiss_female.iff",
				"object/creature/player/chiss_male.iff",
				"object/creature/player/devaronian_male.iff",
				"object/creature/player/devaronian_female.iff",
				"object/creature/player/bothan_female.iff",
				"object/creature/player/bothan_male.iff",
				"object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/creature/player/ithorian_male.iff",
				"object/creature/player/ithorian_female.iff",
				"object/creature/player/moncal_male.iff",
				"object/creature/player/moncal_female.iff",
				"object/creature/player/rodian_male.iff",
				"object/creature/player/rodian_female.iff",
				"object/creature/player/sullustan_male.iff",
				"object/creature/player/sullustan_female.iff",
				"object/creature/player/trandoshan_male.iff",
				"object/creature/player/trandoshan_female.iff",
				"object/creature/player/twilek_male.iff",
				"object/creature/player/twilek_female.iff",
				"object/creature/player/wookiee_male.iff",
				"object/creature/player/wookiee_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff" },

	-- RANGEDATTACK, MELEEATTACK, FORCEATTACK, TRAPATTACK, GRENADEATTACK, HEAVYACIDBEAMATTACK,
	-- HEAVYLIGHTNINGBEAMATTACK, HEAVYPARTICLEBEAMATTACK, HEAVYROCKETLAUNCHERATTACK, HEAVYLAUNCHERATTACK
	attackType = RANGEDATTACK,

	-- ENERGY, KINETIC, ELECTRICITY, STUN, BLAST, HEAT, COLD, ACID, FORCE, LIGHTSABER
	damageType = STUN,

	-- NONE, LIGHT, MEDIUM, HEAVY
	armorPiercing = LIGHT,

	-- combat_rangedspecialize_bactarifle, combat_rangedspecialize_rifle, combat_rangedspecialize_pistol, combat_rangedspecialize_heavy, combat_rangedspecialize_carbine
	-- combat_meleespecialize_unarmed, combat_meleespecialize_twohand, combat_meleespecialize_polearm, combat_meleespecialize_onehand, combat_general,
	-- combat_meleespecialize_twohandlightsaber, combat_meleespecialize_polearmlightsaber, combat_meleespecialize_onehandlightsaber
	xpType = "combat_rangedspecialize_pistol",

	-- See http://www.ocdsoft.com/files/certifications.xls
	certificationsRequired = { "cert_pistol_republic_blaster" },
	-- See http://www.ocdsoft.com/files/accuracy.xls
	creatureAccuracyModifiers = { "pistol_accuracy" },

	creatureAimModifiers = { "pistol_aim", "aim" },

	-- See http://www.ocdsoft.com/files/defense.xls
	defenderDefenseModifiers = { "ranged_defense" },

	-- Leave as "dodge" for now, may have additions later
	defenderSecondaryDefenseModifiers = { "dodge" },

	-- See http://www.ocdsoft.com/files/speed.xls
	speedModifiers = { "pistol_speed" },

	-- Leave blank for now
	damageModifiers = { },


	-- The values below are the default values.  To be used for blue frog objects primarily
	healthAttackCost = 12,
	actionAttackCost = 6,
	mindAttackCost = 6,
	forceCost = 0,

	pointBlankRange = 0,
	pointBlankAccuracy = 15,

	idealRange = 30,
	idealAccuracy = 55,

	maxRange = 64,
	maxRangeAccuracy = 9,

	minDamage = 90,
	maxDamage = 325,

	attackSpeed = 2.2,

	woundsRatio = 20,

	numberExperimentalProperties = {1, 1, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2},
	experimentalProperties = {"XX", "XX", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "XX", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "null", "exp_durability", "expRange", "expEffeciency", "expEffeciency", "expEffeciency"},
	experimentalSubGroupTitles = {"null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "roundsused", "hitpoints", "midrangemod", "attackhealthcost", "attackactioncost", "attackmindcost"},
	experimentalMin = {0, 0, 17, 91, 5.5, 13, 1, 750, -15, 20, 58, 20},
	experimentalMax = {0, 0, 33, 169, 3.7, 23, 3, 1500, 0, 10, 31, 10},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_weapon_ranged_pistol_pistol_pvp, "object/weapon/ranged/pistol/pistol_pvp.iff")
