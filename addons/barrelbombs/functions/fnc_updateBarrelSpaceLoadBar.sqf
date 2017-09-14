#include "script_component.hpp"

if (!(isNull(findDisplay DIALOG_BOMBDROP_IDC))) then {
    disableSerialization;

    params["_dropperObject"];
    TRACE_1("Params",_dropperObject);

    private _progressBar = ((findDisplay DIALOG_BOMBDROP_IDC) displayCtrl PROGRESS_CARGOLOAD_IDC);
    _barrelSpace = [_dropperObject] call FUNC(getBarrelSpace);
    _barrelSpace params["_barrelLimit", "_loadedBarrels"];

    private _cargoPercentage = (_loadedBarrels / _barrelLimit);

    _progressBar progressSetPosition _cargoPercentage;
};
