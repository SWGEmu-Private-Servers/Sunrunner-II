nalhutta_hutt_security_force_camp = Lair:new {
	mobiles = {{"hutt_security_force_member", 3}},
	bossMobiles = {{"hutt_security_force_member",1}},
	spawnLimit = 15,
	buildingsVeryEasy = {"object/building/poi/tatooine_swoop_medium.iff","object/building/poi/tatooine_swoop_medium2.iff"},
	buildingsEasy = {"object/building/poi/tatooine_swoop_medium.iff","object/building/poi/tatooine_swoop_medium2.iff"},
	buildingsMedium = {"object/building/poi/tatooine_swoop_medium.iff","object/building/poi/tatooine_swoop_medium2.iff"},
	buildingsHard = {"object/building/poi/tatooine_swoop_medium.iff","object/building/poi/tatooine_swoop_medium2.iff"},
	buildingsVeryHard = {"object/building/poi/tatooine_swoop_medium.iff","object/building/poi/tatooine_swoop_medium2.iff"},
	missionBuilding = "object/tangible/lair/base/objective_power_node.iff",
	mobType = "npc",
	buildingType = "theater"
}

addLairTemplate("nalhutta_hutt_security_force_camp", nalhutta_hutt_security_force_camp)
