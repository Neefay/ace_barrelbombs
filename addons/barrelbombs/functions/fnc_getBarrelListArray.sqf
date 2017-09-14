#include "script_component.hpp"

params ["_barrelModel", "_fuseSelected", "_timerSelected", "_clusterAmount"];
TRACE_4("Params",_barrelModel,_fuseSelected,_timerSelected,_clusterAmount);

private _localizedDefaultBarrel = localize(LSTRING(Materials_DrumBarrel));

private _barrelObjectDesc = switch(_barrelModel) do {
    case CLASSNAME_DEFAULTBARREL: { _localizedDefaultBarrel };
    default { _localizedDefaultBarrel }
};

private _localizedImpactFuse = localize(LSTRING(Value_Fuse_1));
private _localizedAirBurst = localize(LSTRING(Value_Fuse_2));

private _barrelDesc = switch(_fuseSelected) do {
    case VALUE_FUSE_CLUSTER: { [_fuseSelected, _barrelObjectDesc, _localizedAirBurst, _timerSelected, _clusterAmount] };
    default {
        switch(_fuseSelected) do {
            case VALUE_PAYLOAD_LARGE: { [_fuseSelected, _barrelObjectDesc, _localizedImpactFuse, localize(LSTRING(Value_Payload_1))] };
            case VALUE_PAYLOAD_BIG: { [_fuseSelected, _barrelObjectDesc, _localizedImpactFuse, localize(LSTRING(Value_Payload_2))] };
            case VALUE_PAYLOAD_MEDIUM: { [_fuseSelected, _barrelObjectDesc, _localizedImpactFuse, localize(LSTRING(Value_Payload_3))] };
            case VALUE_PAYLOAD_SMALL: { [_fuseSelected, _barrelObjectDesc, _localizedImpactFuse, localize(LSTRING(Value_Payload_4))] };
        };
    };
};
_barrelDesc
