/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FULLAUTOASSAULTCOMMAND_H_
#define FULLAUTOASSAULTCOMMAND_H_

#include "CombatQueueCommand.h"

class FullAutoAssaultCommand : public CombatQueueCommand {
public:

	FullAutoAssaultCommand(const String& name, ZoneProcessServer* server)
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

#endif //FULLAUTOASSAULTCOMMAND_H_
