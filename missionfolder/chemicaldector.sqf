while (true) do {
  if (sens) then {
    hint("sens");
    _se = (player call CBRN_fnc_getProtectionLevel)/100;
    _cont = (getPos player) call CBRN_fnc_isAreaContaminated;
    _cs = _cont select 0;
    _as = _cont select 1;
    _na = _cont select 2;
    if (_cs) then {
      _cs = 1.1;
    }else{
      _cs = 0;
    };
    if (_as) then {
      _as = 1.2;
    }else{
      _as = 0;
    };
    if (_na) then {
      _na = 1.3;
    }else{
      _na = 0;
    };
    _meg = (_cs)+(_as)+(_na)+(_se);
    "ChemicalDetector" cutRsc ["RscWeaponChemicalDetector", "PLAIN", 1, false];
    private _ui = uiNamespace getVariable "RscWeaponChemicalDetector";
    private _ctrl = _ui displayCtrl 101;
    _ctrl ctrlAnimateModel ["Threat_Level_Source", [_meg, 2] call BIS_fnc_cutDecimals, true];
  };
};
