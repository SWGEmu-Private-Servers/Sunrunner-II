dagobah_dark_jedi_camp = Lair:new {
	mobiles = {{"dark_adept", 2},{"dark_jedi_knight", 1}},
	bossMobiles = {{"dark_jedi_master",1}},
	spawnLimit = 8,
	buildingsVeryEasy = {"object/building/poi/dantooine_mokk_large1.iff","object/building/poi/dantooine_mokk_large2.iff"},
	buildingsEasy = {"object/building/poi/dantooine_mokk_large1.iff","object/building/poi/dantooine_mokk_large2.iff"},
	buildingsMedium = {"object/building/poi/dantooine_mokk_large1.iff","object/building/poi/dantooine_mokk_large2.iff"},
	buildingsHard = {"object/building/poi/dantooine_mokk_large1.iff","object/building/poi/dantooine_mokk_large2.iff"},
	buildingsVeryHard = {"object/building/poi/dantooine_mokk_large1.iff","object/building/poi/dantooine_mokk_large2.iff"},
	missionBuilding = "object/tangible/lair/base/objective_power_node.iff",
	mobType = "npc",
	buildingType = "theater"
}

addLairTemplate("dagobah_dark_jedi_camp", dagobah_dark_jedi_camp)
