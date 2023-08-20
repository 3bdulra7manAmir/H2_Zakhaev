// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

init_loadout()
{
    give_loadout();
    maps\_loadout_code::loadout_complete();
}

give_loadout()
{
    if ( isdefined( level.dodgeloadout ) )
        return;

    if ( !isdefined( level.campaign ) )
        level.campaign = "american";

    var_0 = maps\_loadout_code::get_loadout();
    level.player maps\_loadout_code::setdefaultactionslot();
    level.player setViewmodel( "viewmodel_base_viewhands" );
    level.has_loadout = 0;
    maps\_loadout_code::persist( "af_chase", "af_caves" );
    maps\_loadout_code::persist( "dc_whitehouse", "dcemp" );
    maps\_loadout_code::persist( "ending", "af_chase" );
    

    maps\_loadout_code::loadout( "airport", "kriss_acog_silencer", "spas12_reflex", "fraggrenade", "flash_grenade", "globalViewhands_mw2_airborne", "american" );

    maps\_loadout_code::loadoutequipment( "oilrig", undefined, "claymore" );
    maps\_loadout_code::loadoutequipment( "dcburning", undefined, "claymore" );
    maps\_loadout_code::loadoutequipment( "estate", undefined, "claymore" );
    maps\_loadout_code::default_loadout_if_notset();

    if(level.script == "airport"){
        precachemodel( "globalViewhands_mw2_airborne" );
        precacheitem( "h2_weapon_kriss_acog_silencer" );
        precacheitem( "kriss_acog_silencer" );
        //level.player giveweapon( "h2_cheatfootball" );
        //level.player giveweapon( "h2_cheatpomegrenade" );
        //level.player giveweapon( "h2_cheatcommandoknife" );
    }


}
