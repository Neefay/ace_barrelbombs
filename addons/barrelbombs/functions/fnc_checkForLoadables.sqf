#include "script_component.hpp"

params ["_barrelObject"];
TRACE_1("Params",_barrelObject);

(count (nearestObjects [_barrelObject, [CLASSNAME_LOADABLEVEHICLE_TYPE], DISTANCE_USE_MIN]) > 0);
