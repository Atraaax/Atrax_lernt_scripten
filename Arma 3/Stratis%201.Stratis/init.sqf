//standard values for tfar
/*#include "\task_force_radio\functions\common.sqf";

if ((isServer) or (isDedicated)) then {
    tf_no_auto_long_range_radio = true;
    publicVariable "tf_no_auto_long_range_radio";
    tf_same_sw_frequencies_for_side = true;
    publicVariable "tf_same_sw_frequencies_for_side";
    tf_same_lr_frequencies_for_side = true;
    publicVariable "tf_same_lr_frequencies_for_side";

    _settingsSwWest = false call TFAR_fnc_generateSwSettings;
    _settingsSwWest set [2, ["311","312","313","314","315","316","317","318"]];
    tf_freq_west = _settingsSwWest;

     _settingsLrWest = false call TFAR_fnc_generateLrSettings;
     _settingsLrWest set [2, ["30","41","42","43","44","45","46","47","48"]];
     tf_freq_west_lr = _settingsLrWest;

}; */

//itemspawn
if (isServer) then {call compile preprocessFile "scripts\locationlist.sqf";};

_side = createCenter east;

//precompile flightpath at mission start
path = compile preprocessFile "scripts\path.sqf";
path2 = compile preprocessFile "scripts\path2.sqf";

//start mission flight to start location
rec = [] spawn path;
rec2 = [] spawn path2;

//hide markers for UPS script
"pat1" setMarkerPos [-(getMarkerPos "pat1" select 0),-(getMarkerPos "pat1" select 1)];
"pat2" setMarkerPos [-(getMarkerPos "pat2" select 0),-(getMarkerPos "pat2" select 1)];
"pat3" setMarkerPos [-(getMarkerPos "pat3" select 0),-(getMarkerPos "pat3" select 1)];
