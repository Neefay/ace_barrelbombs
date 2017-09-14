#include "script_component.hpp"

params ["_dropperObject"];
TRACE_1("Params",_dropperObject);

private _barrelSpace = [_dropperObject] call FUNC(getBarrelSpace);
_barrelSpace params["_barrelLimit", "_loadedBarrels"];

((_barrelLimit - _loadedBarrels) > 0)
