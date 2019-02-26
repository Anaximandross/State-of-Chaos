if (!isServer) exitWith{}; 

diag_log "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=";
diag_log "# Hunters Starting...#";
diag_log "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=";

while {true} do {

	scopeName "Hunters_incoming";

		sleep 300; 

		private _spawnChance = (random 100); 
		sleep 5; 

		_hunted = false; 

		if (_spawnChance < 35 && _hunted isEqualTo false) then {
			private _unit = playableUnits call BIS_fnc_selectRandom;

			diag_log "============Hunter Target Assigned===============";
			if (isPlayer _unit) then {
				cutText ["You're being hunted by another group! Watch your back!", "PLAIN"];
			};

			private _playerPosition = getPos _unit; 

			private _spawnPosition = [_playerPosition, 1200] call CBA_fnc_randPos;

			if (alive _unit ) then {

				private _enemyOptions = ["I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_3_F"];
				private _hunterGroup = createGroup [resistance,true]; 
				private _hunter1 = (selectRandom _enemyOptions) createUnit [_spawnPosition, _hunterGroup];
				private _hunter2 = (selectRandom _enemyOptions) createUnit [_spawnPosition, _hunterGroup];
				private _hunter3 = (selectRandom _enemyOptions) createUnit [_spawnPosition, _hunterGroup];

				while {alive _unit} do {
					sleep 30; 

					_position = getPos _unit; 

					deleteWaypoint [_hunterGroup,0]; 
					_hunterGroup addWaypoint [_position,20,0]; 
					[_hunterGroup, 0] setWaypointBehaviour "AWARE";
					[_hunterGroup, 0] setWaypointSpeed "FULL";

					diag_log "Hunters waypoint set"; 

					_hunted = true; 
				};
				_hunted = false; 
			};
			
			
		};
		breakTo "Hunters_incoming"; 
	
diag_log "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=";
diag_log "# Hunters Finished#";
diag_log "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=";

};