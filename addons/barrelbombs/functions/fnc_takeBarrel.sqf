#include "script_component.hpp"

params ["_dispenserObject", "_barrelProperties"];
TRACE_2("Params",_dispenserObject,_barrelProperties);

_barrelProperties params ["_barrelModel", "_explosiveType", "_fuseDuration", "_clusterAmount"];

private _barrelObject = _barrelModel createVehicle [0,0,0];
_barrelObject allowDamage false;
[_barrelObject] call FUNC(addDetailsToBarrel);

private _dispenserPosition = getPosATL _dispenserObject;
private _randomX = [DISTANCE_DEVIATION_CREATEBARREL_X*-1, DISTANCE_DEVIATION_CREATEBARREL_X] call BIS_fnc_randomInt;

_dispenserPosition set [0, ((_dispenserPosition select 0) + _randomX)];
_dispenserPosition set [1, ((_dispenserPosition select 1) + DISTANCE_MIN_CREATEBARREL_Y)];

_barrelObject setPosATL _dispenserPosition;
[_barrelObject, true, [DISTANCE_INITIALCARRY_BARREL_X, DISTANCE_INITIALCARRY_BARREL_Y, DISTANCE_INITIALCARRY_BARREL_Z], 0] remoteExec [QEFUNC(dragging,setCarryable), 0, true];

_barrelObject setVariable[QGVAR(barrelProperties), _barrelProperties, true];

private _loadBarrelIntoVehicle = [QGVAR(loadIntoVehicle), localize(LSTRING(Action_LoadForDropping)), ICON_ACTION_LOADBARREL, FUNC(loadBarrelIntoVehicle), FUNC(checkForLoadables)] call EFUNC(interact_menu,createAction);
[_barrelObject, 0, ["ACE_MainActions"], _loadBarrelIntoVehicle, true] remoteExec [QEFUNC(interact_menu,addActionToObject), 0, true];

private _barrelInspectionText = [_barrelObject] call FUNC(inspectBarrel);
[_barrelObject, TEXTURE_BARRELBACKGROUND, _barrelInspectionText] remoteExec [QFUNC(addInspection), 0, true];
