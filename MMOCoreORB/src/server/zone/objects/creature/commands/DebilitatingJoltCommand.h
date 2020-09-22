
#ifndef DEBILITATINGJOLTCOMMAND_H_
#define DEBILITATINGJOLTCOMMAND_H_

#include "CombatQueueCommand.h"



class DebilitatingJoltCommand : public CombatQueueCommand {

public:
	DebilitatingJoltCommand(const String& name, ZoneProcessServer* server)

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



#endif //DEBILITATINGJOLTCOMMAND_H_
