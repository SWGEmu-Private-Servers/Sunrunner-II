#include "server/zone/objects/creature/CreatureObject.h"
#include "SmugglerCrateMenuComponent.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"

#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/managers/mission/MissionManager.h"


void SmugglerCrateMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

}

int SmugglerCrateMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!player->isPlayerCreature())
		return 0;

	if (!sceneObject->isASubChildOf(player))
		return 0;

	if (selectedID == 20) {
		ManagedReference<LootManager*> lootManager = sceneObject->getZone()->getZoneServer()->getLootManager();

		if (lootManager == nullptr)
			return 0;

		ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");

		if (inventory->getContainerVolumeLimit() < inventory->getCountableObjectsRecursive() + 2) {
			player->sendSystemMessage("@error_message:inv_full");
			return 0;
		}

		TransactionLog trx(TrxCode::NPCLOOTCLAIM, player);
		if (lootManager->createLoot(trx, inventory, "g_smuggler_crate", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_smuggler_crate failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_smuggler_crate", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_smuggler_crate failed";
		}
		
		// lootManager->createLoot(inventory, "g_smuggler_crate", 1);
		// lootManager->createLoot(inventory, "g_smuggler_crate", 1);
		sceneObject->destroyObjectFromWorld(true);
		sceneObject->destroyObjectFromDatabase(true);

		MissionManager* missionManager = player->getZoneServer()->getMissionManager();
		int reward = 100000;

		missionManager->addPlayerToBountyList(player->getObjectID(), reward);				
		VisibilityManager::instance()->increaseVisibility(player, 100);
		//VisibilityManager::instance()->addToVisibilityList(player);

		return 0;
	}

	return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, player, selectedID);
}
