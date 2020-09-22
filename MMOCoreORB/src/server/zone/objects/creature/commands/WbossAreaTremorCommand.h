/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef WBOSSAREATREMORCOMMAND_H_
#define WBOSSAREATREMORCOMMAND_H_

#include "CombatQueueCommand.h"

class WbossAreaTremorCommand : public CombatQueueCommand {
public:

	WbossAreaTremorCommand(const String& name, ZoneProcessServer* server) : CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isAiAgent())
			return GENERALERROR;

		return doCombatAction(creature, target, arguments);
	}

};

#endif //WBOSSAREATREMORCOMMAND_H_
