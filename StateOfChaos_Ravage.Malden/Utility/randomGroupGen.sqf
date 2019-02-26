//This script will generate a populated group of enemy AI units. It takes paramteres of groupsize and _spawnPosition
if (!isServer) exitWith{}; 

params ["_groupSize","_spawnPosition"]; 

_enemyOptions = ["I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_3_F"];

_group = createGroup [resistance,true]; 

for [{_i = 0}, {_i = _groupSize}, {_i + 1}] do {
	
	_unitSelection = selectRandom _enemyOptions; 
	_unit = _unitSelection createUnit [_spawnPosition, _group]; 
};

