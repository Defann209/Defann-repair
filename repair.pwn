#define COST_REPAIR 100 // Biaya perbaikan kendaraan

CMD:repair(playerid)
{
    new Float:playerPos[3];
    GetPlayerPos(playerid, playerPos[0], playerPos[1], playerPos[2]);
    if(IsPlayerInRange(playerid, repairCoordX, repairCoordY, repairCoordZ, 5.0)) // Ganti dengan koordinat tempat pemain bisa memperbaiki kendaraan
    {
        new vehicleid = GetPlayerVehicleID(playerid);
        if(vehicleid != INVALID_VEHICLE_ID)
        {
            RepairVehicle(vehicleid);
            SetPlayerMoney(playerid, GetPlayerMoney(playerid) - COST_REPAIR);
            SendClientMessage(playerid, COLOR_GREEN, "Kendaraan Anda telah diperbaiki. Biaya $100 telah dibebankan.");
        }
        else
        {
            SendClientMessage(playerid, COLOR_RED, "Anda harus berada di dalam kendaraan untuk memperbaikinya.");
        }
    }
    else
    {
        SendClientMessage(playerid, COLOR_RED, "Anda tidak berada di tempat yang tepat untuk memperbaiki kendaraan.");
    }
    return 1;
}

Nitip den ya Projects Pertama Gua Di Warnet Hehe