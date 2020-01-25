_acre = isClass(configFile >> "cfgPatches" >> "acre_main"); // Returns true if ACRE is enabled
if (_acre) then {
	f_available_languages = [
	["ar", "Arabisch"],
	["ch", "CH-Deutsch"],
	["de", "Deutsch"],
	["en", "Englisch"],
	["fr", "Französisch"],
	["gr", "Griechisch"],
	["jp", "Japanisch"],
	["lt", "Latein"],
	["ru", "Russisch"],
	["ts", "Tschechisch"],
	["zh", "Chinesisch"]
	];
	{
		_x call acre_api_fnc_babelAddLanguageType;
	} forEach f_available_languages;

	[] spawn {
		if (!hasInterface) exitWith {};
		if (player != player) then {waitUntil {player == player};};
		if (!alive player) then {waitUntil {alive player};};
	
		_languagesPlayerSpeaks = player getVariable ["f_languages", []];
	
		switch (playerside) do {
		case west: {
				if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["de","en"];};
			};
		case east: {
				if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["ru"];};
			};
		case independent: {
				if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["en","ar"];};
			};
		case civilian: {
				if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["en","fr"];};
			};
		};
	_languagesPlayerSpeaks call acre_api_fnc_babelSetSpokenLanguages;
	};
};
_time = time;
diag_log format ["Babel loaded :: %1",_time];
diag_log"Run Whitelist";
[] execVM "whitelist.sqf";