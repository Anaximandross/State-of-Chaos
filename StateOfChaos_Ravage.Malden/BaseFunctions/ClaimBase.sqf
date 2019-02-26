//if(!isServer || !isDedicated) exitWith{};

//add a new parameter for array of markers being passed into createBasePlots
//_marker is used for finding units around the base, _foodCost is cost of base, _baseNum is the number of the base
//_markerLocationArray is the array of markers used for the generation of plots, _basePole is the flag pole to claim the base
//_baseTerminal is the laptop that is used to build plots
(_this select 3) params ["_marker","_foodCost","_baseNum","_markerLocationArray","_basePole","_baseTerminal"];

_globalFood = GLOBALFOOD;  
	if(_globalFood > _foodCost) then {

			_markPos = getPos _basePole; 
			//calculates the amount of food remaining in food stores
			_foodremaining = _globalfood - _foodCost; 
			
			GLOBALFOOD = _foodremaining; 
			publicVariable "GLOBALFOOD"; 
			hint format["You have %1 food remaining!",_foodremaining];

			_newRespawn = [west,_markPos, "Home Base"] call BIS_fnc_addRespawnPosition;

			//determines the current base number to be used for other things
			CURRENTBASENUMBER = _baseNum; 
			publicVariable "CURRENTBASENUMBER"; 
			//hint format ["Current Base %1",CURRENTBASENUMBER];

			//creates a marker at the current base. This is used for AI targetting 
			deleteMarker _marker;
			deleteMarker "CurrentBase"; 
			_currentBaseMarker = createMarker["CurrentBase", _markPos]; 
			"CurrentBase" setMarkerColor "ColorBlue";
			"CurrentBase" setMarkerText "Home Base"; 
			"CurrentBase" setMarkerType "mil_circle";

			//call function to create all marker plots at the new base
			cutText ["You have claimed a new base! \nTake a look around!","PLAIN"];

			deleteVehicle _basePole; 
			_baseTerminal hideObjectGlobal false; 
			[_baseTerminal, false] remoteExec ["hideObjectGlobal", 0];

	} else {
		hint "You don't have enough food to claim this base!"; 
	};

