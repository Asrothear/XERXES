_play = 0;
{ 
_play = _play + 1;
} forEach allPlayers; 

_count1 = east countSide allUnits;
_count2 = independent countSide allUnits;
_count = _count1 + _count2;
_countw = west countSide allUnits;
_countwe = _countw - _play;
_ges = _count+_countw;
_countw = _countw;
hint format["%1 Feinde \n %2 Verbündete(AI) \n %4 Spieler \n Insgesamt %3 Einheiten", _count, _countwe, _ges, _play];