#include "script_component.hpp"

private _fuseSelected = lbCurSel COMBO_FUSE_IDC;
private _fuseSettings = ["explosion", "cluster"];
_fuseSelected = _fuseSettings select _fuseSelected;

switch (_fuseSelected) do {
    case "cluster": {
        private _showClusterMenu = true;

        ctrlShow [TEXT_FUSETIMER_IDC, _showClusterMenu];
        ctrlShow [SUBTXT_FUSETIMER_IDC, _showClusterMenu];
        ctrlShow [SLIDER_FUSETIMER_IDC, _showClusterMenu];

        ctrlShow [TEXT_CLUSTER_IDC, _showClusterMenu];
        ctrlShow [SUBTXT_CLUSTERAMNT_IDC, _showClusterMenu];
        ctrlShow [SLIDER_CLUSTERAMNT_IDC, _showClusterMenu];

        ctrlShow [TEXT_PAYLOAD_IDC, !(_showClusterMenu)];
        ctrlShow [COMBO_PAYLOAD_IDC, !(_showClusterMenu)];

        sliderSetPosition [SLIDER_FUSETIMER_IDC, SLIDER_FUSETIMER_INITIAL];
        sliderSetPosition [SLIDER_CLUSTERAMNT_IDC, SLIDER_CLUSTERAMNT_INITIAL];
    };
    case "explosion": {
        private _showClusterMenu = false;

        ctrlShow [TEXT_FUSETIMER_IDC, _showClusterMenu];
        ctrlShow [SUBTXT_FUSETIMER_IDC, _showClusterMenu];
        ctrlShow [SLIDER_FUSETIMER_IDC, _showClusterMenu];

        ctrlShow [TEXT_CLUSTER_IDC, _showClusterMenu];
        ctrlShow [SUBTXT_CLUSTERAMNT_IDC, _showClusterMenu];
        ctrlShow [SLIDER_CLUSTERAMNT_IDC, _showClusterMenu];

        ctrlShow [TEXT_PAYLOAD_IDC, !(_showClusterMenu)];
        ctrlShow [COMBO_PAYLOAD_IDC, !(_showClusterMenu)];

        sliderSetPosition [SLIDER_FUSETIMER_IDC, SLIDER_FUSETIMER_INITIAL];
        sliderSetPosition [SLIDER_CLUSTERAMNT_IDC, SLIDER_CLUSTERAMNT_INITIAL];
    };
};

[] call FUNC(updateDispenserMaterials);
