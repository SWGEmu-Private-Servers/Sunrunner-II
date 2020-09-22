local ObjectManager = require("managers.object.object_manager")

lifeDayScreenplay = ScreenPlay:new {
	numberOfActs = 1,

	mobiles = {
		{ mobile = "kkatamk", planet = "dungeon2", x = 52.3, z = 0.8, y = 16.4, angle = -19, cell = 14200836 }, 
		

		{ mobile = "oraalarri", planet = "kashyyyk", x = -2117, z = 17.2, y = -3.9, angle = 81, cell = 0 },
		{ mobile = "anarra", planet = "kashyyyk", x = -2068.4, z = 17.4, y = -82, angle = 76, cell = 0  },
		{ mobile = "radrrl", planet = "kashyyyk", x = -1905.8, z = 17.4, y = -75.8, angle = -18, cell = 0  },
		{ mobile = "tebeurra", planet = "kashyyyk", x = -1953.7, z = 17.4, y = 122.1, angle = -120, cell = 0  },
	},

	waypoints = {
		{ planet = "kashyyyk", x = -1756, y = 39, },
	},

	randomGifts = {"object/tangible/loot/quest/lifeday_orb.iff",
		"object/tangible/painting/painting_wookiee_m.iff",
		"object/tangible/painting/painting_wookiee_f.iff",
		"object/tangible/painting/painting_trees_s01.iff",
		"object/tangible/furniture/decorative/event_lifeday07_orb.iff",
		"object/tangible/holiday/life_day/rewards_09/lifeday_fireplace_02.iff",
		"object/tangible/furniture/lifeday/lifeday_banner_s01.iff",
		"object/tangible/furniture/lifeday/lifeday_banner_s02.iff",
		"object/tangible/furniture/lifeday/lifeday_banner_s03.iff",
		"object/tangible/furniture/lifeday/lifeday_bunting.iff",
		"object/tangible/storyteller/prop/pr_lifeday_decorated_tree.iff",
		"object/tangible/furniture/lifeday/lifeday_incense_burner.iff",
		"object/tangible/furniture/decorative/event_lifeday07_lamp.iff",
		"object/tangible/holiday/life_day/rewards_09/lifeday_lamp_01.iff",
		"object/tangible/holiday/life_day/rewards_09/lifeday_lamp_02.iff",
		"object/tangible/furniture/lifeday/lifeday_mini_tree.iff",
		"object/tangible/furniture/lifeday/lifeday_ornament_2010.iff",
		"object/tangible/furniture/lifeday/lifeday_painting_2010_s01.iff",
		"object/tangible/furniture/lifeday/lifeday_painting_2010_s02.iff",
		"object/tangible/furniture/lifeday/lifeday_painting_2010_s03.iff",
		"object/tangible/furniture/lifeday/lifeday_painting_2010_s04.iff",
		"object/tangible/furniture/lifeday/lifeday_painting_s01.iff",
		"object/tangible/furniture/lifeday/lifeday_painting_s02.iff",
		"object/tangible/furniture/lifeday/lifeday_painting_s03.iff",
		"object/tangible/furniture/lifeday/lifeday_painting_s04.iff",
		"object/tangible/furniture/lifeday/lifeday_painting_s05.iff",
		"object/tangible/furniture/decorative/event_lifeday05_painting_01.iff",
		"object/tangible/furniture/decorative/event_lifeday05_painting_02.iff",
		"object/tangible/furniture/decorative/event_lifeday05_painting_03.iff",
		"object/tangible/furniture/decorative/event_lifeday07_painting_01.iff",
		"object/tangible/event_perk/lifeday_painting.iff",
		"object/tangible/storyteller/prop/pr_lifeday_wroshyr_tree.iff",
		"object/tangible/holiday/life_day/rewards_09/lifeday_fireplace_01.iff",	
	},

	robe = "object/tangible/wearables/wookiee/wke_lifeday_robe.iff"
}

registerScreenPlay("lifeDayScreenplay", true)

function lifeDayScreenplay:start()
	if getFormattedTime():find("Dec") ~= nil then
		writeStringSharedMemory("lifeDayScreenplayName", "lifeDay" .. tostring(os.date('%Y')))
		self:spawnMobiles()
	end
end

function lifeDayScreenplay:spawnMobiles()
	local mobs = self.mobiles
	for i = 1, #mobs, 1 do
		if isZoneEnabled(mobs[i].planet) then
			spawnMobile(mobs[i].planet, mobs[i].mobile, 1, mobs[i].x, mobs[i].z, mobs[i].y, mobs[i].angle, mobs[i].cell)
		end
	end
end

function lifeDayScreenplay:getRandomEnabledPlanet()
	local enabledPlanets = {}
	for i = 1, #self.waypoints, 1 do
		if isZoneEnabled(self.waypoints[i].planet) then
			enabledPlanets[#enabledPlanets + 1] = i
		end
	end

	local rand = getRandomNumber(1, #enabledPlanets)
	return enabledPlanets[rand]
end

function lifeDayScreenplay:removeWaypoint(pPlayer)
	local playerID = SceneObject(pPlayer):getObjectID()
	local oldWaypointID = readData(playerID .. "lifeDayWaypointID")

	if oldWaypointID ~= "" and oldWaypointID ~= nil and oldWaypointID ~= 0 then
		local pGhost = CreatureObject(pPlayer):getPlayerObject()

		if (pGhost ~= nil) then
			PlayerObject(pGhost):removeWaypoint(oldWaypointID, true)
		end

		deleteData(playerID .. "lifeDayWaypointID")
	end
end

function lifeDayScreenplay:giveWaypoint(pPlayer)
	self:removeWaypoint(pPlayer)

	local num = self:getRandomEnabledPlanet()

	if num == "" or num == 0 or num == nil then
		CreatureObject(pPlayer):sendSystemMessage("Error finding a planet.")
		return
	end

	local playerID = CreatureObject(pPlayer):getObjectID()
	local pGhost = CreatureObject(pPlayer):getPlayerObject()

	if (pGhost ~= nil) then
		local newWaypointID = PlayerObject(pGhost):addWaypoint(self.waypoints[num].planet, "@quest/lifeday/lifeday:waypoint_name", "", self.waypoints[num].x, self.waypoints[num].y, 2, true, true, 0, 0) -- Life Day Celebration
		writeData(playerID .. "lifeDayWaypointID", newWaypointID)
		writeData(playerID .. ":lifeDayState1", 1)

		CreatureObject(pPlayer):sendSystemMessage("@quest/lifeday/lifeday:waypoint_updated") -- A waypoint to a planet holding a Life Day celebration was added to your datapad.

		createEvent(3600000, "lifeDayScreenplay", "removeWaypoint", pPlayer, "")
	end
end

function lifeDayScreenplay:giveRandomGift(pPlayer)
	if (pPlayer == nil) then
		return
	end

	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (pInventory == nil) then
		return
	end

	if SceneObject(pInventory):isContainerFullRecursive() then
		CreatureObject(pPlayer):sendSystemMessage("@quest/lifeday/lifeday:full_inv") -- Your inventory is full. Please make some room and speak to the NPC again to receive your gift.
		return
	end

	local rand = getRandomNumber(1, #self.randomGifts)
	local itemTemplate = self.randomGifts[rand]
	local pItem = giveItem(pInventory, itemTemplate, -1)

	writeScreenPlayData(pPlayer, readStringSharedMemory("lifeDayScreenplayName"), "completeagain", 1)

	self:removeWaypoint(pPlayer)
end

function lifeDayScreenplay:giveRobe(pPlayer)
	if (pPlayer == nil) then
		return
	end

	local pInventory = SceneObject(pPlayer):getSlottedObject("inventory")

	if (pInventory == nil) then
		return
	end

	if SceneObject(pInventory):isContainerFullRecursive() then
		CreatureObject(pPlayer):sendSystemMessage("@quest/lifeday/lifeday:full_inv") -- Your inventory is full. Please make some room and speak to the NPC again to receive your gift.
		return
	end

	local pItem = giveItem(pInventory, self.robe, -1)

	writeScreenPlayData(pPlayer, readStringSharedMemory("lifeDayScreenplayName"), "completeagain", 1)

	self:removeWaypoint(pPlayer)
end

function lifeDayScreenplay:noGift(pPlayer)
	if (pPlayer == nil) then
		return
	end

	writeScreenPlayData(pPlayer, readStringSharedMemory("lifeDayScreenplayName"), "completeagain", 1)
	self:removeWaypoint(pPlayer)
end
