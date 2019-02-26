if(!isServer) exitWith{};

_object = _this; 
_vehicleType = typeOf _this; 

//"rhsusf_m998_d_4dr","rhsusf_m1025_wd_m2","B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_CTRG_LSV_01_light_F","RHS_UAZ_MHS_01","rhs_tigr_msv","rhs_gaz66_msv","I_C_Offroad_02_unarmed_F"

if(_vehicleType isKindOf "rhsusf_m998_d_4dr" ) then {
	deleteVehicle _this; 

	GLOBALSCRAP = GLOBALSCRAP + 30; 
	publicVariable "GLOBALSCRAP";
	hint "You got 30 scrap!"
	sleep 8 
	hint format ["You now have %1 scrap" , GLOBALSCRAP];
	publicVariable "GLOBALSCRAP";
};

if(_vehicleType isKindOf "rhsusf_m1025_wd_m2" ) then {
	deleteVehicle _this; 

	GLOBALSCRAP = GLOBALSCRAP + 45; 
	publicVariable "GLOBALSCRAP";
	hint "You got 30 scrap!"
	sleep 8 
	hint format ["You now have %1 scrap" , GLOBALSCRAP];
	publicVariable "GLOBALSCRAP";
};

if(_vehicleType isKindOf "B_G_Offroad_01_F" ) then {
	deleteVehicle _this; 

	GLOBALSCRAP = GLOBALSCRAP + 25; 
	publicVariable "GLOBALSCRAP";
	hint "You got 30 scrap!"
	sleep 8 
	hint format ["You now have %1 scrap" , GLOBALSCRAP];
	publicVariable "GLOBALSCRAP";
};

if(_vehicleType isKindOf "B_G_Offroad_01_armed_F" ) then {
	deleteVehicle _this; 

	GLOBALSCRAP = GLOBALSCRAP + 40; 
	publicVariable "GLOBALSCRAP";
	hint "You got 30 scrap!"
	sleep 8 
	hint format ["You now have %1 scrap" , GLOBALSCRAP];
	publicVariable "GLOBALSCRAP";
};

if(_vehicleType isKindOf "B_CTRG_LSV_01_light_F") then {
	deleteVehicle _this; 

	GLOBALSCRAP = GLOBALSCRAP + 20; 
	publicVariable "GLOBALSCRAP";
	hint "You got 30 scrap!"
	sleep 8 
	hint format ["You now have %1 scrap" , GLOBALSCRAP];
	publicVariable "GLOBALSCRAP";
};

if(_vehicleType isKindOf "RHS_UAZ_MHS_01" ) then {
	deleteVehicle _this; 

	GLOBALSCRAP = GLOBALSCRAP + 25; 
	publicVariable "GLOBALSCRAP";
	hint "You got 30 scrap!"
	sleep 8 
	hint format ["You now have %1 scrap" , GLOBALSCRAP];
	publicVariable "GLOBALSCRAP";
};

if(_vehicleType isKindOf "rhs_tigr_msv" ) then {
	deleteVehicle _this; 

	GLOBALSCRAP = GLOBALSCRAP + 60; 
	publicVariable "GLOBALSCRAP";
	hint "You got 30 scrap!"
	sleep 8 
	hint format ["You now have %1 scrap" , GLOBALSCRAP];
	publicVariable "GLOBALSCRAP";
};

if(_vehicleType isKindOf "rhs_gaz66_msv" ) then {
	deleteVehicle _this; 

	GLOBALSCRAP = GLOBALSCRAP + 100; 
	publicVariable "GLOBALSCRAP";
	hint "You got 30 scrap!"
	sleep 8 
	hint format ["You now have %1 scrap" , GLOBALSCRAP];
	publicVariable "GLOBALSCRAP";
};

if(_vehicleType isKindOf "I_C_Offroad_02_unarmed_F" ) then {
	deleteVehicle _this; 

	GLOBALSCRAP = GLOBALSCRAP + 100; 
	publicVariable "GLOBALSCRAP";
	hint "You got 30 scrap!"
	sleep 8 
	hint format ["You now have %1 scrap" , GLOBALSCRAP];
	publicVariable "GLOBALSCRAP";
};

