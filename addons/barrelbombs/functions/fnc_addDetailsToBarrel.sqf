#include "script_component.hpp"

params ["_barrelObject"];
TRACE_1("Params",_barrelObject);

private _fin1 = CLASSNAME_FINOBJECT createVehicle [0,0,0];
private _fin2 = CLASSNAME_FINOBJECT createVehicle [0,0,0];
private _fin3 = CLASSNAME_FINOBJECT createVehicle [0,0,0];
private _fin4 = CLASSNAME_FINOBJECT createVehicle [0,0,0];

_fin1 attachTo [_barrelObject, [-0.17,0,0.11]];
_fin2 attachTo [_barrelObject, [0.17,0,0.08]];
_fin3 setDir 90; _fin3 attachTo [_barrelObject, [0,-0.17,0.08]]; _fin3 setDir 90;
_fin4 setDir 90; _fin4 attachTo [_barrelObject, [0,0.17,0.08]]; _fin4 setDir 90;

private _allFins = [_fin1, _fin2, _fin3, _fin4];

[{isNull (_this select 0)},{{ deleteVehicle _x } forEach (_this select 1)}, [_barrelObject, _allFins]] call CBA_fnc_waitUntilAndExecute;
