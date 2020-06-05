player addEventHandler ["respawn", {_this execVM "onPlayerRespawn.sqf"}];
player addEventHandler ["fired", {_this execVM "fnc_bullet_trace.sqf"}];
player addEventHandler ["fired", {_this execVM "fnc_bullet_camera.sqf"}];

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
[] execVM "chemicaldetector.sqf"
