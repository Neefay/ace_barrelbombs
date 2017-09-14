
class CBA_Extended_EventHandlers;

class CfgVehicles {
	class Air;
	
	class Helicopter_Base_F: Air {
		class ACE_SelfActions {
			class GVAR(CheckBarrels) {
				displayName = QUOTE(Check Barrel Bombs);
				icon = ICON_ACTION_CHECKBARRELS;
				showDisabled = 0;
				priority = 1.1;
				condition = QUOTE([ARR_2(_target,_player)] call FUNC(canDropBarrel));
				statement = QUOTE([ARR_2(_target,_player)] call FUNC(openBarrelDropMenu));
			};			
		};
	};
	
	class CargoNet_01_barrels_F;
	class ACE_BarrelBomb_Dispenser_01: CargoNet_01_barrels_F {
		
		displayName = "[ACE] Barrel Bomb Dispenser (Large)";
		scope = 2;
		vehicleClass = "Ammo";	
		GVAR(limitExplosives) = 3000;
		GVAR(limitClusters) = 200;
		
		class EventHandlers {					
			init = QUOTE(_this call FUNC(initializeDispenserMaterials));
			
			class CBA_Extended_EventHandlers: CBA_Extended_EventHandlers {};
		};	
		
		class ACE_Actions {
			class ACE_MainActions {
				distance = DISTANCE_USE_MIN;
				selection = "";
				
				class GVAR(TakeMenu) {
					displayName = QUOTE(Prepare Barrel Bomb);
					icon = ICON_ACTION_PREPBARREL;
					distance = DISTANCE_USE_MIN;
					showDisabled = 0;
					priority = 1.1;
					condition = QUOTE([ARR_2(_target,_player)] call FUNC(isBarrelDispenser));
					statement = QUOTE([ARR_2(_target,_player)] call FUNC(openBombPrepMenu));
				};			
			};
		};
	};	
};












