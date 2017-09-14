#include "script_component.hpp"

if (!(isNull(findDisplay DIALOG_BOMBPREP_IDC))) then {
    private _payloadSelected = lbCurSel COMBO_PAYLOAD_IDC;

    _payloadSelected = (_payloadSelected max 0);
    private _currentPayload = VALUE_ALL_PAYLOADS select _payloadSelected;

    private _fuseSelected = lbCurSel COMBO_FUSE_IDC;

    _fuseSelected = (_fuseSelected max 0);
    _fuseSelected = VALUE_ALL_FUSES select _fuseSelected;

    private _clusterSelected = sliderPosition SLIDER_CLUSTERAMNT_IDC;
    _clusterSelected = (_clusterSelected max 0);
    
    private _usedClusters = ceil(_clusterSelected);
    private _usedExplosives = 0;

    switch(_fuseSelected) do {
    case VALUE_FUSE_CLUSTER: { _usedExplosives = MATERIALS_COST_BIGEXPLOSIVE };
    case VALUE_FUSE_EXPLOSION: {
        switch(_currentPayload) do {
            case VALUE_PAYLOAD_LARGE: { _usedExplosives = MATERIALS_COST_LARGEEXPLOSIVE };
            case VALUE_PAYLOAD_BIG: { _usedExplosives = MATERIALS_COST_BIGEXPLOSIVE };
            case VALUE_PAYLOAD_MEDIUM: { _usedExplosives = MATERIALS_COST_MEDIUMEXPLOSIVE };
            case VALUE_PAYLOAD_SMALL: { _usedExplosives = MATERIALS_COST_SMALLEXPLOSIVE };
                default { _usedExplosives = MATERIALS_COST_MEDIUMEXPLOSIVE }
            };
        };
    };
    if (_fuseSelected == VALUE_FUSE_EXPLOSION) then { _usedClusters = 0 };

    [_usedExplosives, _usedClusters]
};
