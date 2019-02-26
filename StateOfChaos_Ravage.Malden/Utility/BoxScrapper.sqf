//if(!isServer) exitWith{}; 

params["_target","_caller","_id","_args"];

	_itemsArray = getItemCargo _target; 
	_weaponArray = getWeaponCargo _target;
	_backpackArray = getBackpackCargo _target;
	_magazineArray = getMagazineCargo _target; 

	_numItems = count(_itemsArray select 0); 
	//hint format ["Numtotal is %1", _numItems];
	_numWeapons = count(_weaponArray select 0);
	_numBackpacks = count(_backpackArray select 0);
	_numMagazines = count(_magazineArray select 0);

	_numTotal = _numBackpacks * 5 + _numItems * 1 + _numMagazines * 2 + _numWeapons * 10; 

	_globalScrap = GLOBALSCRAP; 

	if(_numTotal isEqualTo 0) then{
		hint "There's nothing in the box!"; 
	}
	else{
		_scrapAmount = _numTotal; 

		hint format ["You get %1 scrap from these items", _scrapAmount]; 

		_newScrap = _scrapAmount + GLOBALSCRAP; 
		publicVariable "GLOBALSCRAP"; 

		GLOBALSCRAP = _newScrap;
		publicVariable "GLOBALSCRAP"; 

		clearItemCargoGlobal _target; 
		clearWeaponCargoGlobal _target;
		clearBackpackCargoGlobal _target;
		clearMagazineCargoGlobal _target;

};







