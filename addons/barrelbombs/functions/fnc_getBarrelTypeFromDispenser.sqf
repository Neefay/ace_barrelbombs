#include "script_component.hpp"

params ["_dispenserObject"];
TRACE_1("Params",_dispenserObject);

private _dispenserBarrel = getText(configFile >> "CfgVehicles" >> (typeOf _dispenserObject) >> QGVAR(dispenserBarrel));

_dispenserBarrel
