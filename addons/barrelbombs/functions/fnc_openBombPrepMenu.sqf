#include "script_component.hpp"

if (not dialog) then {
    params["_dispenserObject", "_caller"];
    TRACE_2("Params",_dispenserObject,_caller);

    _caller setVariable [QGVAR(lastUsedDispenser), _dispenserObject];

    disableSerialization;

    createDialog QGVAR(dialog_prepBarrel);

    lbClear COMBO_FUSE_IDC;
    lbClear COMBO_PAYLOAD_IDC;

    private _payloadSettings = [
        localize(LSTRING(Value_Payload_1)),
        localize(LSTRING(Value_Payload_2)),
        localize(LSTRING(Value_Payload_3)),
        localize(LSTRING(Value_Payload_4))
    ];
    private _fuseSettings = [
        localize(LSTRING(Value_Fuse_1)),
        localize(LSTRING(Value_Fuse_2))
    ];

    { lbAdd [COMBO_FUSE_IDC, _x] } forEach _fuseSettings;
    lbSetCurSel [COMBO_FUSE_IDC, 0];

    { lbAdd [COMBO_PAYLOAD_IDC, _x] } forEach _payloadSettings;
    lbSetCurSel [COMBO_PAYLOAD_IDC, 0];

    [] call FUNC(changeFuseType);

    sliderSetRange [SLIDER_FUSETIMER_IDC, MATERIALS_MIN_FUSETIMER, MATERIALS_MAX_FUSETIMER];
    sliderSetPosition [SLIDER_FUSETIMER_IDC, SLIDER_FUSETIMER_INITIAL];

    sliderSetRange [SLIDER_CLUSTERAMNT_IDC, MATERIALS_MIN_CLUSTERS, MATERIALS_MAX_CLUSTERS];
    sliderSetPosition [SLIDER_CLUSTERAMNT_IDC, SLIDER_CLUSTERAMNT_INITIAL];

    [] call FUNC(confirmBombFuseSliderChange);
    [] call FUNC(confirmBombClusterSliderChange);
};
