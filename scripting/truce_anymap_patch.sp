// 
// Removes the enforced truce on maps such as Eyeaduct (Viaduct event) and Ghost Fort (Lakeside event)
// 

#pragma semicolon 1
#include <sourcemod>
#include <dhooks>

#pragma newdecls required

#include <sourcescramble>

public Plugin myinfo =
{
    name = "Valve maps truce hotpatch",
    author = "Avast AntiPony 9445",
    description = "Quick and dirty patch to skip the IsValveMap check in RecalculateTruce. NOTE: Maps that force truce via inputs, or tf_halloween_allow_truce_during_boss_event being non-zero, will still enables truces.",
    version = "1.0",
};

MemoryPatch g_memPatchTruceValveMap;

public void OnPluginStart()
{
    Handle hGameConf = LoadGameConfigFile("tf2.valvemaptrucepatch");

    if ( !hGameConf )
    {
		SetFailState("Failed to load game data for tf2.valvemaptrucepatch.\nEnsure that you have tf2.valvemaptrucepatch.txt in your gamedata folder!");
	}

    g_memPatchTruceValveMap = MemoryPatch.CreateFromConf(hGameConf, "CTFGameRules::RecalculateTruce::SkipIsValveMapCheck");
    if( !g_memPatchTruceValveMap.Enable() )
    {
        SetFailState("Failed to verify and apply patch for halloween truce on Valve maps.");
    }
}