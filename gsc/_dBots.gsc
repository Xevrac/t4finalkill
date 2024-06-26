// Ported by Xevnet CoD4 to T4
// Modified by: Horizonz and Xevrac
// Discord: https://xevnet.au
// Author: FzBr.d4rk

init()
{
    setDvar( "add_bots", 0 );
    
    thread precache();
    thread onPlayerConnect();

    for(;;)
    {
        if(getdvarInt("add_bots") > 0)
            break;
        wait 1;
    }
    
    testclients = getdvarInt("add_bots");
    setDvar( "add_bots", 0 );
    
    for(i = 0; i < testclients; i++)
    {
        bot[i] = addTestClient();
        if(!isDefined(bot[i]))
            continue;
        bot[i].pers["isBot"] = true;
        
        bot[i] thread TestClient("autoassign");
    }

    thread init();
}

precache()
{

}
TestClient(team)
{
    self endon( "disconnect" );

    while(!isdefined(self.pers["team"]))
    wait .05;

    self notify("menuresponse", game["menu_team"], team);
        wait 0.5;

    classes = getArrayKeys( level.classMap );
    okclasses = [];
    for ( i = 0; i < classes.size; i++ )
    {
        if ( !issubstr( classes[i], "custom" ) && isDefined( level.default_perk[ level.classMap[ classes[i] ] ] ) )
        okclasses[ okclasses.size ] = classes[i];
    }

    assert( okclasses.size );
    
    while( 1 )
    {
        class = okclasses[ randomint( okclasses.size ) ];

        self notify("menuresponse", "changeclass", class);

        self waittill( "spawned_player" );
        //self freezecontrols(true);
       
   
        wait ( 0.10 );
    }
    
    
}
onPlayerConnect()
{
    for(;;)
    {
        level waittill("connecting",player);
        
        player onPlayerSpawned();
    }
}
onPlayerSpawned()
{
    self waittill("spawned_player");
    
}