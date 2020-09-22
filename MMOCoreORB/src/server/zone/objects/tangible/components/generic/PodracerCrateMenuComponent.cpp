#include "server/zone/objects/creature/CreatureObject.h"
#include "PodracerCrateMenuComponent.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"

void PodracerCrateMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

}

int PodracerCrateMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
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
		//lootManager->createLoot(inventory, "g_podracer_deeds", 1);

		TransactionLog trx(TrxCode::NPCLOOTCLAIM, player);
		if (lootManager->createLoot(trx, inventory, "g_podracer_deeds", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_podracer_deeds failed";
		}

		sceneObject->destroyObjectFromWorld(true);
		sceneObject->destroyObjectFromDatabase(true);

		return 0;
	}

	return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, player, selectedID);
}
