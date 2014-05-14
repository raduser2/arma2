if (isServer) then {
	  [] spawn fnc_timer2;
fnc_timer2 = {
   waitUntil { sleep 0.221; warbegins == 1 }; 
   _missionTime = 3000; // Время в секундах 
   _endMessage = "MCB win!"; 
   _srv_gameStart = diag_tickTime;
   _object1 = true;
   _object2 = true;
   _object3 = true;
    ab1 = 0;
    ab2 = 0;
    ab3 = 0;
    while {true} do {
		if (triggerActivated tr1) then {			
                	_object1 = false;
                        ab = 900;
                };

		if (triggerActivated tr2) then {			
                	_object2 = false;
                        ab = 900;
                };

		if (triggerActivated tr3) then {			
                	_object3 = false;
                        ab = 900;
                };

                _timeleft1 = diag_tickTime - _srv_gameStart;
                _timeleft2 = _missionTime + ab1 + ab2 + ab3; 
                if ((_timeleft1 > _timeleft2)) then {
                	{["MCB win!"] call SerP_EndMission;
                } else {
                	{["plohieparni win"] call SerP_EndMission;
                };
                sleep 3.712; 
	};
};