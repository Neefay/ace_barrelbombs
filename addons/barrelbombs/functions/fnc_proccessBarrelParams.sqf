#include "script_component.hpp"

params ["_payloadSelected", "_fuseSelected", "_timerSelected", "_clusterAmount"];
TRACE_4("Params",_payloadSelected,_fuseSelected,_timerSelected,_clusterAmount);

private _returnValue = switch (_fuseSelected) do {
    case VALUE_FUSE_EXPLOSION: { [_payloadSelected] };
    case VALUE_FUSE_CLUSTER: { [_fuseSelected, (ceil _timerSelected), (ceil _clusterAmount)] };
    default { [_payloadSelected] };
};
_returnValue
