#include "script_component.hpp"

params ["_dispenserObject", "_caller"];
TRACE_2("Params",_dispenserObject,_caller);
private _returnValue = _dispenserObject getVariable [QGVAR(dispenserMaterials), []];

(count _returnValue > 0)
