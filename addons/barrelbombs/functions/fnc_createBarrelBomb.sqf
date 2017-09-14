#include "script_component.hpp"

params ["_dropperObject", "_barrelClass", "_explosiveType", ["_fuseTime", 99], ["_clusterAmount", 0]];
TRACE_5("CreatedBarrel",_dropperObject,_barrelClass,_explosiveType,_fuseTime,_clusterAmount);

private _delayTime = 0.5;
private _dropperVelocity = velocity _dropperObject;
private _dropperObjectPos = getPosATL _dropperObject;

private _barrelObject = _barrelClass createVehicle _dropperObjectPos;

[_barrelObject] call FUNC(addDetailsToBarrel);

_barrelObject disableCollisionWith _dropperObject;
_barrelObject setPosATL _dropperObjectPos;
_barrelObject setVelocity _dropperVelocity;

[{
    [_this, QGVAR(snd_fallingSound), VOLUME_FALLINGSOUND_DISTANCE_METERS] call CBA_fnc_globalSay3d;
}, _barrelObject, INTERVAL_FALLINGSOUND_START_SECONDS] call CBA_fnc_waitAndExecute;

[{
    params ["_barrelObject", "_explosiveType", "_fuseTime", "_clusterAmount"];
    private _fuseTriggerTime = time;

    [{(((abs speed (_this select 0)) <= 0) || ((time - (_this select 2)) >= (_this select 3)))}, {
        params ["_barrelObject", "_explosiveType", "_fuseTriggerTime", "_fuseTime", "_clusterAmount"];

        private _endPosition = getPosATL _barrelObject;
        deleteVehicle _barrelObject;

        if (_explosiveType == VALUE_FUSE_CLUSTER) then { [_endPosition, _clusterAmount] call FUNC(createClusterExplosions) }
        else { [_explosiveType, _endPosition] call FUNC(createExplosion) };

    }, [_barrelObject, _explosiveType, _fuseTriggerTime, _fuseTime, _clusterAmount]] call CBA_fnc_waitUntilAndExecute;
}, [_barrelObject, _explosiveType, _fuseTime, _clusterAmount], _delayTime] call CBA_fnc_waitAndExecute;
