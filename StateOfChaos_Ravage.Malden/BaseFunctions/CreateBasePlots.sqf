//if(!isServer) exitWith{}; 

(_this select 3) params ["_markerLocationArray", "_target"];

hint "Facility Plots Placed!";
	_target removeAction 0;

	{
		//gets position of current array value
		_position = getPos _x;

		//builds yellow square on current array position
		_cut = "Land_ClutterCutter_large_F" createVehicle _position;
		_postPole = "Land_VergePost_01_F" createVehicle _position; 

		// //Adds 5 actions to each item to allow various things to be built
		// _postPole addAction ["Build a Small Farm (15 Scrap)", "Compositions\assembler.sqf",[_this,"foodS",15]];
		// _postPole addAction ["Build a Large Farm (45 Scrap)", "Compositions\assembler.sqf",[_position, "foodL"]];
		// _postPole addAction ["Build a Small Workshop (25 Scrap)", "Compositions\assembler.sqf",[_position, "workshopS"]];
		// _postPole addAction ["Build a Large Workshop (45 Scrap)", "Compositions\assembler.sqf",[_position, "workshopL"]];
		// _postPole addAction ["Build a Storage Facility (100 Scrap)", "Compositions\assembler.sqf",[_position, "storage"]];

		_postPole addAction ["Build a Small Farm (15 Scrap)", {_this execVM "Compositions\assembler.sqf"},["foodS",15]];
		_postPole addAction ["Build a Large Farm (45 Scrap)", {_this execVM "Compositions\assembler.sqf"},["foodL",45]];
		_postPole addAction ["Build a Small Workshop (25 Scrap)",{_this execVM "Compositions\assembler.sqf"},["workshopS",25]];
		_postPole addAction ["Build a Large Workshop (45 Scrap)", {_this execVM "Compositions\assembler.sqf"},["workshopL",45]];
		_postPole addAction ["Build a Storage Facility (100 Scrap)", {_this execVM "Compositions\assembler.sqf"},["storageS",100]];

		deleteVehicle _x;

	} forEach _markerLocationArray;
