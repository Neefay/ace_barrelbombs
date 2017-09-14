#include "script_component.hpp"

if (not dialog) then {
    params ["_dropperObject"];
    TRACE_1("Params",_dropperObject);

    createDialog QGVAR(dialog_dropbarrel);

    [_dropperObject] call FUNC(populateBarrelList);
    [_dropperObject] call FUNC(updateBarrelSpaceLoadBar);

    [
        {(((vehicle player) != _this) || (getDammage _this == 1))},
        { closeDialog DIALOG_BOMBDROP_IDC }
    , _dropperObject] call CBA_fnc_waitUntilAndExecute;
};
