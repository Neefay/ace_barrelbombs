#include "script_component.hpp"

params ["_dropperObject"];
TRACE_1("Params",_dropperObject);

(count (_dropperObject getVariable [QGVAR(loadedBarrels), []]) > 0);
