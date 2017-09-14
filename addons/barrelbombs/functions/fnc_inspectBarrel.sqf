#include "script_component.hpp"

params ["_barrelObject"];
TRACE_1("Params",_barrelObject);

private _barrelProperties = _barrelObject getVariable [QGVAR(barrelProperties), []];

private _barrelDescription = _barrelProperties call FUNC(getBarrelListArray);

_barrelDescription params["_fuseSelected", "_barrelObjectDesc", "_fuseString", "_payloadDetail", "_clusterAmount"];
TRACE_5("Barrel description",_fuseSelected,_barrelObjectDesc,_fuseString,_payloadDetail,_clusterAmount);

private _finalText = format["
    <br/><br/>
    <t align='center'>(%1)</t>
    <br/><br/><br/><br/><br/><br/>
    <t align='center'><t size='3.0'><t color='#e2140d'>%2:</t></t></t><br/>
    <br/>
    <br/>
    <t align='center'><t size='2.0'><t color='#edcf0e'>%3</t></t></t>
", _barrelObjectDesc, toUpper(localize(LSTRING(String_Warning))), toUpper(_fuseString)];

if (_fuseSelected == VALUE_FUSE_CLUSTER) then {
    _finalText = format["%1 <br/><br/><t align='center'><t size='1.5'><t color='#ffffff'>%2 %3 %4<br/>%5 %6</t></t></t>", _finalText, _payloadDetail, toUpper(localize(LSTRING(Time_Long_Plural_Seconds))), toUpper(localize(LSTRING(String_Fuse))), _clusterAmount, toUpper(localize(LSTRING(Materials_Long_Clusters)))];
} else {
    _finalText = format["%1 <br/><br/><t align='center'><t size='1.5'><t color='#ffffff'>%2 %3</t></t></t>", _finalText, toUpper(_payloadDetail), toUpper(localize(LSTRING(String_Payload)))];
};

_finalText = format["%1<br/><br/><br/><br/><t color='#e2140d'><t align='center'>%2</t></t>", _finalText, toUpper(localize(LSTRING(String_HandleWithCaution)))];

_finalText
