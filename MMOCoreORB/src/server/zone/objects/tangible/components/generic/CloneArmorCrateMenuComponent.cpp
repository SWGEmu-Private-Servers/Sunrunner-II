#include "server/zone/objects/creature/CreatureObject.h"
#include "CloneArmorCrateMenuComponent.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"

void CloneArmorCrateMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

}

int CloneArmorCrateMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {
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

		// lootManager->createLoot(inventory, "g_neutral_clone_belt", 1);

		TransactionLog trx(TrxCode::NPCLOOTCLAIM, player);

		if (lootManager->createLoot(trx, inventory, "g_neutral_clone_belt", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_neutral_clone_belt failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_neutral_clone_bicep_l", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_neutral_clone_bicep_l failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_neutral_clone_bicep_r", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_neutral_clone_bicep_r failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_neutral_clone_bracer_l", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_neutral_clone_bracer_l failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_neutral_clone_bracer_r", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_neutral_clone_bracer_r failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_neutral_clone_boots", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_neutral_clone_boots failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_neutral_clone_gloves", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_neutral_clone_gloves failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_neutral_clone_leggings", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_neutral_clone_leggings failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_neutral_clone_helmet", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_neutral_clone_helmet failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_neutral_clone_helmet_invisible", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_neutral_clone_helmet_invisible failed";
		}

		if (lootManager->createLoot(trx, inventory, "g_neutral_clone_chest_plate", 1)) {
			trx.commit(true);
		} else {
			trx.abort() << "createLoot g_neutral_clone_chest_plate failed";
		}





		// lootManager->createLoot(inventory, "g_neutral_clone_bicep_l", 1);
		// lootManager->createLoot(inventory, "g_neutral_clone_bicep_r", 1);
		// lootManager->createLoot(inventory, "g_neutral_clone_bracer_l", 1);
		// lootManager->createLoot(inventory, "g_neutral_clone_bracer_r", 1);
		// lootManager->createLoot(inventory, "g_neutral_clone_boots", 1);
		// lootManager->createLoot(inventory, "g_neutral_clone_gloves", 1);
		// lootManager->createLoot(inventory, "g_neutral_clone_leggings", 1);
		// lootManager->createLoot(inventory, "g_neutral_clone_helmet", 1);
		// lootManager->createLoot(inventory, "g_neutral_clone_helmet_invisible", 1);
		// lootManager->createLoot(inventory, "g_neutral_clone_chest_plate", 1);
		sceneObject->destroyObjectFromWorld(true);
		sceneObject->destroyObjectFromDatabase(true);

		return 0;
	}

	return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, player, selectedID);
}
