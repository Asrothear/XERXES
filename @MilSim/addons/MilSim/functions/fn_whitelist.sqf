["fnc_whitelist", {
	diag_log "[XERXES] Whitelisting loading";
	hint "Whitelisting loading";
	params ["_id","_unit"];
	diag_log "TRY!A";

	private ["_lor", "_mlvl", "_plvl", "_unic", "_blck", "_med", "_pio", "_spe", "_sch", "_r_lor" ,"_r_med","_r_pio","_r_spe", "_cre", "_r_cre", "_r_mai", "_handle"];

	//remove Player gear to prevent Gear glitches
	waitUntil {!isNull player};
	removeAllWeapons player;
	removeAllItems player;
	removeAllAssignedItems player;
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeHeadgear player;
	removeGoggles player;
	player forceAddUniform "U_C_Protagonist_VR";
	player linkItem "ItemMap";
	player linkItem "ACE_Altimeter";

	sleep 1;

	
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

	_unit setVariable ["id", _id, true];
	_unit setVariable ["mlvl", _mlvl, true];
	_unit setVariable ["plvl", _plvl, true];
	_unit setVariable ["unic", _unic, true];
	_unit setVariable ["blck", _blck, true];


diag_log format ["[XERXES] %1 auf Slot %2 mit Variablen id=%3, mlvl=%4, plvl=%5, unic=%6, blck=%7 beschrieben", _name, _unit, _id, _mlvl, _plvl, _unic, _blck];

	while {true} do {

		waitUntil {!isNull _unit};
		waitUntil {(vehicle _unit) == player};
		waitUntil {(getPlayerUID _unit) != ""};
		hint "Whitelisting loading ... ...";

		sleep 1;
		_lor = [a_1];
		_med = [m_1,m_2,m_3,m_4,m_5,m_6,m_7,m_8,m_9,m_10,m_11,m_12,m_13,m_14,m_15];
		_pio = [p_1,p_2,p_3,p_4,p_5,p_6,p_7,p_8,p_9,p_10,p_11,p_12,p_13,p_14,p_15];
		_spe = [z_1,z_2,z_3,z_4,z_5,z_6,z_7,z_8,z_9,z_10,z_11,z_12,z_13,z_14,z_15];
		_sch = [s_1,s_2,s_3,s_4,s_5,s_6,s_7,s_8,s_9,s_10,s_11,s_12,s_13,s_14,s_15,s_16,s_17,s_18,s_19,s_20,s_21,s_22,s_23,s_24,s_25,s_26,s_27,s_28,s_29,s_30];
		_cre = [c_1,c_2,c_3,c_4,c_5,c_6,c_7,c_8,c_9,c_10];


		hint "Movement detected, runnig Slot check ...";
		_reload = false;
		//Whitelist für slot "a_1" nur für Lord
		if (_unit in _lor) exitwith
			{
			if (_id != "76561198056732315") exitwith{
				titleText ["", "BLACK OUT"];
				disableUserInput true;
				hint "Dieser Slot ist für Azrael Reserviert!";
				sleep 5;
				titleText ["", "BLACK IN"];
				disableUserInput false;
				["noChef",false,true] remoteExecCall ['BIS_fnc_endMission',_unit];
				//["noChef",false,true] call BIS_fnc_endMission;
			};
			hint "Whitelist Checked";
			sleep 1;
			[4] execVM "loadgear.sqf";
		};

		//Whitelist für Sani. Kann ja jeder kommen der mal ein Pflaster benutzt hat.
		if ((_unit in _med)) exitwith {
			hint "Medic";
			sleep 1;
			_mlvl = _unit getVariable "mlvl";
			if ((_mlvl) >= 1) exitwith {
				hint "Whitelist Checked";
				sleep 1;
				[1] execVM "loadgear.sqf";
			};
			titleText ["", "BLACK OUT"];
			disableUserInput true;
			hint "Kann ja jeder kommen der mal ein Pflaster benutzt hat!";
			sleep 5;
			titleText ["", "BLACK IN"];
			disableUserInput false;
			["noRank",false,true] call BIS_fnc_endMission;
		};

		//Whitelist für Pioniere. Sandburgen baut jeder, Festungen  nur die, die es auch können
		if ((_unit in _pio)) exitwith {
			hint "Pionier";
			sleep 1;
			_plvl = _unit getVariable "plvl";
			if ((_plvl) >= 1) exitwith {
				hint "Whitelist Checked";
				sleep 1;
				[2] execVM "loadgear.sqf";
			};
			titleText ["", "BLACK OUT"];
			disableUserInput true;
			hint "Sandburgen baut jeder, Festungen  nur die, die es auch können";
			sleep 5;
			titleText ["", "BLACK IN"];
			disableUserInput false;
			["noRank",false,true] call BIS_fnc_endMission;
		};

		//Whitelist für Spec-Ops. Wenn du in abosluter Dunkelheit Jermone sehen kannst, ohne das er grinst reden wir weiter.
		if ((_unit in _spe)) exitwith {
			hint "Unicorn";
			sleep 1;
			_unic = _unit getVariable "unic";
			if ((_unic) >= 1) exitwith {
				hint "Whitelist Checked";
				sleep 1;
				[3] execVM "loadgear.sqf";
			};
			titleText ["", "BLACK OUT"];
			disableUserInput true;
			hint "Wenn du in abosluter Dunkelheit Jermone sehen kannst, ohne das er grinst reden wir weiter.#NoRacist";
			sleep 5;
			titleText ["", "BLACK IN"];
			disableUserInput false;
			["noRank",false,true] call BIS_fnc_endMission;
		};

		//Blacklist für MissionCreator. Hat da jemand etwas angestellt?
		_blck = _unit getVariable "blck";
		if ((_unit in _cre) && ((_blck) == 1))exitwith{
			titleText ["", "BLACK OUT"];
			disableUserInput true;
			hint " Hat da jemand etwas angestellt?";
			sleep 5;
			titleText ["", "BLACK IN"];
			disableUserInput false;
			["dontcreate",false,true] call BIS_fnc_endMission;
		};

		//ich bin schütze lass mich in ruhe.
		if ((_unit in _sch) OR (_unit in _cre) OR (_unit in _lor)) exitwith {
			hint "Whitelist Checked";
			sleep 1;
			[4] execVM "loadgear.sqf";
		};
	};
}] call CBA_fnc_addEventHandler;