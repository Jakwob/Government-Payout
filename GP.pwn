// Created by Jakwob!!

#define FILTERSCRIPT

#include <a_samp>

new PayoutTimer[MAX_PLAYERS];

public OnPlayerConnect(playerid)
{
    PayoutTimer[playerid] = SetTimer("GovermentPayout", 1800000, true, "i", playerid);
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	KillTimer(PayoutTimer[playerid]);
	return 1;
}

forward GovermentPayout();
public GovermentPayout()
{
	for(new i = 0; i < MAX_PLAYERS; i++) if(IsPlayerConnected(i))
	{
	    new rand = random(sizeof(GovermentPayRandom));
	   	GameTextForPlayer(i, "Goverment Payout", 1000, 1);
	   	GivePlayerMoney(i, randomEx(500, 5000));
	}
	return 1;
}

stock randomEx(min, max)
{
    new rand = random(max-min)+min;    
    return rand;
}
