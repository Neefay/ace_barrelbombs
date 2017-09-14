#include "script_component.hpp"

params ["_endPosition", "_clusterAmount"];
TRACE_2("Params",_endPosition,_clusterAmount);

if (_clusterAmount > 0) then {
    _detonatorObject = CLASSNAME_CLUSTERDETONATOR createVehicle _endPosition;
    _explosionObject = CLASSNAME_CLUSTEREXPLOSION createVehicle _endPosition;

    _detonatorObject setPosATL _endPosition;
    _explosionObject setPosATL _endPosition;

    _explosionObject hideObjectGlobal true;

    [{
        params ["_endPosition", "_clusterAmount", "_detonatorObject"];
        deleteVehicle _detonatorObject;

        private _clusterAmount = _clusterAmount;

        for "_i" from 0 to _clusterAmount do {
            private _randomX = [PROPERTY_CLUSTERDEVIATION_METERS*-1, PROPERTY_CLUSTERDEVIATION_METERS] call BIS_fnc_randomInt;
            private _randomY = [PROPERTY_CLUSTERDEVIATION_METERS*-1, PROPERTY_CLUSTERDEVIATION_METERS] call BIS_fnc_randomInt;

            _clusterObject = CLASSNAME_CLUSTERMUNITION createVehicle _endPosition;
            _clusterObject setVelocity [_randomX, _randomY, PROPERTY_CLUSTERSPEED];
        };
    }, [_endPosition, _clusterAmount, _detonatorObject], INTERVAL_CLUSTEREXPLOSION_SECONDS] call CBA_fnc_waitAndExecute;
};
