//if(!isServer) exitWith {}; 

(_this select 3) params ["_facilityType","_facilityCost"];

_args = _this select 3;

_facilityCost = (_this select 3) select 1;
_facilityType = (_this select 3) select 0;

//hint format ["%1",_facilityCost];

_plot = _this select 0;

//hint format ["%1",_plot];

_storPosit = getPos _plot;

//hint format ["%1",_storposit];

if(GLOBALSCRAP > _facilityCost)  then {

	if (_facilityType isEqualTo "foodS") then {

		0 = [_storposit, 360, call (compile (preprocessFileLineNumbers "Compositions\Foodstor_s2.sqf"))] call BIS_fnc_ObjectsMapper;
		
		_newScrap = GLOBALSCRAP - _facilityCost;
		GLOBALSCRAP = _newScrap;
		publicVariable "GLOBALSCRAP";

		NumSmFoodFacilities = NumSmFoodFacilities + 1;
		publicVariable "NumSmFoodFacilities";

		hint format ["You built a new small farm! \nYou now have %1 small farms", NumSmFoodFacilities];

		deleteVehicle _plot;

	};

	if (_facilityType isEqualTo "foodL") then {
		0 = [_storposit, 360, call (compile (preprocessFileLineNumbers "Compositions\foodstor_s.sqf"))] call BIS_fnc_ObjectsMapper;

		_newScrap = GLOBALSCRAP - _facilityCost;
		GLOBALSCRAP = _newScrap;
		publicVariable "GLOBALSCRAP";

		NumLgFoodFacilities = NumLgFoodFacilities + 1;
		publicVariable "NumLgFoodFacilities";

		hint format ["You built a new large farm! \nYou now have %1 large farms", NumLgFoodFacilities];

		deleteVehicle _plot;
	};

	if (_facilityType isEqualTo "workshopS") then {
		0 = [_storposit, 360, call (compile (preprocessFileLineNumbers "Compositions\workshopS.sqf"))] call BIS_fnc_ObjectsMapper;

		_newScrap = GLOBALSCRAP - _facilityCost;
		GLOBALSCRAP = _newScrap;
		publicVariable "GLOBALSCRAP";

		NumSmWorkshops = NumSmWorkshops + 1;
		publicVariable "NumSmFoodFacilities";

		hint format ["You built a new small workshop! \nYou now have %1 small workshops", NumSmWorkshops];

		deleteVehicle _plot;
	};

	if (_facilityType isEqualTo "workshopL") then {
		0 = [_storposit, 360, call (compile (preprocessFileLineNumbers "Compositions\workshopL.sqf"))] call BIS_fnc_ObjectsMapper;

		_newScrap = GLOBALSCRAP - _facilityCost;
		GLOBALSCRAP = _newScrap;
		publicVariable "GLOBALSCRAP";

		NumLgWorkshops = NumLgWorkshops + 1;
		publicVariable "NumLgWorkshops";

		hint format ["You built a new large workshop! \nYou now have %1 large workshops", NumLgWorkshops];

		deleteVehicle _plot;
	};

	if (_facilityType isEqualTo "storageS") then {

		private _choice = selectRandom [1,2];

		if (_choice isEqualTo 1) then {
			_struct = [_storposit, 360, call (compile (preprocessFileLineNumbers "Compositions\AmmoStorage.sqf"))] call BIS_fnc_ObjectsMapper;
			{
				clearItemCargoGlobal _x;
				clearWeaponCargoGlobal _x;
				clearMagazineCargoGlobal _x;
				clearBackpackCargoGlobal _x;
			} forEach _struct;

			deleteVehicle _plot;

			_newScrap = GLOBALSCRAP - _facilityCost;
			GLOBALSCRAP = _newScrap;
			publicVariable "GLOBALSCRAP";

		} else {
			_struct = [_storposit, 360, call (compile (preprocessFileLineNumbers "Compositions\AmmoStorage_2.sqf"))] call BIS_fnc_ObjectsMapper;

			{
				clearItemCargoGlobal _x;
				clearWeaponCargoGlobal _x;
				clearMagazineCargoGlobal _x;
				clearBackpackCargoGlobal _x;
			} forEach _struct;

			deleteVehicle _plot;

			_newScrap = GLOBALSCRAP - _facilityCost;
			GLOBALSCRAP = _newScrap;
			publicVariable "GLOBALSCRAP";
		};
	
	};
};