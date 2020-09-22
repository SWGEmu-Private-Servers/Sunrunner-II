local ObjectManager = require("managers.object.object_manager")
RaceTrackManager = require("screenplays.racetracks.racetrackengine")


kuat_racetrack_screenplay = RaceTrack:new {
	trackConfig={
		debugMode = 0, -- 0 = off, 1 = print debug messages
		planetName = "kuat", -- The planet the Track is on
		badgeToAward=BDG_RACING_KUAT_CANYON,  -- Badge to be awarded for best daily time
		trackName="KUATRT",  -- Internal trackname , should be unique to the track
		className="kuat_racetrack_screenplay", -- Class name of this class
		trackCheckpoint="@theme_park/racing/racing:kuat_waypoint_name_checkpoint", --Waypoint names
		trackLaptime="@theme_park/racing/racing:kuat_laptime_checkpoint", -- System message sent at each waypoint
		timeResolution=2, -- number of decimal places to use for the laptimes 0 = none, 1 = well 1 etc
		expiryTime = (1*3600), --Amount of time in seconds that a player will be expired from the track (stops silly times over this limit)
		resetTime = (22*3600)+(10*60), --Time of day in seconds that track resets High Scores
		waypointRadius=10, -- size of the waypoint observer
		raceCoordinator = {x=3889,y=7024,z=1}, -- Location of the race coordinator. Note the Z coord is VERY important or conversations break
		waypoints = { 
			{x = 4982, y = 7019},
			{x = 5844, y = 5985},
			{x = 5967, y = 3680},
			{x = 5618, y = 3206},
			{x = 5086, y = 3031},
			{x = 3802, y = 3889},
			{x = 3074, y = 5082},
			{x = 3016, y = 5965},
			{x = 3537, y = 6807},
			{x = 3889, y = 7024}
		}
	}
}

registerScreenPlay("kuat_racetrack_screenplay", true)

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function kuat_racetrack_screenplay:start()
	if (isZoneEnabled(self.trackConfig.planetName)) then
		self:spawnMobiles()
		self:createRaceTrack()
	end
end

function kuat_racetrack_screenplay:spawnMobiles()
	local pCoord = spawnMobile(self.trackConfig.planetName, "kuat_race_coordinator", 1, self.trackConfig.raceCoordinator.x, self.trackConfig.raceCoordinator.z, self.trackConfig.raceCoordinator.y, 35, 0 )
end

function kuat_racetrack_screenplay:enteredWaypoint(pActiveArea, pObject)
	return self:processWaypoint(pActiveArea, pObject)
end

kuat_racetrack_convo_handler = conv_handler:new {}

function kuat_racetrack_convo_handler:runScreenHandlers(pConvTemplate, pPlayer, pNpc, selectedOption, pConvScreen)
	local screen = LuaConversationScreen(pConvScreen)
	local screenID = screen:getScreenID()
	if ( screenID == "cs_jsPlumb_1_116" ) then
		kuat_racetrack_screenplay:startRacing(pPlayer)
	elseif ( screenID == "cs_jsPlumb_1_181" ) then -- Personal Best
		kuat_racetrack_screenplay:displayPersonalBestTime(pPlayer)
	elseif ( screenID == "cs_jsPlumb_1_207" ) then -- Track Best
		kuat_racetrack_screenplay:displayTrackBestTime(pPlayer)
	end
	return pConvScreen
end
