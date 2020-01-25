_kiffa = kf_1;
_kiffa_pos = getpos _kiffa;
_kiffa_pos_x = _kiffa_pos select 0;
_kiffa_pos_y = _kiffa_pos select 1;
_kiffa_x = str(_kiffa_pos_x);
_kiffa_y = str(_kiffa_pos_y);

hint format ["Das Kiffanienchen wurde zuletzt bei %1%2 gesehen.", _kiffa_x select [0, 3], _kiffa_y select [0, 3]];