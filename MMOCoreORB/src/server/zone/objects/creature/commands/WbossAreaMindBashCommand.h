/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef WBOSSAREAMINDBASHCOMMAND_H_
#define WBOSSAREAMINDBASHCOMMAND_H_

#include "CombatQueueCommand.h"

class WbossAreaMindBashCommand : public CombatQueueCommand {
public:

	WbossAreaMindBashCommand(const String& name, ZoneProcessServer* server) : CombatQueueCommand(name, server) {
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

#endif //WBOSSAREAMINDBASHCOMMAND_H_
