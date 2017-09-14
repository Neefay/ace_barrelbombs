#include "script_component.hpp"

private _timerSelected = sliderPosition SLIDER_FUSETIMER_IDC;
_timerSelected = ceil(_timerSelected);
ctrlSetText [SUBTXT_FUSETIMER_IDC, format["%1 %2", _timerSelected, localize(LSTRING(Time_Long_Plural_Seconds))]];
