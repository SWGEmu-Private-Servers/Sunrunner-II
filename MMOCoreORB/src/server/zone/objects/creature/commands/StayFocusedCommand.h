/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef StayFocusedCommand_H_
#define StayFocusedCommand_H_

#include "SquadLeaderCommand.h"

class StayFocusedCommand : public SquadLeaderCommand {
public:

	StayFocusedCommand(const String& name, ZoneProcessServer* server)
		: SquadLeaderCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isPlayerCreature())
			return GENERALERROR;

		ManagedReference<CreatureObject*> player = cast<CreatureObject*>(creature);

		if (player == nullptr)
			return GENERALERROR;

		ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

		if (ghost == nullptr)
			return GENERALERROR;

		ManagedReference<GroupObject*> group = player->getGroup();

		if (!checkGroupLeader(player, group))
			return GENERALERROR;

		int hamCost = (int) (50.0f * calculateGroupModifier(group));

		int healthCost = creature->calculateCostAdjustment(CreatureAttribute::STRENGTH, hamCost);
		int actionCost = creature->calculateCostAdjustment(CreatureAttribute::QUICKNESS, hamCost);
		int mindCost = creature->calculateCostAdjustment(CreatureAttribute::FOCUS, hamCost);

		if (!inflictHAM(player, healthCost, actionCost, mindCost))
			return GENERALERROR;

//		shoutCommand(player, group);

		if (!doStayFocused(player, group))
			return GENERALERROR;

		if (!ghost->getCommandMessageString(STRING_HASHCODE("stayfocused")).isEmpty() && creature->checkCooldownRecovery("command_message")) {
			UnicodeString shout(ghost->getCommandMessageString(STRING_HASHCODE("stayfocused")));
 	 	 	server->getChatManager()->broadcastChatMessage(player, shout, 0, 80, player->getMoodID(), 0, ghost->getLanguageID());
 	 	 	creature->updateCooldownTimer("command_message", 30 * 1000);
		}

		return SUCCESS;
	}

	bool doStayFocused(CreatureObject* leader, GroupObject* group) const {
		if (leader == nullptr || group == nullptr)
			return false;

		for (int i = 0; i < group->getGroupSize(); i++) {

			ManagedReference<CreatureObject*> member = group->getGroupMember(i);

			if (member == nullptr || member->getZone() != leader->getZone() || !member->isInRange(leader, 128.0) || !member->isPlayerCreature())
		
				continue;

			if (!isValidGroupAbilityTarget(leader, member, false))
				continue;

			Locker clocker(member, leader);

			sendCombatSpam(member);

			if (member->isBlinded())
				member->removeStateBuff(CreatureState::BLINDED);
			checkForTef(leader, member);
		}

		return true;
	}

};

#endif //StayFocusedCommand_H_

