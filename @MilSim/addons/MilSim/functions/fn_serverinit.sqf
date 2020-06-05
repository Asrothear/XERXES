TrainingCourse_Server_Blocked = false;
TrainingCourse_Blocked = True;
sens = True;
publicVariable "TrainingCourse_Blocked";
top_value = 1.5;
publicVariable "top_value";
strave_value = 2.5;
publicVariable "strave_value";
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

publicVariable "id";
publicVariable "mlvl";
publicVariable "plvl";
publicVariable "unic";
publicVariable "blck";

_unit setVariable ["id", _id, true];
_unit setVariable ["mlvl", _mlvl, true];
_unit setVariable ["plvl", _plvl, true];
_unit setVariable ["unic", _unic, true];
_unit setVariable ["blck", _blck, true];


diag_log format ["[XERXES] %1 auf Slot %2 mit Variablen id=%3, mlvl=%4, plvl=%5, unic=%6, blck=%7 beschrieben", _name, _unit, _id, _mlvl, _plvl, _unic, _blck];
}] call CBA_fnc_addEventHandler;

["toggle_train", {
params ["_unit"];
TrainingCourse_Server_Blocked = !TrainingCourse_Server_Blocked;
"hello" remoteExec ["hint", _unit];
 }] call CBA_fnc_addEventHandler;

diag_log "[XERXES] Load Server-Side Whitelist..."
[] execVM "\MilSim\functions\fn_db_connect.sqf";
diag_log "[XERXES] Server-Side Whitelist Loaded";

removeAllActions arsenal_1;
[arsenal_1, ["Standart Gear Laden",{[] execVM "whitelist.sqf";}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];
[arsenal_1, ["Arsenal",{[player, player, true] call ace_arsenal_fnc_openBox}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];

removeAllActions arsenal_2;
[arsenal_2, ["Infos",{[] execVM "getunits.sqf";}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];
[arsenal_2, ["Finde Kiffa",{[] execVM "fn_find_kiffa.sqf";}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];
[arsenal_2, [("<t color=""#DDDD16"">" + "Toggle Action Bullet Path" + "</t>"),{[] execVM "fnc_toggle_action_bt.sqf";}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];
[arsenal_2, [("<t color=""#CCAA44"">" + "Toggle Action Bullet Cam" + "</t>"),{[] execVM "fnc_toggle_action_bc.sqf";}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];
[arsenal_2, [("<t color=""#AABB00"">" + "Heilen" + "</t>"),{[[objNull, player] call ace_medical_treatment_fnc_fullHeal,"BIS_fnc_spawn",true,true] call BIS_fnc_MP;}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",-2,true];
//[arsenal_2, [("<t color=""#00FF00"">" + "Alle Heilen" + "</t>"),{[[objNull, player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal,"BIS_fnc_spawn",true,true] call BIS_fnc_MP;}, [], 6, false, true, "", "", 6]] remoteExec ["addAction",0,true];

removeAllActions currym_1;
removeAllActions currym_2;
removeAllActions currym_3;
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

while {true} do {
	if (TrainingCourse_Server_Blocked) then {
		TrainingCourse_Blocked = True;
		publicVariable "TrainingCourse_Blocked";
	}else{
		TrainingCourse_Blocked = False;
		publicVariable "TrainingCourse_Blocked";
	};
	sleep 0.5;
};

while {true} do {
	if (sens) then {
		sens = True;
		publicVariable "sens";
	}else{
		sens = False;
		publicVariable "sens";
	};
	sleep 0.5;
};
