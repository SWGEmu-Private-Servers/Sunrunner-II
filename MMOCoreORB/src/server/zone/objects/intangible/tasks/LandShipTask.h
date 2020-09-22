/*
 * based on callMount.h
 *
 *  Created on: 1/22/2012
 *      Author: kyle
 */

#ifndef LANDSHIPTASK_H_
#define LANDSHIPTASK_H_

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/intangible/ControlDevice.h"

class LandShipTask : public Task {
	ManagedReference<CreatureObject*> player;
	ManagedReference<ShipControlDevice*> device;
	String taskName;

public:
	LandShipTask(ShipControlDevice* controlDevice, CreatureObject* creo, const String& task) {
		player = creo;
		device = controlDevice;
		taskName = task;
	}

	void run() {

		Locker locker(player);

		player->removePendingTask("land_ship");

		if(player->isInCombat())
			return;

		ManagedReference<TangibleObject*> ship = device->getControlledObject();

		if (ship == nullptr)
			return;

		Locker locker2(device);
		Locker clocker(ship, player);
		device->storeObject(player);
	}
};

#endif /* LANDSHIPTASK_H_ */
