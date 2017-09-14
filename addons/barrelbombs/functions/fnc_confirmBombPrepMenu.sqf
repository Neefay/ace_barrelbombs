#include "script_component.hpp"

private _selectedDispenser = player getVariable [QGVAR(lastUsedDispenser), nil];
TRACE_1("LastDispenser",_selectedDispenser);

if (!isNil "_selectedDispenser") then {
    private _payloadSelected = lbCurSel COMBO_PAYLOAD_IDC;
    private _fuseSelected = lbCurSel COMBO_FUSE_IDC;
    private _timerSelected = (sliderPosition SLIDER_FUSETIMER_IDC);
    private _clustersSelected = (sliderPosition SLIDER_CLUSTERAMNT_IDC);

    _payloadSelected = VALUE_ALL_PAYLOADS select _payloadSelected;
    _fuseSelected = VALUE_ALL_FUSES select _fuseSelected;

    private _barrelProperties = [];
    private _barrelClass = [_selectedDispenser] call FUNC(getBarrelTypeFromDispenser);

    _barrelProperties pushBack _barrelClass;
    _barrelProperties append ([_payloadSelected, _fuseSelected, _timerSelected, _clustersSelected] call FUNC(proccessBarrelParams));

    private _usedMaterials = [] call FUNC(getCurrentMaterialUsage);

    [_selectedDispenser, QGVAR(snd_makingBomb), VOLUME_BOMBMAKING_DISTANCE_METERS] call CBA_fnc_globalSay3d;

    closeDialog 0;

    [DURATION_BOMBMAKING_SECONDS, [_selectedDispenser, _barrelProperties, _usedMaterials],
    {
        params ["_sentArguments"];
        _sentArguments params ["_selectedDispenser", "_barrelProperties", "_usedMaterials"];

        private _currentMaterials = _selectedDispenser getVariable QGVAR(dispenserMaterials);

        private _remainingExplosives = ((_currentMaterials select 0) - (_usedMaterials select 0));
        private _remainingClusters = ((_currentMaterials select 1) - (_usedMaterials select 1));

        private _notEnoughMaterialsCondition = ((_remainingExplosives < 0) || ((_remainingClusters < 0) && ((_usedMaterials select 1) > 0)));

        if (!(_notEnoughMaterialsCondition)) then {

            _currentMaterials set [0, _remainingExplosives];
            _currentMaterials set [1, _remainingClusters];

            _selectedDispenser setVariable [QGVAR(dispenserMaterials), _currentMaterials, true];

            [] remoteExec [QFUNC(updateDispenserMaterials), 0];

            [_selectedDispenser, _barrelProperties] call FUNC(takeBarrel);

            hint localize(LSTRING(Hint_BombMakingFinished));
        } else {
            hint localize(LSTRING(Hint_BombMakingCancelled));
        };
    }, { hint localize(LSTRING(Hint_BombMakingCancelled)); }, format["%1...", localize(LSTRING(Progress_MakingBarrelBomb))]] call EFUNC(common,progressBar);
} else {
    hint localize(LSTRING(Hint_InvalidDispenser));
};
