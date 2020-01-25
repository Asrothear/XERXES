diag_log "[XERXES] Whitelisting loading";
hint "Whitelisting loading";

private ["_lor", "_mlvl", "_plvl", "_unic", "_blck", "_med", "_pio", "_spe", "_sch", "_r_lor" ,"_r_med","_r_pio","_r_spe", "_cre", "_r_cre", "_r_mai", "_handle"];
waitUntil {!isNull player};
hint "Whitelisting loading ...";
player setVariable ["id", "nix", true];
player setVariable ["mlvl", "nix", true];
player setVariable ["plvl", "nix", true];
player setVariable ["unic", "nix", true];
player setVariable ["blck", "nix", true];
while {true} do {

waitUntil {!isNull player};
waitUntil {(vehicle player) == player};
waitUntil {(getPlayerUID player) != ""};
sleep 5;

_id = getPlayerUID player;
_unit = player;
["db_get_data", [_id, _unit]] call CBA_fnc_globalEvent;
sleep 1;
_lor = [a_1,a_2,a_3,a_4,a_5];
_med = [m_1,m_2,m_3,m_4,m_5,m_6,m_7,m_8,m_9,m_10,m_11,m_12,m_13,m_14,m_15];
_pio = [p_1,p_2,p_3,p_4,p_5,p_6,p_7,p_8,p_9,p_10,p_11,p_12,p_13,p_14,p_15];
_spe = [z_1,z_2,z_3,z_4,z_5,z_6,z_7,z_8,z_9,z_10,z_11,z_12,z_13,z_14,z_15];
_sch = [s_1,s_2,s_3,s_4,s_5,s_6,s_7,s_8,s_9,s_10,s_11,s_12,s_13,s_14,s_15,s_16,s_17,s_18,s_19,s_20,s_21,s_22,s_23,s_24,s_25,s_26,s_27,s_28,s_29,s_30];
_cre = [c_1,c_2,c_3,c_4,c_5,c_6,c_7,c_8,c_9,c_10];


hint "Runnig Slot check ...";
_reload = false;
//Whitelist für slot "a_1" nur für Lord
if ((player in _lor)&& !(_uid == "76561198056732315")) exitwith
   {
   titleText ["", "BLACK OUT"];
   disableUserInput true;
   hint "Dieser Slot ist für Admins Reserviert!";
   sleep 5;
   titleText ["", "BLACK IN"];
   disableUserInput false;
   ["noChef",false,true] call BIS_fnc_endMission;
   };


 //Whitelist für Sani. Kann ja jeder kommen der mal ein Pflaster benutzt hat.
if ((player in _med)) exitwith {
	hint "Medic";
	sleep 1;
	_mlvl = player getVariable "mlvl";
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
if ((player in _pio)) exitwith {
	hint "Pionier";
	sleep 1;
	_plvl = player getVariable "plvl";
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
if ((player in _spe)) exitwith {
	hint "Unicorn";
	sleep 1;
	_unic = player getVariable "unic";
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
 _blck = player getVariable "blck";
 if ((player in _cre) && ((_blck) == 1))exitwith
	{
   titleText ["", "BLACK OUT"];
   disableUserInput true;
   hint " Hat da jemand etwas angestellt?";
   sleep 5;
   titleText ["", "BLACK IN"];
   disableUserInput false;
   ["dontcreate",false,true] call BIS_fnc_endMission;
   };

  //ich bin schütze lass mich in ruhe.
  if ((player in _sch) OR (player in _cre) OR (player in _lor)) exitwith {
	hint "Whitelist Checked";
	sleep 1;
	[4] execVM "loadgear.sqf";
	};
};
