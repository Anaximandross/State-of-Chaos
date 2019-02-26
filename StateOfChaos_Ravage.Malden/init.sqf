// if (isServer) then {
// 	fn_getBuildingstospawnLoot = compile preProcessFileLineNumbers "LootSpawn\fn_LSgetBuildingstospawnLoot.sqf"; 
// 	LSdeleter = compile preProcessFileLineNumbers "LootSpawn\LSdeleter.sqf";
// 	execVM "LootSpawn\Lootspawner.sqf";
// 	//[]execVM "dynamix\dynamix.sqf";
// 	//[]execVM "VehicleSpawn\vehiclespawner.sqf";
// 	[]execVM "Utility\ResourceCalc.sqf"; 
// 	[]execVM "AIMissions\Hunters.sqf"; 
// 	//[]execVM "Utility\cfggen.sqf"; 
// 	//[]execVM "AIMissions\hordeSpawner.sqf";
// 	[]execVM "AIMissions\CrateSpawn.sqf";
	
// 	[]execVM "AIMissions\RscCrateSpawn.sqf";

// 	player enableStamina false;

// 	GLOBALFOOD = 250; 
// 	publicVariable "GLOBALFOOD";

// 	GLOBALSCRAP = 250; 
// 	publicVariable "GLOBALSCRAP";

// 	CURRENTBASENUMBER = 0; 
// 	publicVariable "CURRENTBASENUMBER";

// 	NumLgFoodFacilities = 0;
// 	publicVariable "NumLgFoodFacilities";

// 	NumSmFoodFacilities = 0;
// 	publicVariable "NumSmFoodFacilities";

// 	NumLgWorkshops  = 0;
// 	publicVariable "NumLgWorkshops";

// 	NumSmWorkshops = 0;
// 	publicVariable "NumSmWorkshops";

// 	while {true} do
// 	{
// 		if (daytime >= 17.40 || daytime < 6) then
// 		{
// 			setTimeMultiplier 12 //for night time
// 		}
// 		else
// 		{
// 			setTimeMultiplier 4 //for day time
// 		};
// 		uiSleep 120;
// 	};
// };

