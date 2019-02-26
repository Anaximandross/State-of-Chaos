if (!isServer) exitWith{}; 

diag_log "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=";
diag_log "# Horde Starting...#";
diag_log "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=";

while {true} do {

	scopeName "Horde_incoming";

		sleep 1800; 

		private _spawnChance = (random 100); 
		sleep 5; 

		private _horde = false; 

		if (_spawnChance < 15 && CURRENTBASENUMBER != 0) then {
			private _numPlayers =   count (allPlayers - entities "HeadlessClient_F");

			private _hordeSize = 0; 

			if (_numPlayers > 1) then {
				_hordeSize = 25 *(_numPlayers/2); 
			} else { 
				_hordeSize = 25 
			};

			diag_log "============Horde Target Assigned===============";

			["A horde is enroute to your home base!"] remoteExec ["hint"];

			private _basePosition = getMarkerPos "CurrentBase"; 

			private _spawnPosition = [_basePosition, 1500] call CBA_fnc_randPos;

				 _hordeGroup = createGroup [east,true]; 
				 _hordeUnits = ["RyanZombieC_man_1slowOpfor","RyanZombieC_man_polo_1_FslowOpfor","RyanZombieC_man_polo_2_FslowOpfor","RyanZombieC_man_polo_4_FslowOpfor","RyanZombieC_man_polo_5_FslowOpfor","RyanZombieC_man_polo_6_FslowOpfor","RyanZombieC_man_p_fugitive_FslowOpfor","RyanZombieC_man_w_worker_FslowOpfor","RyanZombieC_scientist_FslowOpfor","RyanZombieC_man_hunter_1_FslowOpfor","RyanZombieC_man_pilot_FslowOpfor","RyanZombieC_journalist_FslowOpfor","RyanZombieC_OrestesslowOpfor","RyanZombieC_NikosslowOpfor","RyanZombie15slowOpfor","RyanZombie16slowOpfor","RyanZombie17slowOpfor","RyanZombie18slowOpfor","RyanZombie19slowOpfor","RyanZombie20slowOpfor","RyanZombie21slowOpfor","RyanZombie22slowOpfor","RyanZombie23slowOpfor","RyanZombie24slowOpfor","RyanZombie25slowOpfor","RyanZombie26slowOpfor","RyanZombie27slowOpfor","RyanZombie28slowOpfor","RyanZombie29slowOpfor","RyanZombie30slowOpfor","RyanZombie31slowOpfor","RyanZombie32slowOpfor","RyanZombieC_man_1mediumOpfor","RyanZombieC_man_polo_1_FmediumOpfor","RyanZombieC_man_polo_2_FmediumOpfor","RyanZombieC_man_polo_4_FmediumOpfor","RyanZombieC_man_polo_5_FmediumOpfor","RyanZombieC_man_polo_6_FmediumOpfor"];
				 _hordeSelection=[];

				for "_i" from 0 to _hordeSize do {
				 _hordeSelection pushBack (selectRandom _hordeUnits);
				};

				{
					_x createUnit [ _spawnPosition,_hordeGroup];
				} forEach _hordeSelection;
				
				_hordeLead = leader _hordeGroup; 

				_hordeGroup addWaypoint [_basePosition,20,0];

				while {(_hordeLead distance2D _basePosition) > 100} do {
					sleep 30;
					deleteWaypoint [_hordeGroup,0]; 
					_hordeGroup addWaypoint [_basePosition,20,0]; 
					[_hordeGroup, 0] setWaypointBehaviour "AWARE";
					[_hordeGroup, 0] setWaypointSpeed "FULL";
					[_hordeGroup, 0] setWaypointFormation "LINE";

				diag_log "Horde waypoint set"; 
				};
		};
		breakTo "Hunters_incoming"; 
	
diag_log "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=";
diag_log "# Hunters Finished#";
diag_log "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=";

};