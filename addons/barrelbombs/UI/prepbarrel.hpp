//Exported via Arma Dialog Creator (https://github.com/kayler-renslow/arma-dialog-creator)

#include "script_component.hpp"
#include "CustomControlClasses.hpp"

class GVAR(dialog_prepBarrel)
{
	idd = 1001;
	movingEnable = true;
	
	class ControlsBackground
	{
		class GVAR(backgroundDispenser)
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.30371094;
			y = safeZoneY + safeZoneH * 0.30555556;
			w = safeZoneW * 0.17773438;
			h = safeZoneH * 0.33159723;
			style = 0;
			text = "";
			colorBackground[] = {0,0.2,0,1};
			colorText[] = {0.3647,0.0706,0.9059,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			moving = true;
			
		};
		class GVAR(backgroundImage)
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.4765625;
			y = safeZoneY + safeZoneH * 0.16666667;
			w = safeZoneW * 0.23144532;
			h = safeZoneH * 0.63194445;
			style = 0;
			text = "";
			colorBackground[] = {0.2,0.4,0.2,1};
			colorText[] = {0.3647,0.0706,0.9059,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			moving = true;
			
		};
		class GVAR(txtFuseMethod)
		{
			type = 0;
			idc = 100;
			x = safeZoneX + safeZoneW * 0.48730469;
			y = safeZoneY + safeZoneH * 0.25347223;
			w = safeZoneW * 0.15820313;
			h = safeZoneH * 0.06770834;
			style = 0;
			text = CSTRING(Dialog_PrepBarrel_FuseMethod);
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.5);
			shadow = 2;
			
		};
		class GVAR(txtPayloadTitle)
		{
			type = 0;
			idc = 101;
			x = safeZoneX + safeZoneW * 0.48925782;
			y = safeZoneY + safeZoneH * 0.37673612;
			w = safeZoneW * 0.18261719;
			h = safeZoneH * 0.06770834;
			style = 0;
			text = CSTRING(Dialog_PrepBarrel_PayloadStrength);
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.5);
			shadow = 2;
			
		};
		class GVAR(txtFuseTimerTitle)
		{
			type = 0;
			idc = 102;
			x = safeZoneX + safeZoneW * 0.49023438;
			y = safeZoneY + safeZoneH * 0.37673612;
			w = safeZoneW * 0.18261719;
			h = safeZoneH * 0.06770834;
			style = 0;
			text = CSTRING(Dialog_PrepBarrel_FuseTimer);
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.5);
			shadow = 2;
			
		};
		class GVAR(txtClusterAmountTitle)
		{
			type = 0;
			idc = 103;
			x = safeZoneX + safeZoneW * 0.49023438;
			y = safeZoneY + safeZoneH * 0.52430556;
			w = safeZoneW * 0.18261719;
			h = safeZoneH * 0.06770834;
			style = 0;
			text = CSTRING(Dialog_PrepBarrel_ClusterAmount);
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.5);
			shadow = 2;
			
		};
		class GVAR(txtFuseTimer)
		{
			type = 0;
			idc = 200;
			x = safeZoneX + safeZoneW * 0.48925782;
			y = safeZoneY + safeZoneH * 0.47222223;
			w = safeZoneW * 0.18261719;
			h = safeZoneH * 0.06770834;
			style = 0;
			text = CSTRING(Dialog_PrepBarrel_FuseTimer);
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 2;
			
		};
		class GVAR(txtPrepareBarrel)
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.46875;
			y = safeZoneY + safeZoneH * 0.17361112;
			w = safeZoneW * 0.23144532;
			h = safeZoneH * 0.06770834;
			style = 2;
			text = CSTRING(Dialog_PrepBarrel_PrepareBarrel);
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			shadow = 2;
			
		};
		class GVAR(txtClusterAmount)
		{
			type = 0;
			idc = 201;
			x = safeZoneX + safeZoneW * 0.49121094;
			y = safeZoneY + safeZoneH * 0.61631945;
			w = safeZoneW * 0.18261719;
			h = safeZoneH * 0.05902778;
			style = 0;
			text = CSTRING(Dialog_PrepBarrel_ClusterAmount);
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 2;
			
		};
		class GVAR(txtDispenserStatus)
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.30761719;
			y = safeZoneY + safeZoneH * 0.30729167;
			w = safeZoneW * 0.16308594;
			h = safeZoneH * 0.09375;
			style = 2;
			text = CSTRING(Dialog_PrepBarrel_DispenserMaterials);
			colorBackground[] = {0,0.2,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.1);
			shadow = 2;
			
		};
		class GVAR(txtExplosivesLeft)
		{
			type = 0;
			idc = 601;
			x = safeZoneX + safeZoneW * 0.32714844;
			y = safeZoneY + safeZoneH * 0.390625;
			w = safeZoneW * 0.18261719;
			h = safeZoneH * 0.06770834;
			style = 0;
			text = CSTRING(Dialog_PrepBarrel_ExplosivesLeft);
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 2;
			
		};
		class GVAR(txtClustersLeft)
		{
			type = 0;
			idc = 601;
			x = safeZoneX + safeZoneW * 0.32714844;
			y = safeZoneY + safeZoneH * 0.50173612;
			w = safeZoneW * 0.11425782;
			h = safeZoneH * 0.06770834;
			style = 0;
			text = CSTRING(Dialog_PrepBarrel_ClustersLeft);
			colorBackground[] = {1,1,1,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			shadow = 2;
			
		};
		class GVAR(bgSlider1)
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.33007813;
			y = safeZoneY + safeZoneH * 0.55381945;
			w = safeZoneW * 0.11914063;
			h = safeZoneH * 0.03125;
			style = 0;
			text = "";
			colorBackground[] = {1,1,1,1};
			colorText[] = {0.3647,0.0706,0.9059,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			moving = true;
			
		};
		class GVAR(bgSlider2)
		{
			type = 0;
			idc = 0;
			x = safeZoneX + safeZoneW * 0.33007813;
			y = safeZoneY + safeZoneH * 0.44965278;
			w = safeZoneW * 0.11914063;
			h = safeZoneH * 0.03125;
			style = 0;
			text = "";
			colorBackground[] = {1,1,1,1};
			colorText[] = {0.3647,0.0706,0.9059,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			moving = true;
			
		};
		
	};
	class Controls
	{
		class GVAR(comboFuse)
		{
			type = 4;
			idc = 300;
			x = safeZoneX + safeZoneW * 0.49121094;
			y = safeZoneY + safeZoneH * 0.31597223;
			w = safeZoneW * 0.17675782;
			h = safeZoneH * 0.04513889;
			style = 16;
			arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_ca.paa";
			arrowFull = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_active_ca.paa";
			colorBackground[] = {0,0.2,0,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {1,0,0,1};
			colorSelectBackground[] = {0,0,0,1};
			colorText[] = {0.7255,1,0.098,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1.0};
			soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1.0};
			soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1.0};
			onLBSelChanged  = QUOTE([] call FUNC(changeFuseType));
			wholeHeight = 0.3;
			blinkingPeriod = 0;
			shadow = 0;
			class ComboScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class GVAR(comboStrength)
		{
			type = 4;
			idc = 301;
			x = safeZoneX + safeZoneW * 0.49316407;
			y = safeZoneY + safeZoneH * 0.43923612;
			w = safeZoneW * 0.17480469;
			h = safeZoneH * 0.04513889;
			style = 16;
			arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_ca.paa";
			arrowFull = "\A3\ui_f\data\GUI\RscCommon\RscCombo\arrow_combo_active_ca.paa";
			colorBackground[] = {0,0.2,0,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {1,0,0,1};
			colorSelectBackground[] = {0,0,0,1};
			colorText[] = {0.7255,1,0.098,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1.0};
			soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1.0};
			soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1.0};
			onLBSelChanged  = QUOTE([] call FUNC(updateDispenserMaterials));
			wholeHeight = 0.3;
			blinkingPeriod = 0;
			shadow = 0;
			class ComboScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class GVAR(btnConfirm)
		{
			type = 1;
			idc = 999;
			x = safeZoneX + safeZoneW * 0.50097657;
			y = safeZoneY + safeZoneH * 0.69791667;
			w = safeZoneW * 0.1796875;
			h = safeZoneH * 0.07638889;
			style = 0+2;
			text = CSTRING(Dialog_PrepBarrel_Confirm);
			borderSize = 0;
			colorBackground[] = {0.6,0.302,0,1};
			colorBackgroundActive[] = {0.702,0.4,0.102,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			blinkingPeriod = 0;
			onButtonClick = QUOTE([] call FUNC(confirmBombPrepMenu));			
			shadow = 2;
			tooltip = CSTRING(Dialog_PrepBarrel_Confirm_Tooltip);
			
		};
		class GVAR(sldrFuseTime)
		{
			type = 43;
			idc = 400;
			x = safeZoneX + safeZoneW * 0.49511719;
			y = safeZoneY + safeZoneH * 0.44270834;
			w = safeZoneW * 0.17382813;
			h = safeZoneH * 0.03819445;
			style = 1024;
			arrowEmpty = "\A3\ui_f\data\GUI\Cfg\Slider\arrowEmpty_ca.paa";
			arrowFull = "\A3\ui_f\data\GUI\Cfg\Slider\arrowFull_ca.paa";
			border = "\A3\ui_f\data\GUI\Cfg\Slider\border_ca.paa";
			color[] = {0.6,0.2,0,1};
			colorActive[] = {1,1,1,1};
			thumb = "\A3\ui_f\data\GUI\Cfg\Slider\thumb_ca.paa";
			access = 2;
			onSliderPosChanged = QUOTE([] call FUNC(confirmBombFuseSliderChange));			
			
		};
		class GVAR(sldrClusterAmount)
		{
			type = 43;
			idc = 401;
			x = safeZoneX + safeZoneW * 0.49414063;
			y = safeZoneY + safeZoneH * 0.58333334;
			w = safeZoneW * 0.17382813;
			h = safeZoneH * 0.03819445;
			style = 1024;
			arrowEmpty = "\A3\ui_f\data\GUI\Cfg\Slider\arrowEmpty_ca.paa";
			arrowFull = "\A3\ui_f\data\GUI\Cfg\Slider\arrowFull_ca.paa";
			border = "\A3\ui_f\data\GUI\Cfg\Slider\border_ca.paa";
			color[] = {0.6,0.2,0,1};
			colorActive[] = {1,1,1,1};
			thumb = "\A3\ui_f\data\GUI\Cfg\Slider\thumb_ca.paa";
			access = 2;
			onSliderPosChanged = QUOTE([] call FUNC(confirmBombClusterSliderChange));			
			
		};
		class GVAR(pgrsClusters)
		{
			type = 8;
			idc = 501;
			x = safeZoneX + safeZoneW * 0.33007813;
			y = safeZoneY + safeZoneH * 0.55555556;
			w = safeZoneW * 0.11914063;
			h = safeZoneH * 0.02951389;
			style = 0;
			colorBar[] = {1,0,0,1};
			colorFrame[] = {0.6353,0.1765,0.2471,1};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			tooltip = CSTRING(Dialog_PrepBarrel_DispenserClusters_Tooltip);
			
		};
		class GVAR(pgrsExplosives)
		{
			type = 8;
			idc = 500;
			x = safeZoneX + safeZoneW * 0.33007813;
			y = safeZoneY + safeZoneH * 0.45138889;
			w = safeZoneW * 0.11914063;
			h = safeZoneH * 0.02951389;
			style = 0;
			colorBar[] = {1,0,0,1};
			colorFrame[] = {0.6,0,0,1};
			texture = "#(argb,8,8,3)color(1,1,1,1)";
			tooltip = CSTRING(Dialog_PrepBarrel_DispenserExplosives_Tooltip);
			
		};
		
	};
	
};
