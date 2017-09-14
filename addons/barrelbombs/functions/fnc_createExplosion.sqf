#include "script_component.hpp"

params ["_explosiveType", "_endPosition"];
TRACE_2("Params",_explosiveType,_endPosition);

private _finalExplosion = switch(_explosiveType) do {
    case VALUE_PAYLOAD_LARGE: { CLASSNAME_LARGEEXPLOSION };
    case VALUE_PAYLOAD_BIG: { CLASSNAME_BIGEXPLOSION };
    case VALUE_PAYLOAD_MEDIUM: { CLASSNAME_MEDIUMEXPLOSION };
    case VALUE_PAYLOAD_SMALL: { CLASSNAME_SMALLEXPLOSION };
        default { CLASSNAME_SMALLEXPLOSION }
};

for "_i" from 0 to PROPERTY_EXPLOSIVEAMOUNT do {
    private _explosiveObject = _finalExplosion createVehicle _endPosition;
    _explosiveObject setPosATL _endPosition;
    _explosiveObject setVelocity [PROPERTY_EXPLOSIVESPEED_X, PROPERTY_EXPLOSIVESPEED_Y, PROPERTY_EXPLOSIVESPEED_Z];
};
