/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef WBOSSAREACOMBOCOMMAND_H_
#define WBOSSAREACOMBOCOMMAND_H_

#include "CombatQueueCommand.h"

class WbossAreaComboCommand : public CombatQueueCommand {
public:

	WbossAreaComboCommand(const String& name, ZoneProcessServer* server) : CombatQueueCommand(name, server) {
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

#endif //WBOSSAREACOMBOCOMMAND_H_
