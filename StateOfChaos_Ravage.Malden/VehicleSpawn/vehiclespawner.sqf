// You were only going to spawn on the server, so don't bother clients with anything
if (!isServer) exitWith {};

// Defaults: 30 count, "PlayZone", crazy vehicle list, false debug, false debug vehicle clean up.
params [
    ["_vehicleCount", 15], 
    ["_markerName", "PlayZone"],
    ["_availableVehicles", ["rhsusf_m998_d_4dr","rhsusf_m1025_wd_m2","B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_CTRG_LSV_01_light_F","RHS_UAZ_MHS_01","rhs_tigr_msv","rhs_gaz66_msv","I_C_Offroad_02_unarmed_F","B_truck_01_covered_F","B_truck_01_fuel_F","B_truck_01_ammo_F","B_LSV_01_light_F"]],
    ["_debug", false], // set to false to disable debugging.
    ["_debugVehicleCleanUp", true] // set to false to disable vehicle delete (lets you cycle the script cleanly)
];

// Initilize new markers or delete previous markers
if (_debug) then {
    // Initilize marker array if it doesn't exist.
    if (isNil "muffin_allMyMarkers") then {muffin_allMyMarkers = []};

    // Delete markers in the array.
    {deleteMarker _x} forEach muffin_allMyMarkers;
    muffin_allMyMarkers = [];  // Reset the array.

    // If we're cleaning up the vehicles, delete the previous ones as well.
    if (_debugVehicleCleanUp) then {
        // Initilize the car list if it doesn't exist.
        if (isNil "muffin_allMyCars") then {muffin_allMyCars = []};

        // Delete each car
        {deleteVehicle _x} forEach muffin_allMyCars;
        muffin_allMyCars = []; // Reset the array.
    };
};

// Get the marker location and size
_markerPos = getMarkerPos _markerName;
_markerSize = getMarkerSize _markerName select 0;

// Grab road segments within marker area.
_roadSegments = _markerPos nearRoads _markerSize;

// Loop for each _vehicleCount
for "_i" from 1 to _vehicleCount do {

    // Grab a random vehicle and a random road segment location.
    _randomClass = selectRandom _availableVehicles;
    _randomPos = getPosATL (selectRandom _roadSegments);

    // Spawn the vehicle at the random spot and rotate it randomly
    _vehicle = _randomClass createVehicle _randomPos;
    _vehicle setDir random(359);
    _damageArray = [0.1,0.2,0.2,0.4,0.5,0.6,0.7];
    _damage = selectRandom _damageArray;

    _vehicle setDamage _damage; 

    // If _debug (_this select 2) is true, we'll mark each vehicle with a marker and combine markers into muffin_allMyMarkers for easy clearing.
    if (_debug) then {
        // Create a debug marker at the spot.
        _marker = ["mil_dot", _randomPos] call BIS_fnc_markerCreate;
        muffin_allMyMarkers pushback _marker;  // Add marker to array of markers

        // If we want to delete the vehicles later...
        if (_debugVehicleCleanUp) then {
            muffin_allMyCars pushback _vehicle; // Add the vehicle to array of vehicles
        };
    };
};