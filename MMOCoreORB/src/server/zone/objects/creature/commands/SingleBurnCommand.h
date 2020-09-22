/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SINGLEBURNCOMMAND_H_
#define SINGLEBURNCOMMAND_H_

#include "CombatQueueCommand.h"

class SingleBurnCommand : public CombatQueueCommand {
public:

	SingleBurnCommand(const String& name, ZoneProcessServer* server)
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

#endif //SINGLEBURNCOMMAND_H_
