#include "script_component.hpp"

params ["_dropperObject", "_caller"];
TRACE_2("Params",_dropperObject,_caller);

private _isInVehicle = ((vehicle _caller) == _dropperObject);
private _vehicleRole = _caller call CBA_fnc_vehicleRole;
private _playerIsValid = (_vehicleRole in VALID_SEATS);
private _barrelList = _dropperObject getVariable [QGVAR(loadedBarrels), []];

(_isInVehicle && _playerIsValid && (count _barrelList > 0))