// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airborne_shotgun" );
    codescripts\character::attachHead( "alias_airborne_heads", xmodelalias\alias_airborne_heads::main() );
    self.voice = "shadowcompany";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_airborne_shotgun" );
    codescripts\character::precacheModelArray(xmodelalias\alias_airborne_heads::main());
}
