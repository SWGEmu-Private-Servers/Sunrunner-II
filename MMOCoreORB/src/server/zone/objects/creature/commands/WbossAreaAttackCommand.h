/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef WBOSSAREAATTACKCOMMAND_H_
#define WBOSSAREAATTACKCOMMAND_H_

#include "CombatQueueCommand.h"

class WbossAreaAttackCommand : public CombatQueueCommand {
public:

	WbossAreaAttackCommand(const String& name, ZoneProcessServer* server) : CombatQueueCommand(name, server) {
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

#endif //WBOSSAREAATTACKCOMMAND_H_
