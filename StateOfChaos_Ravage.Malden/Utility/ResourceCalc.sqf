if (!isServer) exitWith {}; 


while { true } do {
	_daytime = daytime; 

	if(_dayTime == 23.5) then{
		_numPlayers = 0; 
		_numPlayers = count allPlayers;

		_foodConsumed = 0;
		_foodConsumed = 0.75 * _numPlayers; 

		_foodProduced = 0; 
		_foodProduced = (5 * NumSmFoodFacilities) + (10 * NumLgFoodFacilities); 

		_scrapProduced = 0;
		_scrapProduced = (NumSmWorkshops * 3) + (NumLgWorkshops *6);

		_scrapConsumed = 0; 
		_scrapConsumed = (NumLgFoodFacilities + NumLgWorkshops + NumSmFoodFacilities + NumLgFoodFacilities) * 1.5; 

		_dailyFood = _foodConsumed + _foodProduced; 
		_dailyScrap = _scrapConsumed + _scrapProduced; 

		_newFood = GLOBALFOOD + _dailyFood;
		_newScrap = GLOBALSCRAP + _dailyScrap; 

		GLOBALFOOD = _newFood; 
		publicVariable "GLOBALFOOD"; 

		GLOBALSCRAP = _newScrap; 
		publicVariable "GLOBALSCRAP"; 


		
		["You now have %1 food", GLOBALFOOD] remoteExec ["hint", 0];
		//hint format ["You now have %1 food", GLOBALFOOD];
		sleep 10;
		["You now have %1 scrap", GLOBALSCRAP] remoteExec ["hint", 0];
		hint format ["You now have %1 scraps", GLOBALSCRAP];

	}
};