#include "script_component.hpp"

params ["_barrelObject"];
TRACE_1("Params",_barrelObject);

private _barrelProperties = _barrelObject getVariable [QGVAR(barrelProperties), []];

if (count _barrelProperties == 0) exitWith {};

private _nearLoadables = nearestObjects [_barrelObject, [CLASSNAME_LOADABLEVEHICLE_TYPE], DISTANCE_USE_MIN];

_nearLoadables = [_nearLoadables, {
    private _thisPrefix = (([(typeOf _this), "_"] call CBA_fnc_split) select 0);
    (_thisPrefix in EXCLUDED_VEHICLE_PREFIXES)
}] call CBA_fnc_reject;

if (count _nearLoadables > 0) then {
    private _closestVehicle = (_nearLoadables select 0);
    private _hasBarrelSpace = [_closestVehicle] call FUNC(hasBarrelSpaceLeft);

    if (_hasBarrelSpace) then {

        [player, QGVAR(snd_loadingBarrel), VOLUME_BOMBMAKING_DISTANCE_METERS] call CBA_fnc_globalSay3d;

        [DURATION_LOADINGBARREL_SECONDS, [_closestVehicle, _barrelObject, _barrelProperties],
        {
            params["_sentArguments"];
            _sentArguments params["_closestVehicle", "_barrelObject", "_barrelProperties"];

            if (!(isNull _barrelObject)) then {
                private _vehicleBarrelCargo = _closestVehicle getVariable [QGVAR(loadedBarrels), []];

                _vehicleBarrelCargo pushBack _barrelProperties;
                _closestVehicle setVariable [QGVAR(loadedBarrels), _vehicleBarrelCargo, true];

                [_closestVehicle] remoteExec [QFUNC(updateBarrelsCargo), 0];

                deleteVehicle _barrelObject;
                hint localize(LSTRING(Hint_BarrelLoaded));
            };
        }, { hint "" }, format["%1...", localize(LSTRING(Progress_LoadingIntoVehicle))]] call EFUNC(common,progressBar)
    } else {
        hint localize(LSTRING(Hint_VehicleFull));
    };
} else {
    hint localize(LSTRING(Hint_NoVehicle));
};