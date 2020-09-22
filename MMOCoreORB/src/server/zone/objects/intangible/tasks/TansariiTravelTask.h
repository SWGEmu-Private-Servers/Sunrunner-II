/*
 * based on CallMountTask.h
 *
 *  Created on: 1/22/2012
 *      Author: kyle
 */

#ifndef TANSARIITRAVELTASK_H_
#define TANSARIITRAVELTASK_H_

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/intangible/ControlDevice.h"

class TansariiTravelTask : public Task {
	ManagedReference<CreatureObject*> player;
	ManagedReference<ShipControlDevice*> device;
	String taskName;

public:
	TansariiTravelTask(ShipControlDevice* controlDevice, CreatureObject* creo, const String& task) {
		player = creo;
		device = controlDevice;
		taskName = task;
	}

	void run() {

		player->removePendingTask("tansarii_travel");

		if(player->isInCombat())
			return;

		if  (player->hasState(CreatureState::PILOTINGSHIP)) {		
		player->clearState(CreatureState::PILOTINGSHIP);
		}

		if  (player->hasState(CreatureState::SWIMMING)) {		
		player->clearState(CreatureState::SWIMMING);
		}

		player->switchZone("dungeon2", 62.7, 0.8, 34.3, 14200836);

	}
};

#endif /* TANSARIITRAVELTASK_H_ */
