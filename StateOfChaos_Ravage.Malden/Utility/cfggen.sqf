diag_log "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=";
diag_log "# Config Generator Starting...#";
diag_log "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=";

_cfgSearch = "CfgMagazines"; 	// Input the Cfg to return. ("CfgWeapons", "CfgVehicles", "CfgMagazines", "CfgHeads", etc...)
							// These can be found in the infiSTAR Config Viewer or online.

diag_log "--- Printing list now: ---";
_cfgClass = "true" configClasses (configFile >> _cfgSearch);

{
	_cfgName = configName(_x);
	// _parents = [_x, true]call BIS_fnc_returnParents;
	diag_log _cfgName;

}forEach _cfgClass;
diag_log "--- End of list. ---";
diag_log "cfggen.sqf by Woeful_Wolf";