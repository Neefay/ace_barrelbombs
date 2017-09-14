#include "script_component.hpp"

private _selectedIndex = lbCurSel LIST_LOADEDBARRELS_IDC;

if (!isNil "_selectedIndex") then {
    private _dropperObject = (vehicle player);

    private _loadedBarrels = _dropperObject getVariable [QGVAR(loadedBarrels), []];

    if (count _loadedBarrels > 0) then {
        private _droppedBarrel = (_loadedBarrels select _selectedIndex);
        _droppedBarrel params ["_barrelClass", "_explosiveType", "_fuseTime", "_clusterAmount"];

        _loadedBarrels deleteAt _selectedindex;
        _dropperObject setVariable [QGVAR(loadedBarrels), _loadedBarrels, true];

        [_dropperObject] remoteExec [QFUNC(updateBarrelsCargo), 0];

        [_dropperObject, _barrelClass, _explosiveType, _fuseTime, _clusterAmount] call FUNC(createBarrelBomb);
    };
};
