//Exported via Arma Dialog Creator (https://github.com/kayler-renslow/arma-dialog-creator)

#include "script_component.hpp"
#include "CustomControlClasses.hpp"

class GVAR(dialog_dropBarrel)
{
	idd = 1002;
	movingEnable = true;
	
	class ControlsBackground
	{
		class GVAR(bgMenu)
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.34277344;
			y = safeZoneY + safeZoneH * 0.25;
			w = safeZoneW * 0.31445313;
			h = safeZoneH * 0.52430556;
			style = 0;
			text = "";
			colorBackground[] = {0.102,0.302,0.102,1};
			colorText[] = {0.9176,0.549,0.7176,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			moving = true;
			
		};
		class GVAR(txtDropText)
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.39160157;
			y = safeZoneY + safeZoneH * 0.27430556;
			w = safeZoneW * 0.21679688;
			h = safeZoneH * 0.0625;
			style = 0+2;
			text = CSTRING(Dialog_DropBarrel_LoadedBarrels);
			colorBackground[] = {0.251,0.1176,0.4039,0};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			shadow = 2;
			
		};
		
	};
	class Controls
	{
		class GVAR(btnDrop)
		{
			type = 1;
			idc = 301;
			x = safeZoneX + safeZoneW * 0.41601563;
			y = safeZoneY + safeZoneH * 0.66319445;
			w = safeZoneW * 0.16796875;
			h = safeZoneH * 0.0625;
			style = 0+2;
			text = CSTRING(Dialog_DropBarrel_DropSelected);
			borderSize = 0;
			colorBackground[] = {0.6,0.2,0,1};
			colorBackgroundActive[] = {0.702,0.302,0.102,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.5);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			colorFocused2[] = {0.8,0.4,0.2,1};
			default = false;
			onButtonDown = QUOTE([] call FUNC(confirmBarrelDropMenu));			
			shadow = 2;
			
		};
		class GVAR(listBarrels)
		{
			type = 5;
			idc = 300;
			x = safeZoneX + safeZoneW * 0.3671875;
			y = safeZoneY + safeZoneH * 0.37152778;
			w = safeZoneW * 0.265625;
			h = safeZoneH * 0.15277778;
			style = 16;
			colorBackground[] = {0,0,0,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0,0.2,0,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.85);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			shadow = 0;
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class GVAR(progressBarDrop)
		{
			type = 8;
			idc = 302;
			x = safeZoneX + safeZoneW * 0.41601563;
			y = safeZoneY + safeZoneH * 0.59027778;
			w = safeZoneW * 0.16796875;
			h = safeZoneH * 0.03125;
			style = 0;
			colorBar[] = {1,1,1,1};
			colorFrame[] = {0,0,0,1};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			
		};
		class GVAR(txtCargoLimit)
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.41113282;
			y = safeZoneY + safeZoneH * 0.54340278;
			w = safeZoneW * 0.16796875;
			h = safeZoneH * 0.03819445;
			style = 0;
			text = CSTRING(Dialog_DropBarrel_CargoLimit);
			colorBackground[] = {0.4667,0.6078,0.4627,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.5);
			shadow = 2;
			
		};
		
	};
	
};
