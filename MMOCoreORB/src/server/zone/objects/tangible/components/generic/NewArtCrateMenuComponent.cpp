#include "server/zone/objects/creature/CreatureObject.h"
#include "NewArtCrateMenuComponent.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"

#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/managers/mission/MissionManager.h"


void NewArtCrateMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

}

int NewArtCrateMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
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
		if (lootManager->createLoot(trx, inventory, "g_art_crate", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_art_crate failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_art_crate", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_art_crate failed";
		}

		sceneObject->destroyObjectFromWorld(true);
		sceneObject->destroyObjectFromDatabase(true);


		return 0;
	}

	return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, player, selectedID);
}
