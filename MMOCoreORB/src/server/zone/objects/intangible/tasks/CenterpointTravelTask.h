/*
 * based on CallMountTask.h
 *
 *  Created on: 1/22/2012
 *      Author: kyle
 */

#ifndef CENTERPOINTTRAVELTASK_H_
#define CENTERPOINTTRAVELTASK_H_

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/intangible/ControlDevice.h"

class CenterpointTravelTask : public Task {
	ManagedReference<CreatureObject*> player;
	ManagedReference<ShipControlDevice*> device;
	String taskName;

public:
	CenterpointTravelTask(ShipControlDevice* controlDevice, CreatureObject* creo, const String& task) {
		player = creo;
		device = controlDevice;
		taskName = task;
	}

	void run() {

		player->removePendingTask("centerpoint_travel");

		if(player->isInCombat())
			return;

		if  (player->hasState(CreatureState::PILOTINGSHIP)) {		
		player->clearState(CreatureState::PILOTINGSHIP);
		}

		if  (player->hasState(CreatureState::SWIMMING)) {		
		player->clearState(CreatureState::SWIMMING);
		}

		player->switchZone("dungeon5", 27.6, -4.2, -158.9, 14600918);

	}
};

#endif /* CENTERPOINTTRAVELTASK_H_ */
