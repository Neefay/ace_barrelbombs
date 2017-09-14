#include "script_component.hpp"

class CfgPatches {
    class ADDON {
		name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"ace_common", "ace_interaction", "ace_interact_menu", "Extended_EventHandlers"};
        author = QUOTE(Nife);
		authors[] = {""};
        url = QUOTE(bro.ma);
		VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgDialogs.hpp"
#include "CfgVehicles.hpp"
#include "CfgSounds.hpp"