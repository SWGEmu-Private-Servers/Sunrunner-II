hoth_destroy_missions = {
	minLevelCeiling = 45,

	lairSpawns = {

		{
			lairTemplateName = "hoth_wampa_lair",
			minDifficulty = 60,
			maxDifficulty = 70,
			size = 25,
		},
		{
			lairTemplateName = "hoth_grizzly_wampa_lair",
			minDifficulty = 56,
			maxDifficulty = 60,
			size = 25,
		},

		{
			lairTemplateName = "hoth_tauntaun_lair",
			minDifficulty = 8,
			maxDifficulty = 14,
			size = 25,
		},

		{
			lairTemplateName = "hoth_bold_tauntaun_lair",
			minDifficulty = 12,
			maxDifficulty = 20,
			size = 25,
		},

		{
			lairTemplateName = "hoth_hog_lair",
			minDifficulty = 16,
			maxDifficulty = 28,
			size = 25,
		},

		{
			lairTemplateName = "hoth_belligerent_hoth_hog_lair",
			minDifficulty = 26,
			maxDifficulty = 36,
			size = 25,
		},

		{
			lairTemplateName = "hoth_mastodon_lair",
			minDifficulty = 36,
			maxDifficulty = 46,
			size = 25,
		},
		{
			lairTemplateName = "hoth_towering_mastodon_lair",
			minDifficulty = 50,
			maxDifficulty = 60,
			size = 25,
		},



	}
}

addDestroyMissionGroup("hoth_destroy_missions", hoth_destroy_missions);
