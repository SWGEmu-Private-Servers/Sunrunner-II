
#ifndef DAZINGSHOCKCOMMAND_H_
#define DAZINGSHOCKCOMMAND_H_

#include "CombatQueueCommand.h"


class DazingShockCommand : public CombatQueueCommand {

public:
	DazingShockCommand(const String& name, ZoneProcessServer* server)

		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))

			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))

			return INVALIDLOCOMOTION;

		ManagedReference<WeaponObject*> weapon = creature->getWeapon();

		if (!weapon->isLightningRifle()) {
			return INVALIDWEAPON;
		}

		return doCombatAction(creature, target);
	}

};



#endif //DAZINGSHOCKCOMMAND_H_
