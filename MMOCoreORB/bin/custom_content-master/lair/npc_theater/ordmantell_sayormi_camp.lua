ordmantell_sayormi_camp = Lair:new {
	mobiles = {{"sayormi_duelist", 3},{"sayormi_brute", 5}},
	bossMobiles = {{"sayormi_sorceress",1}},
	spawnLimit = 15,
	buildingsVeryEasy = {"object/building/poi/endor_marauder_medium.iff","object/building/poi/endor_marauder_medium2.iff"},
	buildingsEasy = {"object/building/poi/endor_marauder_medium.iff","object/building/poi/endor_marauder_medium2.iff"},
	buildingsMedium = {"object/building/poi/endor_marauder_medium.iff","object/building/poi/endor_marauder_medium2.iff"},
	buildingsHard = {"object/building/poi/endor_marauder_medium.iff","object/building/poi/endor_marauder_medium2.iff"},
	buildingsVeryHard = {"object/building/poi/endor_marauder_medium.iff","object/building/poi/endor_marauder_medium2.iff"},
	missionBuilding = "object/tangible/lair/base/poi_all_lair_wooden.iff",
	mobType = "npc",
	buildingType = "theater"
}

addLairTemplate("ordmantell_sayormi_camp", ordmantell_sayormi_camp)
