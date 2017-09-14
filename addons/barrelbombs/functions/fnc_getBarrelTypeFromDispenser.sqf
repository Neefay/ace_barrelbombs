#include "script_component.hpp"

params ["_dispenserObject"];
TRACE_1("Params",_dispenserObject);

private _returnValue = switch (typeOf _dispenserObject) do {
    case QGVAR(Dispenser_01): { CLASSNAME_DEFAULTBARREL };
    default { CLASSNAME_DEFAULTBARREL };
};
_returnValue
