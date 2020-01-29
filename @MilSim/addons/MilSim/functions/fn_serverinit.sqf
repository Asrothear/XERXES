diag_log "[XERXES]  MilSim Init";
[] execVM "\MilSim\functions\fn_db_connect.sqf";

["db_get_data", {
params ["_id","_unit"];
diag_log "TRY!A";
_query = call compile ("extDB3" callExtension format ["0:MilSimDBquery:db_get_player:%1", _id]);
_result = _query select 1;
_result = _result select 0;

_id = parseNumber (_result select 0);
_name = _result select 1;
_mlvl = parseNumber (_result select 4);
_plvl = parseNumber (_result select 5);
_unic = parseNumber (_result select 6);
_blck = parseNumber (_result select 7);

//unit = _unit;
_unit setVariable ["id", _id, true];
_unit setVariable ["mlvl", _mlvl, true];
_unit setVariable ["plvl", _plvl, true];
_unit setVariable ["unic", _unic, true];
_unit setVariable ["blck", _blck, true];

diag_log format ["[XERXES] %1 auf Slot %2 mit Variablen id=%3, mlvl=%4, plvl=%5, unic=%6, blck=%7 beschrieben", _name, _unit, _id, _mlvl, _plvl, _unic, _blck];
}] call CBA_fnc_addEventHandler;
