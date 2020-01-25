params ["_playerUnit"];
diag_log "[XERXES] Init Player";
[_playerUnit] execVM "\MilSim\functions\fn_db_insert_player.sqf";