state("SMBBBHD")
{
    int isNotLoading : "mono-2.0-bdwgc.dll", 0x0039B56C, 0x794, 0x90, 0x2C;
}

init
{
    timer.IsGameTimePaused = false;
    game.Exited += (s, e) => timer.IsGameTimePaused = true;
}

isLoading
{
    return current.isNotLoading != 1;
}