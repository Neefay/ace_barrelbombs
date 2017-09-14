#include "script_component.hpp"

params["_dispenserObject", "_materialsArray"];
TRACE_2("Params",_dispenserObject, _materialsArray);

private ["_finalExplosivesAmount", "_finalClustersAmount"];

if (isNil "_materialsArray") then {
    private _dispenserClass = typeOf _dispenserObject;

    private _dispenserExplosiveLimit = getNumber(configFile >> "CfgVehicles" >> _dispenserClass >> QGVAR(limitExplosives));
    private _dispenserClustersLimit = getNumber(configFile >> "CfgVehicles" >> _dispenserClass >> QGVAR(limitClusters));

    _finalExplosivesAmount = _dispenserExplosiveLimit;
    _finalClustersAmount = _dispenserClustersLimit;
} else {
    _materialsArray params["_explosivesAmount", "_clustersAmount"];

    _finalExplosivesAmount = _explosivesAmount;
    _finalClustersAmount = _clustersAmount;
};

_dispenserObject setVariable [QGVAR(dispenserMaterials), [_finalExplosivesAmount, _finalClustersAmount], true];
_dispenserObject setVariable [QGVAR(initialDispenserMaterials), [_finalExplosivesAmount, _finalClustersAmount], true];
