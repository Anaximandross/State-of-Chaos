player enableStamina false;

_unit = _this select 0;
_unit spawn 
{
    sleep 2;
   [_this] call rvg_fnc_equip; 
};