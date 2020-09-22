/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef DIZZYSHOTCOMMAND_H_
#define DIZZYSHOTCOMMAND_H_

#include "CombatQueueCommand.h"

class DizzyShotCommand : public CombatQueueCommand {
public:

	DizzyShotCommand(const String& name, ZoneProcessServer* server)
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

#endif //DIZZYSHOTCOMMAND_H_
