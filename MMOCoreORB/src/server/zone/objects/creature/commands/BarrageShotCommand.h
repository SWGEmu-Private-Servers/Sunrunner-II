/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef BARRAGESHOTCOMMAND_H_
#define BARRAGESHOTCOMMAND_H_

#include "CombatQueueCommand.h"

class BarrageShotCommand : public CombatQueueCommand {
public:

	BarrageShotCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		return doCombatAction(creature, target);

	}

};

#endif //BARRAGESHOTCOMMAND_H_
