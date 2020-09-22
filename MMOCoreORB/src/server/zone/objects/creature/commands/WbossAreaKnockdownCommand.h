/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef WBOSSAREAKNOCKDOWNCOMMAND_H_
#define WBOSSAREAKNOCKDOWNCOMMAND_H_

#include "CombatQueueCommand.h"

class WbossAreaKnockdownCommand : public CombatQueueCommand {
public:

	WbossAreaKnockdownCommand(const String& name, ZoneProcessServer* server) : CombatQueueCommand(name, server) {
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

#endif //WBOSSAREAKNOCKDOWNCOMMAND_H_