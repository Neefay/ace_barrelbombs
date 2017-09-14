#include "script_component.hpp"

if (!(isNull(findDisplay DIALOG_BOMBPREP_IDC))) then {
    private _dispenserObject = player getVariable [QGVAR(lastUsedDispenser), []];

    private _currentMaterials = _dispenserObject getVariable [QGVAR(dispenserMaterials), [0,0]];
    private _initialMaterials = _dispenserObject getVariable [QGVAR(initialDispenserMaterials), [0,0]];

    disableSerialization;

    params["_dropperObject"];
    _currentMaterials params["_materialsExplosives", "_materialsClusters"];
    _initialMaterials params["_initialExplosives", "_initialClusters"];

    private _explosivesProgressBar = ((findDisplay DIALOG_BOMBPREP_IDC) displayCtrl PROGREESS_EXPLOSIVESLEFT_IDC);
    private _clustersProgressBar = ((findDisplay DIALOG_BOMBPREP_IDC) displayCtrl PROGREESS_CLUSTERSLEFT_IDC);

    private _currentUsage = [] call FUNC(getCurrentMaterialUsage);

    _materialsExplosives = (_materialsExplosives - (_currentUsage select 0));
    _materialsClusters = (_materialsClusters - (_currentUsage select 1));

    private _explosivesPercentage = (_materialsExplosives / _initialExplosives);
    private _clustersPercentage = (_materialsClusters / _initialClusters);

    _explosivesProgressBar progressSetPosition _explosivesPercentage;
    _clustersProgressBar progressSetPosition _clustersPercentage;

    private _notEnoughMaterialsCondition = ((_explosivesPercentage < 0) || ((_clustersPercentage < 0) && ((_currentUsage select 1) > 0)));

    ctrlEnable [BUTTON_CONFIRM_MAKEBARREL, !(_notEnoughMaterialsCondition)];
};
