diag_log "[XERXES] Begin establishing connection with DB";
// RESET DB
"extDB3" callExtension "9:RESET";
// DB-Anbindung herstellen und Protokoll für eigene SQL-Statements anlegen
DB_connect_MilSimDB = call compile ("extDB3" callExtension "9:ADD_DATABASE:MilSimDB");
// Protokolle
PROTOCOL_connect_MilSim = call compile ("extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:MilSimDB:SQL_CUSTOM:MilSimDBquery:MilSim.ini");
//lock DB for system commands beginning with 9:
"extDB3" callExtension "9:LOCK:unlock_me";
// Fehlerbehandlung bei gescheiterter Verbindung
if ((DB_connect_MilSimDB select 0 == 0) and !(DB_connect_MilSimDB select 1 isEqualTo "Already Connected to Database")) exitWith {diag_log format["[XERXES] error with ADD_DATABASE: %1", DB_connect_MilSimDB select 1]};
diag_log "[XERXES] DB-Anbindung erfolgreich!";
if ((PROTOCOL_connect_MilSim select 0 == 0) and !(PROTOCOL_connect_MilSim select 1 isEqualTo "Error Protocol Name Already Taken")) exitWith {diag_log format["[XERXES] error with ADD_DATABASE_PROTOCOL: %1", PROTOCOL_connect_MilSim select 1]};
