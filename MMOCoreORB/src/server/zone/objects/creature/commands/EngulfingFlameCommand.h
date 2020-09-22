/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef ENGULFINGFLAMECOMMAND_H_
#define ENGULFINGFLAMECOMMAND_H_

#include "CombatQueueCommand.h"

class EngulfingFlameCommand : public CombatQueueCommand {
public:

	EngulfingFlameCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<WeaponObject*> weapon = creature->getWeapon();

		if (!weapon->isFlameThrower())
			return INVALIDWEAPON;

		return doCombatAction(creature, target);
	}

};



#endif //ENGULFINGFLAMECOMMAND_H_
