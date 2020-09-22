CityScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "CityScreenPlay",

	planet = "",

	gcwMobs = {},
}

function CityScreenPlay:spawnGcwMobiles()
	if (isZoneEnabled(self.planet)) then
		local controllingFaction = getControllingFaction(self.planet)
		local difficulty = getWinningFactionDifficultyScaling(self.planet)

		if controllingFaction == FACTIONNEUTRAL then
			controllingFaction = FACTIONIMPERIAL
		end

		for i = 1, #self.gcwMobs do
			self:spawnMob(i, controllingFaction, difficulty)
		end
	end
end

function CityScreenPlay:spawnMob(num, controllingFaction, difficulty, pPlayer)
	local mobsTable = self.gcwMobs

	if num <= 0 or num > #mobsTable then
		return
	end

	local mobTable = mobsTable[num]
	local pNpc = nil
	local npcTemplate = ""
	local npcMood = ""
	local ishero = 0

	if controllingFaction == FACTIONIMPERIAL then
		npcTemplate = mobTable[1]
		npcMood = mobTable[8]
	elseif controllingFaction == FACTIONREBEL then
		npcTemplate = mobTable[2]
		npcMood = mobTable[9]
	end

	local scaling = ""
	if difficulty > 1 and creatureTemplateExists(npcTemplate .. "_hard") then
		scaling = "_hard"
	end

	if npcTemplate == "imperial_battlefield_boss" or npcTemplate == "rebel_battlefield_boss" then
		ishero = 1
	end

	if npcTemplate == "imperial_gcw_vendor" or npcTemplate == "rebel_gcw_vendor" then
		ishero = 1
	end

	if npcTemplate == "imperial_naboo_gcw_vendor" or npcTemplate == "rebel_naboo_gcw_vendor" then
		ishero = 1
	end

	if npcTemplate == "imperial_hoth_gcw_vendor" or npcTemplate == "rebel_hoth_gcw_vendor" then
		ishero = 1
	end

	if npcTemplate == "imperial_tatooine_gcw_vendor" or npcTemplate == "rebel_tatooine_gcw_vendor" then
		ishero = 1
	end

	if ishero == 1 then	
		pNpc = spawnMobile(self.planet, npcTemplate .. scaling, 0, mobTable[3], mobTable[4], mobTable[5], mobTable[6], mobTable[7])	
		createObserver(OBJECTDESTRUCTION, self.screenplayName, "herokilled", pNpc)
	else
	pNpc = spawnMobile(self.planet, npcTemplate .. scaling, 0, mobTable[3], mobTable[4], mobTable[5], mobTable[6], mobTable[7])
	end

	if pNpc ~= nil then
		if npcMood ~= "" then
			self:setMoodString(pNpc, npcMood)
		end
		if mobTable[10] then
			local aiAgent = AiAgent(pNpc)
			aiAgent:setCreatureBit(SCANNING_FOR_CONTRABAND)
		end

	end



	if pNpc ~= nil then
		createObserver(CREATUREDESPAWNED, self.screenplayName, "onDespawn", pNpc)
		writeData(SceneObject(pNpc):getObjectID(), num)
	end
end

function CityScreenPlay:onDespawn(pAiAgent)
	if pAiAgent == nil or not SceneObject(pAiAgent):isAiAgent() then
		printf("pAiAgent is nil or not an AiAgent")
		return
	end

	local oid = SceneObject(pAiAgent):getObjectID()
	local mobNumber = readData(oid)
	local mobname = SceneObject(pAiAgent):getObjectName()

	if mobname == "imperial_tatooine_gcw_vendor" or mobname == "alliance_tatooine_gcw_vendor" then
		deleteData(oid)
		createEvent(3600000, self.screenplayName, "respawn", nil, tostring(mobNumber))
	elseif mobname == "imperial_naboo_gcw_vendor" or mobname == "alliance_naboo_gcw_vendor" then
		deleteData(oid)
		createEvent(3600000, self.screenplayName, "respawn", nil, tostring(mobNumber))
	elseif mobname == "imperial_corellia_gcw_vendor" or mobname == "alliance_corellia_gcw_vendor" then
		deleteData(oid)
		createEvent(3600000, self.screenplayName, "respawn", nil, tostring(mobNumber))
	elseif mobname == "imperial_battlefield_boss" or mobname == "rebel_battlefield_boss" then
		deleteData(oid)
		createEvent(3600000, self.screenplayName, "respawn", nil, tostring(mobNumber))
	else
	deleteData(oid)
	createEvent(300000, self.screenplayName, "respawn", nil, tostring(mobNumber))
    end
	return 1
end

function CityScreenPlay:respawn(pAiAgent, args)
	local mobNumber = tonumber(args)
	local controllingFaction = getControllingFaction(self.planet)
	local difficulty = getWinningFactionDifficultyScaling(self.planet)

	if controllingFaction == FACTIONNEUTRAL then
		controllingFaction = FACTIONIMPERIAL
	end

	self:spawnMob(mobNumber, controllingFaction, difficulty)
end

function CityScreenPlay:herokilled(pNpc, pPlayer)
	if (pPlayer == nil) then
	end
	
	if (CreatureObject(pPlayer):isGrouped()) then
			local groupSize = CreatureObject(pPlayer):getGroupSize()
			for i = 0, groupSize - 1, 1 do
					local pMember = CreatureObject(pPlayer):getGroupMember(i)
					if pMember ~= nil and CreatureObject(pPlayer):isInRangeWithObject(pMember, 128) and SceneObject(pMember):isPlayerCreature() then
							local pGhost = CreatureObject(pMember):getPlayerObject()
							if (pGhost ~= nil) then
									if (CreatureObject(pPlayer):isImperial() == true) then                                        
											PlayerObject(pGhost):increaseFactionStanding("imperial", 1000)
									elseif (CreatureObject(pPlayer):isRebel() == true) then                                        
											PlayerObject(pGhost):increaseFactionStanding("rebel", 1000)
									end
							end
					end
			end
	else 
			local pGhost = CreatureObject(pPlayer):getPlayerObject()
			if (CreatureObject(pPlayer):isImperial() == true) then                                        
					PlayerObject(pGhost):increaseFactionStanding("imperial", 1000)
			elseif (CreatureObject(pPlayer):isRebel() == true) then                                        
					PlayerObject(pGhost):increaseFactionStanding("rebel", 1000)
			end
	end
	return 0
end
