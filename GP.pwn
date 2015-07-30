// Created by Jakwob!!

#define FILTERSCRIPT

#include <a_samp>

new GovermentPayRandom[][] =
	{
		{149},
		{242},
		{538},
		{754},
		{1422},
		{22},
		{864},
		{392}
	};

public OnFilterScriptInit()
{
    SetTimer("GovermentPayout", 1800000, 1);
	  return 1;
}

forward GovermentPayout();
public GovermentPayout()
{
	for(new i = 0; i < MAX_PLAYERS; i++) if(IsPlayerConnected(i))
	{
	    new rand = random(sizeof(GovermentPayRandom));
	   	GameTextForPlayer(i, "Goverment Payout", 1000, 1);
	   	GivePlayerMoney(i, GovermentPayRandom[rand][0]);
	}
	return 1;
}
