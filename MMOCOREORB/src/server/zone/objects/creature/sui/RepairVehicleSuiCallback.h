/*
 * RepairVehicleSuiCallback.h
 *
 *  Created on: Dec 6, 2010
 *      Author: crush
 */

#ifndef REPAIRVEHICLESUICALLBACK_H_
#define REPAIRVEHICLESUICALLBACK_H_

#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/objects/creature/VehicleObject.h"
#include "server/zone/objects/transaction/TransactionLog.h"

class RepairVehicleSuiCallback : public SuiCallback {
public:
	RepairVehicleSuiCallback(ZoneServer* server)
		: SuiCallback(server) {
	}

	void run(CreatureObject* player, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (!suiBox->isListBox() || cancelPressed)
			return;

		SuiListBox* listBox = cast<SuiListBox*>( suiBox);

		ManagedReference<SceneObject*> obj = listBox->getUsingObject().get();

		if (obj == nullptr || !obj->isVehicleObject())
			return;

		VehicleObject* vehicle = cast<VehicleObject*>( obj.get());

		Locker _lock(vehicle, player);

		if (!vehicle->checkInRangeGarage() && !player->getPlayerObject()->isPrivileged()) {
			player->sendSystemMessage("@pet/pet_menu:repair_unrecognized_garages"); //Your vehicle does not recognize any local garages. Try again in a garage repair zone.
			return;
		}

		if (vehicle->isDisabled() && !player->getPlayerObject()->isPrivileged())
			return;

		int repairCost = vehicle->calculateRepairCost(player);
		int bankFunds = player->getBankCredits();
		int cashFunds = player->getCashCredits();
		int totalFunds = bankFunds + cashFunds;
		int tax = 0;

		ManagedReference<CityRegion*> city =vehicle->getCityRegion().get();
		if(city != nullptr && city->getGarageTax() > 0){
			tax = repairCost * city->getGarageTax() / 100;
			repairCost += tax;
		}

		if (repairCost > totalFunds) {
			player->sendSystemMessage("@pet/pet_menu:lacking_funds_prefix " + String::valueOf(repairCost - totalFunds) + " @pet/pet_menu:lacking_funds_suffix"); //You lack the additional  credits required to repair your vehicle.
			return;
		}

	{
		TransactionLog trx(player, TrxCode::VEHICLEREPAIRS, repairCost);
					
		if (repairCost > bankFunds) {	// Player has enough credits, but not enough in their bank account
			int diff = repairCost - bankFunds;	// 10000 - num less than 10000

			player->setBankCredits(bankFunds - bankFunds, true);	// Subtract all the credits - player doesn't have enough
			player->setCashCredits(cashFunds - diff, true);	// Now subtract the spillover from their cash on hand

			StringIdChatParameter params("@base_player:prose_pay_success_no_target"); //You successfully make a payment of %DI credits.
			params.setDI(repairCost);
			player->sendSystemMessage(params);
			player->sendSystemMessage("You did not have enough credits in your bank account, so cash on hand was used to finish the payment.");
		}
		else {
			player->setBankCredits(bankFunds - repairCost, true);

			StringIdChatParameter params("@base_player:prose_pay_success_no_target"); //You successfully make a payment of %DI credits.
			params.setDI(repairCost);
			player->sendSystemMessage(params);
		}
	}

		vehicle->healDamage(player, 0, vehicle->getConditionDamage(), true);

		String vehicleName = vehicle->getDisplayedName();

		if (vehicle->isDisabled())
			vehicle->setDisabled(false);

		if( city != nullptr && tax > 0){

			_lock.release();
			Locker clocker(city, player);
			city->addToCityTreasury(tax);
		}

	}
};

#endif /* REPAIRVEHICLESUICALLBACK_H_ */
