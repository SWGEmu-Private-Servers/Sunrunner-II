/*
 * based on CallMountTask.h
 *
 *  Created on: 1/22/2012
 *      Author: kyle
 */

#ifndef CALLSHIPTASK_H_
#define CALLSHIPTASK_H_

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/intangible/ControlDevice.h"

class CallShipTask : public Task {
	ManagedReference<CreatureObject*> player;
	ManagedReference<ShipControlDevice*> device;
	String taskName;

public:
	CallShipTask(ShipControlDevice* controlDevice, CreatureObject* creo, const String& task) {
		player = creo;
		device = controlDevice;
		taskName = task;
	}

	void run() {

		Locker locker(player);

		player->removePendingTask("call_ship");

		if(player->isInCombat())
			return;

		Zone* zone = player->getZone();
		
 		if (zone->getZoneName() == "ghomrassen") {
			player->sendSystemMessage("You cannot call a ship here!");
			return;
		}

		ManagedReference<TangibleObject*> ship = device->getControlledObject();

		if (ship == nullptr)
			return;

		Locker locker2(device);
		Locker clocker(ship, player);
		device->generateObject(player);
	}
};

#endif /* CALLSHIPTASK_H_ */
