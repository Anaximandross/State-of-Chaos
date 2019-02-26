if (!isServer) exitWith {}; 

while {true} do {

	private _spawnChance = (random 100); 

	if (_spawnChance < 50) then {
		sleep 60;
		
		hint "A supply crate has been dropped! \nCheck your map for the location";

		_position = ["PlayZone", false] call CBA_fnc_randPosArea;

		_crate = "Land_FoodSacks_01_cargo_white_idap_F" createVehicle _position; 

		_marker = createMarker ["Food Drop", _position];
		_marker setMarkerType "hd_objective";
		_marker setMarkerColor "ColorBlue";
		_marker setmarkerText "Supply Drop";

		createMarker ["cratePosition", _position];

		_crate addAction ["Claim Supplies", {GLOBALSCRAP = GLOBALSCRAP + 50; publicVariable "GLOBALSCRAP"}];

		hint format["You now have %1 scrap", GLOBALSCRAP];

		clearWeaponCargoGlobal _crate;
		clearMagazineCargoGlobal _crate;
		clearBackpackCargoGlobal _crate;
		clearItemCargoGlobal _crate; 

		sleep 600;

		deleteVehicle _crate;
		deleteMarker _marker;
	};
};		
