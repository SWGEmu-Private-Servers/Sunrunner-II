/*
 * based on CallMountTask.h
 *
 *  Created on: 1/22/2012
 *      Author: kyle
 */

#ifndef NOVAORIONTRAVELTASK_H_
#define NOVAORIONTRAVELTASK_H_

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/intangible/ControlDevice.h"

class NovaOrionTravelTask : public Task {
	ManagedReference<CreatureObject*> player;
	ManagedReference<ShipControlDevice*> device;
	String taskName;

public:
	NovaOrionTravelTask(ShipControlDevice* controlDevice, CreatureObject* creo, const String& task) {
		player = creo;
		device = controlDevice;
		taskName = task;
	}

	void run() {

		player->removePendingTask("novaorion_travel");

		if(player->isInCombat())
			return;

		if  (player->hasState(CreatureState::PILOTINGSHIP)) {		
		player->clearState(CreatureState::PILOTINGSHIP);
		}

		if  (player->hasState(CreatureState::SWIMMING)) {		
		player->clearState(CreatureState::SWIMMING);
		}
		
		player->switchZone("dungeon3", 43, 0.8, -42, 14401996);
	}
};

#endif /* NOVAORIONTRAVELTASK_H_ */
