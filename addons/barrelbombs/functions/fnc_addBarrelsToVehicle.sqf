/*
 * Author: Nife
 * Adds the desired barrel bombs to a vehicle,
 * already primed and ready to be dropped.
 *
 * Arguments:
 * 0: Target vehicle <OBJECT>
 * 1: Barrels to be added <ARRAY>
 *      1.1: Barrel classname <STRING>
 *      1.2: Type of the payload <STRING> ["large", "big", "medium", "small", "cluster"]
 *      1.3: Fuse time (if "cluster") <NUMBER>
 *      1.4: Cluster amount (if "cluster") <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [myHelicopter, [["Land_MetalBarrel_F", "large"],["Land_MetalBarrel_F", "cluster", 5, 50]]] call ACE_BarrelBombs_fnc_addBarrelsToVehicle;
 *
 * Public: Yes
*/

#include "script_component.hpp"

params["_dropperObject", "_addedBarrels"];
TRACE_2("Params",_dropperObject,_addedBarrels);

private _loadedBarrels = _dropperObject getVariable [QGVAR(loadedBarrels), []];
_loadedBarrels append _addedBarrels;
_dropperObject setVariable [QGVAR(loadedBarrels), _loadedBarrels, true];
