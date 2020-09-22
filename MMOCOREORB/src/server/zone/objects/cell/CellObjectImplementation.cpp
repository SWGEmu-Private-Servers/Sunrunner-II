/*
 * CellObjectImplementation.cpp
 *
 *  Created on: 23/07/2009
 *      Author: TheAnswer
 */

#include "server/zone/objects/cell/CellObject.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/packets/cell/CellObjectMessage3.h"
#include "server/zone/packets/cell/CellObjectMessage6.h"
#include "server/zone/packets/cell/UpdateCellPermissionsMessage.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/Zone.h"

void CellObjectImplementation::initializeTransientMembers() {
	SceneObjectImplementation::initializeTransientMembers();

	setLoggingName("CellObject");

	if (isClientObject()) {
		containerObjects.setNormalLoadOperationMode();
		containerObjects.cancelUnloadTask();
	}
}

void CellObjectImplementation::loadTemplateData(SharedObjectTemplate* templateData) {
	SceneObjectImplementation::loadTemplateData(templateData);

	containerObjects.setDelayedLoadOperationMode();
}

void CellObjectImplementation::notifyLoadFromDatabase() {
	SceneObjectImplementation::notifyLoadFromDatabase();

	//Rebuild count to account for transient creos
	//TODO: modify server shutdown to despawn transient mobs before final db save
	if (!isClientObject() && (!containerObjects.hasDelayedLoadOperationMode() || hasForceLoadObject())) {
		containerObjects.setDelayedLoadOperationMode();
		forceLoadObjectCount.set(0);

		for (int j = 0; j < getContainerObjectsSize(); ++j) {
			SceneObject* child = getContainerObject(j);

			if (child->isCreatureObject() || child->isVendor() || child->getPlanetMapCategoryCRC() != 0 || child->getPlanetMapSubCategoryCRC() != 0)
				forceLoadObjectCount.increment();
		}
	}
}

void CellObjectImplementation::onContainerLoaded() {
	SceneObjectImplementation::onContainerLoaded();

	ManagedReference<BuildingObject*> building = parent.get().castTo<BuildingObject*>();

	if (building == nullptr)
		return;

	Locker locker(building);

	for (int j = 0; j < getContainerObjectsSize(); ++j) {
		SceneObject* child = getContainerObject(j);

		building->notifyObjectInsertedToChild(child, asSceneObject(), nullptr);
	}
}

void CellObjectImplementation::onBuildingInsertedToZone(BuildingObject* building) {
	if (!isContainerLoaded())
		return;

	for (int j = 0; j < getContainerObjectsSize(); ++j) {
		SceneObject* child = getContainerObject(j);

		building->notifyObjectInsertedToZone(child);
	}
}

void CellObjectImplementation::sendContainerObjectsTo(SceneObject* player, bool forceLoad) {

}

void CellObjectImplementation::sendBaselinesTo(SceneObject* player) {
	BaseMessage* cellMsg3 = new CellObjectMessage3(getObjectID(), cellNumber);
	player->sendMessage(cellMsg3);

	BaseMessage* cellMsg6 = new CellObjectMessage6(getObjectID());
	player->sendMessage(cellMsg6);

	bool allowEntry = true;

	ManagedReference<SceneObject*> strongParent = getParent().get();

	if (player->isCreatureObject() && strongParent != nullptr && strongParent->isBuildingObject()) {
		CreatureObject* creature = player->asCreatureObject();

		allowEntry = strongParent->asBuildingObject()->isAllowedEntry(creature);
	}

	BaseMessage* perm = new UpdateCellPermissionsMessage(getObjectID(), allowEntry);
	player->sendMessage(perm);
}

int CellObjectImplementation::canAddObject(SceneObject* object, int containmentType, String& errorDescription) {
	ManagedReference<SceneObject*> strongParent = getParent().get();

	if (strongParent != nullptr && strongParent->isBuildingObject()) {
		BuildingObject* building = strongParent->asBuildingObject();


		if (object->getClientObjectCRC() == 0x999BE158 || object->getClientObjectCRC() == 0xE1EDCE54 || object->getClientObjectCRC() == 0x3AFA66C3 || object->getClientObjectCRC() == 0x73F7014E || object->getClientObjectCRC() == 0xB6C0ABA0 || object->getClientObjectCRC() == 0x6DD70337 || object->getClientObjectCRC() == 0x24DA64BA || object->getClientObjectCRC() == 0x3C468C44 || object->getClientObjectCRC() == 0xE75124D3 || object->getClientObjectCRC() == 0xAE5C435E || object->getClientObjectCRC() == 0xD6027E68 || object->getClientObjectCRC() == 0xD15D6FF || object->getClientObjectCRC() == 0x4418B172 || object->getClientObjectCRC() == 0x3675DA3D || object->getClientObjectCRC() == 0xED6272AA || object->getClientObjectCRC() == 0xA46F1527 || object->getClientObjectCRC() == 0xE4662624 || object->getClientObjectCRC() == 0x3F718EB3 || object->getClientObjectCRC() == 0x767CE93E || object->getClientObjectCRC() == 0x6EE001C0 || object->getClientObjectCRC() == 0xB5F7A957 || object->getClientObjectCRC() == 0xFCFACEDA || object->getClientObjectCRC() == 0x84A4F3EC || object->getClientObjectCRC() == 0x5FB35B7B || object->getClientObjectCRC() == 0x16BE3CF6)

			return TransferErrorCode::CANTADD;


		int count = 1;

		if (object->isVendor())
			count = 0;

		else if (object->isContainerObject())
			count += object->getCountableObjectsRecursive();

		if (building->getCurrentNumberOfPlayerItems() + count > building->getMaximumNumberOfPlayerItems()) {
			errorDescription = "@container_error_message:container13";

			return TransferErrorCode::TOOMANYITEMSINHOUSE;

		}
	}

	return SceneObjectImplementation::canAddObject(object, containmentType, errorDescription);
}

bool CellObjectImplementation::transferObject(SceneObject* object, int containmentType, bool notifyClient, bool allowOverflow, bool notifyRoot) {
	//Locker locker(_this);

	Zone* zone = getZone();

	Locker* locker = nullptr;

	if (zone != nullptr) {
//		locker = new Locker(zone);
	}

	bool ret = false;

	ManagedReference<SceneObject*> oldParent = object->getParent().get();

	try {
		ret = SceneObjectImplementation::transferObject(object, containmentType, notifyClient, allowOverflow, notifyRoot);

		if (zone != nullptr && object->isTangibleObject()) {
			TangibleObject* tano = cast<TangibleObject*>(object);
			zone->updateActiveAreas(tano);
		}

		if (object->isCreatureObject() || object->isVendor() || object->getPlanetMapCategoryCRC() != 0 || object->getPlanetMapSubCategoryCRC() != 0)
			forceLoadObjectCount.increment();

	} catch (...) {

	}

	if (oldParent == nullptr) {
		ManagedReference<BuildingObject*> building = parent.get().castTo<BuildingObject*>();
		CreatureObject* creo = object->asCreatureObject();

		if (building != nullptr && creo != nullptr)
			building->onEnter(creo);
	}

	if (locker != nullptr)
		delete locker;

	return ret;
}

bool CellObjectImplementation::removeObject(SceneObject* object, SceneObject* destination, bool notifyClient) {
	bool ret = SceneObjectImplementation::removeObject(object, destination, notifyClient);

	if (object->isCreatureObject() || object->isVendor() || object->getPlanetMapCategoryCRC() != 0 || object->getPlanetMapSubCategoryCRC() != 0)
		forceLoadObjectCount.decrement();

	return ret;
}

int CellObjectImplementation::getCurrentNumberOfPlayerItems() {
	int count = 0;

	ManagedReference<SceneObject*> strongParent = getParent().get();

	if (strongParent != nullptr) {
		for (int j = 0; j < getContainerObjectsSize(); ++j) {
			ManagedReference<SceneObject*> containerObject = getContainerObject(j);

			if (!strongParent->containsChildObject(containerObject) && !containerObject->isCreatureObject() && !containerObject->isVendor()) {

				if (containerObject->isContainerObject())
					count += containerObject->getCountableObjectsRecursive();

				++count;
			}
		}
	}

	return count;
}

void CellObjectImplementation::destroyAllPlayerItems() {
	ManagedReference<SceneObject*> strongParent = getParent().get();

	if (strongParent == nullptr)
		return;

	int containerSize = getContainerObjectsSize();

	for (int j = containerSize - 1; j >= 0; --j) {
		ManagedReference<SceneObject*> containerObject = getContainerObject(j);

		if (strongParent->containsChildObject(containerObject))
			continue;

		if (containerObject->isCreatureObject())
			continue;

		Locker locker(containerObject);

		containerObject->destroyObjectFromWorld(true);
		containerObject->destroyObjectFromDatabase(true);
	}
}

void CellObjectImplementation::sendPermissionsTo(CreatureObject* creature, bool allowEntry) {
	if (!containerPermissions.hasInheritPermissionsFromParent() && !checkContainerPermission(creature, ContainerPermissions::WALKIN)) {
		BaseMessage* perm = new UpdateCellPermissionsMessage(getObjectID(), false);
		creature->sendMessage(perm);
	} else {
		BaseMessage* perm = new UpdateCellPermissionsMessage(getObjectID(), allowEntry);
		creature->sendMessage(perm);
	}
}
