#include "script_component.hpp"

params ["_target", "_background", "_text"];
TRACE_3("Params",_target,_background,_text);
[_target, [_background], _text] call BIS_fnc_initInspectable;
