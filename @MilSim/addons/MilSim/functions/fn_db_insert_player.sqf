_unit = _this select 0;
diag_log "[XERXES] Loading Insert-Player-System";
waitUntil {!isNull _unit};
waitUntil {(getPlayerUID _unit) != ""};
_name = name _unit;
diag_log format ["[XERXES] INIT for %1 in %2", _name, _unit];
_id = getPlayerUID _unit;
_null = "0";
_ones = "1";
// check if payler exist
_query0 = call compile ("extDB3" callExtension format ["0:MilSimDBquery:db_find_player:%1", _id]);
_result = _query0 select 1;
_result = _result select 0;
_asw = _result; 
if (count _asw == 0) then {
	_query = call compile ("extDB3" callExtension format ["0:MilSimDBquery:db_insert_player:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12", _name, _name, _id, _null, _null, _null, _null, _null, _null, _ones, _null, _null]);
	diag_log format ["[XERXES] Result add palyer to DB : %1 :", _query];
	} else {
	// add palyer to DB
	diag_log "[XERXES] Player already in DB. Updating Player ...";
	_query = call compile ("extDB3" callExtension format ["0:MilSimDBquery:db_find_player:%1", _id]);
	_result = _query select 1; 
	_result = _result select 0;
	_alias = _result select 0; 
	diag_log format ["[XERXES] update palyer in DB : Name %1 : Alias %2 :",  _name, _alias];
	
	_query = call compile ("extDB3" callExtension format [
	"0:MilSimDBquery:db_update_player:%1:%2:%3", _null, _null, _id]);
	_query = call compile ("extDB3" callExtension format [
	"0:MilSimDBquery:db_update_player:%1:%2:%3", _name, _alias, _id]);
	diag_log format ["[XERXES] Result update palyer in DB : %1 :", _query];
};