#include "script_component.hpp"

params ["_dropperObject"];
TRACE_1("Params",_dropperObject);

private _ACECargo = [_dropperObject] call EFUNC(cargo,getCargoSpaceLeft);
private _barrelLimit = ((_ACECargo * CONTAINER_ACECARGO_MULTIPLIER) max 1);
private _loadedBarrels = _dropperObject getVariable [QGVAR(loadedBarrels), []];

[_barrelLimit, (count _loadedBarrels)]
