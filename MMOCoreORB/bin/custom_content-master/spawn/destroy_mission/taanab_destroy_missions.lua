taanab_destroy_missions = {
	minLevelCeiling = 25,

	lairSpawns = {
		{
			lairTemplateName = "talus_crazed_roba_lair_neutral_large",
			minDifficulty = 8,
			maxDifficulty = 11,
			size = 25,
		},
		{
			lairTemplateName = "taanab_norulac_raider_camp",
			minDifficulty = 64,
			maxDifficulty = 68,
			size = 25,
		},
		{
			lairTemplateName = "taanab_nerf_grassland_lair",
			minDifficulty = 34,
			maxDifficulty = 38,
			size = 25,
		},

		{
			lairTemplateName = "taanab_nerf_stonefoot_lair",
			minDifficulty = 38,
			maxDifficulty = 42,
			size = 25,
		},
		{
			lairTemplateName = "taanab_ambrian_staga_lair",
			minDifficulty = 4,
			maxDifficulty = 12,
			size = 25,
		},
		{
			lairTemplateName = "tatooine_feral_bantha_lair_neutral_large",
			minDifficulty = 11,
			maxDifficulty = 15,
			size = 25,
		},

	}
}

addDestroyMissionGroup("taanab_destroy_missions", taanab_destroy_missions);
