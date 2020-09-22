/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.
*/

#include "server/zone/objects/intangible/ShipControlDevice.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/Zone.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/scene/PlayClientEffectLocMessage.h"
#include "templates/params/creature/CreatureFlag.h"
#include "server/zone/objects/region/CityRegion.h"

//#include "server/zone/objects/intangible/tasks/CallShipTask.h"
#include "server/zone/objects/intangible/tasks/CenterpointTravelTask.h"
#include "server/zone/objects/intangible/tasks/TansariiTravelTask.h"
#include "server/zone/objects/intangible/tasks/NovaOrionTravelTask.h"

#include "server/zone/objects/scene/SceneObject.h"


void ShipControlDeviceImplementation::playHyperCenterpointEffectTask(CreatureObject* player) {
		if (!player->checkCooldownRecovery("quickTravelCooldown")) {

			const Time* cdTime = player->getCooldownTime("quickTravelCooldown");

			int timeLeft = (floor((float)cdTime->miliDifference() / 1000) * -1) / 60;
			
			StringIdChatParameter stringId;

			stringId.setStringId("@skl_use:sys_quicktravel_delay"); // You must wait %DI minutes to call your ship again.
			
			stringId.setDI(timeLeft);

			player->sendSystemMessage(stringId);

			return;
		}

		if (player->isInCombat()) {
			player->sendSystemMessage("You cannot call a ship while in combat");
			return;
		}

		if (player->isIncapacitated() || player->isDead()) {
			player->sendSystemMessage("You cannot call a ship while dead or incapacitated");
			return;
		}

		PlayerObject* ghost = player->getPlayerObject();

		if (ghost->hasPvpTef() || ghost->hasBhTef()) {
			player->sendSystemMessage("You cannot call a ship while flagged!");
			return;
		}

		if (player->getCityRegion() != nullptr) {
			player->sendSystemMessage("You cannot call your ship in a municipal zone!");
			return;
		}

		if (player->isRidingMount()) {
			player->sendSystemMessage("You cannot call your ship while riding a mount!");
			return;
		}

		ManagedReference<TangibleObject*> controlledObject = this->controlledObject.get();

		if (controlledObject->getServerObjectCRC() == 0xD1D6DA4A) {
			PlayClientEffectLoc* ArcLaunch = new PlayClientEffectLoc("clienteffect/arc170_landing.cef", player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ() + 5, player->getPositionY());
			player->broadcastMessage(ArcLaunch, true);
	
			//player->playEffect("clienteffect/arc170_landing.cef");
		}
		if (controlledObject->getServerObjectCRC() == 0x225C1758) {
			PlayClientEffectLoc* HavocLaunch = new PlayClientEffectLoc("clienteffect/havoc_landing.cef", player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ() + 5, player->getPositionY());
			player->broadcastMessage(HavocLaunch, true);
	
			//player->playEffect("clienteffect/havoc_landing.cef");
		}
		if (controlledObject->getServerObjectCRC() == 0x4735F720) {
		
			PlayClientEffectLoc* TwingLaunch = new PlayClientEffectLoc("clienteffect/twing_landing.cef", player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ() + 5, player->getPositionY());
			player->broadcastMessage(TwingLaunch, true);
	
			//player->playEffect("clienteffect/twing_landing.cef");

		}

		player->playMusicMessage("sound/veh_transport_landing.snd");

		Reference<CenterpointTravelTask*> centerpointTravel = new CenterpointTravelTask(_this.getReferenceUnsafeStaticCast(), player, "centerpoint_travel");

		player->addCooldown("quickTravelCooldown", 300 * 1000); 

		player->addPendingTask("centerpoint_travel", centerpointTravel, 10 * 1000);

}

void ShipControlDeviceImplementation::playHyperTansariiEffectTask(CreatureObject* player) {
		if (!player->checkCooldownRecovery("quickTravelCooldown")) {

			const Time* cdTime = player->getCooldownTime("quickTravelCooldown");

			int timeLeft = (floor((float)cdTime->miliDifference() / 1000) * -1) / 60;

			StringIdChatParameter stringId;

			stringId.setStringId("@skl_use:sys_quicktravel_delay"); // You must wait %DI minutes to call your ship again.
			
			stringId.setDI(timeLeft);

			player->sendSystemMessage(stringId);

			return;
		}

		if (player->isInCombat()) {
			player->sendSystemMessage("You cannot call a ship while in combat");
			return;
		}

		if (player->isIncapacitated() || player->isDead()) {
			player->sendSystemMessage("You cannot call a ship while dead or incapacitated");
			return;
		}

		PlayerObject* ghost = player->getPlayerObject();

		if (ghost->hasPvpTef() || ghost->hasBhTef()) {
			player->sendSystemMessage("You cannot call a ship while flagged!");
			return;
		}

		if (player->getCityRegion() != nullptr) {
			player->sendSystemMessage("You cannot call your ship in a municipal zone!");
			return;
		}

		if (player->isRidingMount()) {
			player->sendSystemMessage("You cannot call your ship while riding a mount!");
			return;
		}

		ManagedReference<TangibleObject*> controlledObject = this->controlledObject.get();

		if (controlledObject->getServerObjectCRC() == 0xD1D6DA4A) {
			PlayClientEffectLoc* ArcLaunch = new PlayClientEffectLoc("clienteffect/arc170_landing.cef", player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ() + 5, player->getPositionY());
			player->broadcastMessage(ArcLaunch, true);
	
			//player->playEffect("clienteffect/arc170_landing.cef");
		}
		if (controlledObject->getServerObjectCRC() == 0x225C1758) {
			PlayClientEffectLoc* HavocLaunch = new PlayClientEffectLoc("clienteffect/havoc_landing.cef", player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ() + 5, player->getPositionY());
			player->broadcastMessage(HavocLaunch, true);
	
			//player->playEffect("clienteffect/havoc_landing.cef");
		}
		if (controlledObject->getServerObjectCRC() == 0x4735F720) {
		
			PlayClientEffectLoc* TwingLaunch = new PlayClientEffectLoc("clienteffect/twing_landing.cef", player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ() + 5, player->getPositionY());
			player->broadcastMessage(TwingLaunch, true);
	
			//player->playEffect("clienteffect/twing_landing.cef");

		}

		player->playMusicMessage("sound/veh_transport_landing.snd");

		Reference<TansariiTravelTask*> tansariiTravel = new TansariiTravelTask(_this.getReferenceUnsafeStaticCast(), player, "tansarii_travel");

		player->addCooldown("quickTravelCooldown", 300 * 1000); 

		player->addPendingTask("tansarii_travel", tansariiTravel, 10 * 1000);

}

void ShipControlDeviceImplementation::playHyperNovaEffectTask(CreatureObject* player) {
		
		if (!player->checkCooldownRecovery("quickTravelCooldown")) {

			const Time* cdTime = player->getCooldownTime("quickTravelCooldown");

			int timeLeft = (floor((float)cdTime->miliDifference() / 1000) * -1) / 60;

			StringIdChatParameter stringId;

			stringId.setStringId("@skl_use:sys_quicktravel_delay"); // You must wait %DI minutes to call your ship again.
			
			stringId.setDI(timeLeft);

			player->sendSystemMessage(stringId);

			return;
		}

		if (player->isInCombat()) {
			player->sendSystemMessage("You cannot call a ship while in combat");
			return;
		}

		if (player->isIncapacitated() || player->isDead()) {
			player->sendSystemMessage("You cannot call a ship while dead or incapacitated");
			return;
		}

		PlayerObject* ghost = player->getPlayerObject();

		if (ghost->hasPvpTef() || ghost->hasBhTef()) {
			player->sendSystemMessage("You cannot call a ship while flagged!");
			return;
		}

		if (player->getCityRegion() != nullptr) {
			player->sendSystemMessage("You cannot call your ship in a municipal zone!");
			return;
		}

		if (player->isRidingMount()) {
			player->sendSystemMessage("You cannot call your ship while riding a mount!");
			return;
		}

		ManagedReference<TangibleObject*> controlledObject = this->controlledObject.get();

		if (controlledObject->getServerObjectCRC() == 0xD1D6DA4A) {
			PlayClientEffectLoc* ArcLaunch = new PlayClientEffectLoc("clienteffect/arc170_landing.cef", player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ() + 5, player->getPositionY());
			player->broadcastMessage(ArcLaunch, true);
	
			//player->playEffect("clienteffect/arc170_landing.cef");
		}
		if (controlledObject->getServerObjectCRC() == 0x225C1758) {
			PlayClientEffectLoc* HavocLaunch = new PlayClientEffectLoc("clienteffect/havoc_landing.cef", player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ() + 5, player->getPositionY());
			player->broadcastMessage(HavocLaunch, true);
	
			//player->playEffect("clienteffect/havoc_landing.cef");
		}
		if (controlledObject->getServerObjectCRC() == 0x4735F720) {
		
			PlayClientEffectLoc* TwingLaunch = new PlayClientEffectLoc("clienteffect/twing_landing.cef", player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ() + 5, player->getPositionY());
			player->broadcastMessage(TwingLaunch, true);
	
			//player->playEffect("clienteffect/twing_landing.cef");

		}

		player->playMusicMessage("sound/veh_transport_landing.snd");

		Reference<NovaOrionTravelTask*> novaorionTravel = new NovaOrionTravelTask(_this.getReferenceUnsafeStaticCast(), player, "novaorion_travel");

		player->addCooldown("quickTravelCooldown", 300 * 1000); 

		player->addPendingTask("novaorion_travel", novaorionTravel, 10 * 1000);

}

void ShipControlDeviceImplementation::fillObjectMenuResponse(ObjectMenuResponse* menuResponse, CreatureObject* player) {

	//ControlDeviceImplementation::fillObjectMenuResponse(menuResponse, player);

	ManagedReference<TangibleObject*> controlledObject = this->controlledObject.get();

	Zone* zone = player->getZone();

	//if (!zone->getZoneName().contains("space_")) {
//	if (!controlledObject->isInQuadTree()) {
//		menuResponse->addRadialMenuItem(60, 3, "Call Ship"); //Launch -
//	} else {
		menuResponse->addRadialMenuItem(240, 3, "Quick Travel Locations");
		menuResponse->addRadialMenuItemToRadialID(240, 241, 3, "Centerpoint Station");
		menuResponse->addRadialMenuItemToRadialID(240, 242, 3, "Tansarii Point Station");
		menuResponse->addRadialMenuItemToRadialID(240, 243, 3, "Nova Orion Station"); 
//	}	  
}

bool ShipControlDeviceImplementation::canBeTradedTo(CreatureObject* player, CreatureObject* receiver, int numberInTrade) {
	ManagedReference<SceneObject*> datapad = receiver->getSlottedObject("datapad");

	if (datapad == nullptr)
		return false;

	ManagedReference<PlayerManager*> playerManager = player->getZoneServer()->getPlayerManager();

	int shipsInDatapad = numberInTrade;
	int maxStoredShips = playerManager->getBaseStoredShips();

	for (int i = 0; i < datapad->getContainerObjectsSize(); i++) {
		Reference<SceneObject*> obj =  datapad->getContainerObject(i).castTo<SceneObject*>();

		if (obj != nullptr && obj->isShipControlDevice() ){
			shipsInDatapad++;
		}
	}

	if( shipsInDatapad >= maxStoredShips){
		player->sendSystemMessage("That person has too many ships in their datapad");
		receiver->sendSystemMessage("You already have the maximum number of ships that you can own.");
		return false;
	}

	return true;
}

