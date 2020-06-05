TrainingCourse_BulletPathTracing = false;
TrainingCourse_BulletCamera = false;
Action_BulletCamera = false;
Action_BulletTracing = false;
sens = True;

_acre = isClass(configFile >> "cfgPatches" >> "acre_main"); // Returns true if ACRE is enabled
if (_acre) then {
	f_available_languages = [
	["ar", "Arabisch"],
	["ch", "CH-Deutsch"],
	["de", "Deutsch"],
	["en", "Englisch"],
	["fr", "Franzoesisch"],
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
