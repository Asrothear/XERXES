diag_log "[XERXES]  MilSim Init";
[] execVM "\MilSim\functions\fn_db_connect.sqf";

["db_get_data", {
 params ["_id","_unit"];
 diag_log "TRY!A";
 db_var_startParams = _this;
 ResultContent = nil;
 serverRunningQuery = true;
    _query = call compile ("extDB3" callExtension format ["0:MilSimDBquery:db_get_player:%1", _id]);
_result = _query select 1; 
_result = _result select 0;

_id = parseNumber (_result select 0); 
_name = _result select 1; 
_mlvl = parseNumber (_result select 4); 
_plvl = parseNumber (_result select 5); 
_unic = parseNumber (_result select 6); 
_blck = parseNumber (_result select 7);

unit = _unit;
unit setVariable ["id", _id, true]; 
unit setVariable ["mlvl", _mlvl, true]; 
unit setVariable ["plvl", _plvl, true]; 
unit setVariable ["unic", _unic, true]; 
unit setVariable ["blck", _blck, true];

diag_log format ["[XERXES] %1 auf Slot %2 mit Variablen id=%3, mlvl=%4, plvl=%5, unic=%6, blck=%7 beschrieben", _name, _unit, _id, _mlvl, _plvl, _unic, _blck];
}] call CBA_fnc_addEventHandler;

[arsenal_1, ["Infos",{[] execVM "getunits.sqf";}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];

[arsenal_1, ["Standart Gear Laden",{[] execVM "whitelist.sqf";}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];

[arsenal_1, ["Finde Kiffa",{[] execVM "fn_find_kiffa.sqf";}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];

[arsenal_1, ["Arsenal",{[player, player, true] call ace_arsenal_fnc_openBox}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];

//[arsenal_1, ["<t color='#-2-2FF-2-2'>Heal</t>",{[[objNull, player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;,"BIS_fnc_spawn",true,true] call BIS_fnc_MP;}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];


[arsenal_2, ["Infos",{[] execVM "getunits.sqf";}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];

[arsenal_2, ["Standart Gear Laden",{[] execVM "whitelist.sqf";}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];

[arsenal_2, ["Finde Kiffa",{[] execVM "fn_find_kiffa.sqf";}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];

[arsenal_2, ["Arsenal",{[player, player, true] call ace_arsenal_fnc_openBox}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];

//[arsenal_2, ["<t color='#-2-2FF-2-2'>Heal</t>",{[[objNull, player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];

[currym_1, 
	["Aufschrift lesen",
	{
		hint format["Marshmallow´s mit Curry Geschmack \n Das ist die teuerste Sorte die es zu kaufen gibt... \n Für so etwas haben wir Geld \n aber für bessere Ausrüstung nicht ??"];
	},
	[], 6, false, true, "", "", 6]
	] 
	remoteExec ["addAction",-2,true];
	
[currym_2, 
	["Aufschrift lesen",
	{
		hint format["Marshmallow´s mit Curry Geschmack \n Das ist die teuerste Sorte die es zu kaufen gibt... \n Für so etwas haben wir Geld \n aber für bessere Ausrüstung nicht ??"];
	},
	[], 6, false, true, "", "", 6]
	] 
	remoteExec ["addAction",-2,true];
	
[currym_3, 
	["Aufschrift lesen",
	{
		hint format["Marshmallow´s mit Curry Geschmack \n Das ist die teuerste Sorte die es zu kaufen gibt... \n Für so etwas haben wir Geld \n aber für bessere Ausrüstung nicht ??"];
	},
	[], 6, false, true, "", "", 6]
	] 
	remoteExec ["addAction",-2,true];


