
object_weapon_ranged_heavy_heavy_pvp = object_weapon_ranged_heavy_shared_heavy_pvp:new {
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
	weaponType = RANGEDWEAPON,

	-- ENERGY, KINETIC, ELECTRICITY, STUN, BLAST, HEAT, COLD, ACID, LIGHTSABER
	damageType = STUN,

	-- NONE, LIGHT, MEDIUM, HEAVY
	armorPiercing = LIGHT,

	-- combat_rangedspecialize_bactarifle, combat_rangedspecialize_rifle, combat_rangedspecialize_pistol, combat_rangedspecialize_heavy, combat_rangedspecialize_carbine
	-- combat_meleespecialize_unarmed, combat_meleespecialize_twohand, combat_meleespecialize_polearm, combat_meleespecialize_onehand, combat_general,
	-- combat_meleespecialize_twohandlightsaber, combat_meleespecialize_polearmlightsaber, combat_meleespecialize_onehandlightsaber
	xpType = "combat_rangedspecialize_heavy",

	-- See http://www.ocdsoft.com/files/certifications.xls
	certificationsRequired = { "cert_rifle_flame_thrower" },
	-- See http://www.ocdsoft.com/files/accuracy.xls
	creatureAccuracyModifiers = { "thrown_accuracy" },

	creatureAimModifiers = { "aim" },

	-- See http://www.ocdsoft.com/files/defense.xls
	defenderDefenseModifiers = { "ranged_defense" },

	-- Leave as "dodge" for now, may have additions later
	defenderSecondaryDefenseModifiers = { "block" },

	-- See http://www.ocdsoft.com/files/speed.xls
	speedModifiers = { "thrown_speed" },

	-- Leave blank for now
	damageModifiers = {  },


	-- The values below are the default values.  To be used for blue frog objects primarily
	healthAttackCost = 20,
	actionAttackCost = 45,
	mindAttackCost = 35,
	forceCost = 0,

	pointBlankRange = 0,
	pointBlankAccuracy = -50,

	idealRange = 40,
	idealAccuracy = 0,

	maxRange = 64,
	maxRangeAccuracy = -25,

	minDamage = 190,
	maxDamage = 550,

	attackSpeed = 6.4,

	woundsRatio = 14,

	numberExperimentalProperties = {1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2},
	experimentalProperties = {"XX", "XX", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ", "CD", "OQ"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "exp_durability", "expRange", "expEffeciency", "expEffeciency", "expEffeciency"},
	experimentalSubGroupTitles = {"null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "hitpoints", "midrangemod", "attackhealthcost", "attackactioncost", "attackmindcost"},
	experimentalMin = {0, 0, 53, 95, 6.2, 19, 750, -10, 26, 58, 55},
	experimentalMax = {0, 0, 98, 176, 4.3, 35, 1500, 10, 14, 32, 24},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_weapon_ranged_heavy_heavy_pvp, "object/weapon/ranged/heavy/heavy_pvp.iff")
