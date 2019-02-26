if(!isServer) exitWith{};

_markerName = "PlayZone";

// Get the marker location and size
_markerPos = getMarkerPos _markerName;
_markerSize = getMarkerSize _markerName select 0;

// Grab road segments within marker area.
_roadSegments = _markerPos nearRoads _markerSize;