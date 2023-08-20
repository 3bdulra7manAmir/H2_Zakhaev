// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airborne_assault_c" );
    self attach( "head_airport_yuri", "", 1 );
    self.voice = "shadowcompany";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_airborne_assault_c" );
    precachemodel( "head_airport_yuri" );
}
