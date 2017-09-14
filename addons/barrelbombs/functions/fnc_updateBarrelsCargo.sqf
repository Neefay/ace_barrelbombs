#include "script_component.hpp"

if (!(isNull(findDisplay DIALOG_BOMBDROP_IDC))) then {
    params["_dropperObject"];
    TRACE_1("Params",_dropperObject);

    if ((vehicle player) == _dropperObject) then {
        [_dropperObject] call FUNC(updateBarrelSpaceLoadBar);
        [_dropperObject] call FUNC(populateBarrelList);
    };
};
