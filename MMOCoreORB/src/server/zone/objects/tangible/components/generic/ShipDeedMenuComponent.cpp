
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/intangible/ShipControlDevice.h"
#include "server/zone/Zone.h"
//#include "server/zone/ZoneServer.h"
#include "server/ServerCore.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/objects/ship/ShipObject.h"
#include "ShipDeedMenuComponent.h"


void ShipDeedMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	if (!sceneObject->isTangibleObject())
		return;

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	menuResponse->addRadialMenuItem(50, 3, "Acquire Ship"); 
	

}

int ShipDeedMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!player->isPlayerCreature())
		return 0;

	if(selectedID == 50) {
		if (!sceneObject->isASubChildOf(player)) {
			player->sendSystemMessage("@loot_schematic:must_be_holding"); // You must be holding that in order to use it.
			return 0;
		}

		ManagedReference<PlayerManager*> playerManager = player->getZoneServer()->getPlayerManager();
    	ManagedReference<SceneObject*> datapad = player->getSlottedObject("datapad");
		int shipsInDatapad = 0;
		int maxStoredShips = playerManager->getBaseStoredShips();

		for (int i = 0; i < datapad->getContainerObjectsSize(); i++) {
			Reference<SceneObject*> obj = datapad->getContainerObject(i).castTo<SceneObject*>();

			if (obj != nullptr && obj->isShipControlDevice() )
				shipsInDatapad++;
		}

		if ( shipsInDatapad >= maxStoredShips){
			player->sendSystemMessage("You already have the maximum number of ships that you can own.");
			return 0;
		}

    	ZoneServer* zoneServer = player->getZoneServer();
		
		if (sceneObject->getServerObjectCRC() == 0x2DC0FCB4) {  // ARC 170
	  		Reference<ShipControlDevice*> shipControlDevice = zoneServer->createObject(STRING_HASHCODE("object/intangible/ship/arc170_pcd.iff"), 1).castTo<ShipControlDevice*>();

    		Reference<ShipObject*> ship = zoneServer->createObject(STRING_HASHCODE("object/ship/player/player_arc170.iff"), 1).castTo<ShipObject*>();

			shipControlDevice->setControlledObject(ship);

			if (!shipControlDevice->transferObject(ship, 4))
				error("Adding of ship to device failed");

		 	if (datapad != nullptr) {
		   	 	if (!datapad->transferObject(shipControlDevice, -1)) {
		       	shipControlDevice->destroyObjectFromDatabase(true);
		  		}
	   		} else {
		 	    shipControlDevice->destroyObjectFromDatabase(true);
				error("could not get datapad from player");
		 	}

			TangibleObject* tano = cast<TangibleObject*>(sceneObject);

			if(tano != nullptr) {
				tano->decreaseUseCount();
				player->sendSystemMessage("You have acquired a new ship! (Relog or travel for it to appear in your datapad)"); 
			}
		return 0;
		} 

		if (sceneObject->getServerObjectCRC() == 0xAB889CD4) {	//T-Wing

	  		Reference<ShipControlDevice*> shipControlDevice = zoneServer->createObject(STRING_HASHCODE("object/intangible/ship/twing_pcd.iff"), 1).castTo<ShipControlDevice*>();

    		Reference<ShipObject*> ship = zoneServer->createObject(STRING_HASHCODE("object/ship/player/player_twing.iff"), 1).castTo<ShipObject*>();

			shipControlDevice->setControlledObject(ship);

			if (!shipControlDevice->transferObject(ship, 4))
				error("Adding of ship to device failed");
				
		 	if (datapad != nullptr) {
		   	 	if (!datapad->transferObject(shipControlDevice, -1)) {
		       	shipControlDevice->destroyObjectFromDatabase(true);
		  		}
	   		} else {
		 	    shipControlDevice->destroyObjectFromDatabase(true);
				error("could not get datapad from player");
		 	}

			TangibleObject* tano = cast<TangibleObject*>(sceneObject);

			if(tano != NULL) {
				tano->decreaseUseCount();
				player->sendSystemMessage("You have acquired a new ship! (Relog or travel for it to appear in your datapad)"); 
			}
		return 0;

		}

		if (sceneObject->getServerObjectCRC() == 0xBE7D2BD0) {	//Havoc

	  		Reference<ShipControlDevice*> shipControlDevice = zoneServer->createObject(STRING_HASHCODE("object/intangible/ship/havoc_pcd.iff"), 1).castTo<ShipControlDevice*>();

    		Reference<ShipObject*> ship = zoneServer->createObject(STRING_HASHCODE("object/ship/player/player_havoc.iff"), 1).castTo<ShipObject*>();

   			shipControlDevice->setControlledObject(ship);

			if (!shipControlDevice->transferObject(ship, 4))
				error("Adding of ship to device failed");

		 	if (datapad != nullptr) {
		   	 	if (!datapad->transferObject(shipControlDevice, -1)) {
		       	shipControlDevice->destroyObjectFromDatabase(true);
		  		}
	   		} else {
		 	    shipControlDevice->destroyObjectFromDatabase(true);
				error("could not get datapad from player");
		 	}

			TangibleObject* tano = cast<TangibleObject*>(sceneObject);

			if(tano != nullptr) {
				tano->decreaseUseCount();
				player->sendSystemMessage("You have acquired a new ship! (Relog or travel for it to appear in your datapad)"); 
			}
		return 0;

		}


	} else
		return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, player, selectedID);

	return 0;
}

