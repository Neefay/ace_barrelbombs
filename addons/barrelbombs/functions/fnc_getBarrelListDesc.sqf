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
    case VALUE_FUSE_CLUSTER: { format["%1 %2 [%3 %4 %5 %6]", _localizedAirBurst, _barrelObjectDesc, _timerSelected, localize(LSTRING(Time_Short_Seconds)), _clusterAmount, localize(LSTRING(Materials_Plural_Clusters))] };
    default {
        switch(_fuseSelected) do {
            case VALUE_PAYLOAD_LARGE: { format["%1 %2 [%3]", _localizedImpactFuse, _barrelObjectDesc, localize(LSTRING(Value_Payload_1))] };
            case VALUE_PAYLOAD_BIG: { format["%1 %2 [%3]", _localizedImpactFuse, _barrelObjectDesc, localize(LSTRING(Value_Payload_2))] };
            case VALUE_PAYLOAD_MEDIUM: { format["%1 %2 [%3]", _localizedImpactFuse, _barrelObjectDesc, localize(LSTRING(Value_Payload_3))] };
            case VALUE_PAYLOAD_SMALL: { format["%1 %2 [%3]", _localizedImpactFuse, _barrelObjectDesc, localize(LSTRING(Value_Payload_4))] };
        };
    };
};
_barrelDesc
