#include "script_component.hpp"

private _clusterSelected = sliderPosition SLIDER_CLUSTERAMNT_IDC;
_clusterSelected = ceil(_clusterSelected);
ctrlSetText [SUBTXT_CLUSTERAMNT_IDC, format["%1 %2", _clusterSelected, localize(LSTRING(Menu_PrepBarrel_currentCluster))]];

[] call FUNC(updateDispenserMaterials);
