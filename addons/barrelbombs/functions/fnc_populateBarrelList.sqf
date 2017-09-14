#include "script_component.hpp"

if (!(isNull(findDisplay DIALOG_BOMBDROP_IDC))) then {
    params ["_dropperObject"];
    TRACE_1("Params",_dropperObject);

    lbClear LIST_LOADEDBARRELS_IDC;
    private _barrelList = _dropperObject getVariable [QGVAR(loadedBarrels), []];

    { lbAdd [LIST_LOADEDBARRELS_IDC, _x call FUNC(getBarrelListDesc)] } forEach _barrelList;
};
