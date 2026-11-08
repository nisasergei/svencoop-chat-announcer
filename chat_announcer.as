void PluginInit()
{
    g_Module.ScriptInfo.SetAuthor("Nisa");
    g_Module.ScriptInfo.SetContactInfo("https://boosty.to/nisarium");
    
    g_Scheduler.SetInterval( "ShowAnnouncement", 600, g_Scheduler.REPEAT_INFINITE_TIMES );
}

void ShowAnnouncement()
{
    for ( int i = 1; i <= g_Engine.maxClients; i++ )
    {
        CBasePlayer@ pPlayer = g_PlayerFuncs.FindPlayerByIndex( i );
        if ( pPlayer !is null && pPlayer.IsConnected() )
        {
            g_PlayerFuncs.ClientPrint( pPlayer, HUD_PRINTTALK, "[MP-1] Welcome to the Multiverse! Type !map mapname to change.\n" );
        }
    }
}