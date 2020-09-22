/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef MINDBURNCOMMAND_H_
#define MINDBURNCOMMAND_H_

#include "CombatQueueCommand.h"

class MindBurnCommand : public CombatQueueCommand {
public:

	MindBurnCommand(const String& name, ZoneProcessServer* server)
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

#endif //MINDBURNCOMMAND_H_
