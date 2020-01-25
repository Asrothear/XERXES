diag_log "[XERXES] Gear loading";
waitUntil {!isNull player};
waitUntil {(vehicle player) == player};
sleep 2;
//hint"Azrael´s Gear Loader";
//sleep 2;
//hint"Gear is loading ...";
//sleep 2;
private ["_class"];
_class = _this select 0;
sleep 30;
hint "Waiting for Player movement";
waituntil {(speed player > 1)};
switch (_class) do {
    case 1:
	{ 
		hint "Med Gear";
		sleep 1;
		removeAllWeapons player;
		removeAllItems player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeHeadgear player;
		removeGoggles player;
		player forceAddUniform "UK3CB_BAF_U_Smock_MTP";
		player addItemToUniform "ACE_EarPlugs";
		player addItemToUniform "ACE_Flashlight_XL50";
		player addItemToUniform "ACE_EntrenchingTool";
		player addItemToUniform "MRH_BluForTransponder";
		player addItemToUniform "ACRE_PRC152";
		player addItemToUniform "KNB_Notebook";
		player addItemToUniform "Laserbatteries";
		player addVest "UK3CB_BAF_V_Osprey_Medic_D";
		player addItemToVest "adv_aceCPR_AED";
		for "_i" from 1 to 20 do {player addItemToVest "adv_aceSplint_splint";};
		for "_i" from 1 to 5 do {player addItemToVest "ACE_CableTie";};
		for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
		for "_i" from 1 to 3 do {player addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 10 do {player addItemToVest "ACE_30Rnd_556x45_Stanag_Mk318_mag";};
		for "_i" from 1 to 2 do {player addItemToVest "11Rnd_45ACP_Mag";};
		player addBackpack "UK3CB_BAF_B_Bergen_MTP_Medic_L_B";
		for "_i" from 1 to 10 do {player addItemToBackpack "ACE_adenosine";};
		for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
		player addItemToBackpack "ACE_personalAidKit";
		player addItemToBackpack "ACE_surgicalKit";
		for "_i" from 1 to 15 do {player addItemToBackpack "ACE_quikclot";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {player addItemToBackpack "ACE_bloodIV_500";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_bloodIV";};
		for "_i" from 1 to 16 do {player addItemToBackpack "ACE_bloodIV_250";};
		for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
		player addItemToBackpack "ACE_Canteen";
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_WaterBottle";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_MRE_CreamChickenSoup";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_MRE_MeatballsPasta";};
		player addHeadgear "H_HelmetB_snakeskin";
		player addWeapon "arifle_SPAR_01_snd_F";
		player addPrimaryWeaponItem "ACE_muzzle_mzls_L";
		player addPrimaryWeaponItem "rksl_optic_lds_c";
		player addWeapon "hgun_Pistol_heavy_01_F";
		player addHandgunItem "muzzle_snds_acp";
		player addHandgunItem "acc_flashlight_pistol";
		player addHandgunItem "optic_MRD";
		player addWeapon "Laserdesignator_01_khk_F";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "ACE_Altimeter";
		player linkItem "ItemRadioAcreFlagged";
		player linkItem "ItemGPS";
		hint "Gear Loaded!";
		sleep 1;
	};
    case 2:
	{
		hint "Pio Gear";
		sleep 1;
		comment "Remove existing items";
		removeAllWeapons player;
		removeAllItems player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeHeadgear player;
		removeGoggles player;
		player addWeapon "arifle_SPAR_01_GL_snd_F";
		player addPrimaryWeaponItem "ACE_muzzle_mzls_L";
		player addPrimaryWeaponItem "optic_ERCO_snd_F";
		player addPrimaryWeaponItem "30Rnd_556x45_Stanag";
		player addPrimaryWeaponItem "1Rnd_HE_Grenade_shell";
		player addWeapon "hgun_Pistol_heavy_01_F";
		player addHandgunItem "muzzle_snds_acp";
		player addHandgunItem "acc_flashlight_pistol";
		player addHandgunItem "optic_MRD";
		player addHandgunItem "11Rnd_45ACP_Mag";
		player forceAddUniform "UK3CB_BAF_U_Smock_MTP";
		player addVest "UK3CB_BAF_V_Osprey_Grenadier_A";
		player addBackpack "UK3CB_BAF_B_Bergen_MTP_Engineer_L_A";
		player addMagazine "Laserbatteries";
		player addWeapon "Laserdesignator_01_khk_F";
		player addItemToUniform "ACE_EarPlugs";
		player addItemToUniform "ACE_Flashlight_XL50";
		player addItemToUniform "ACE_EntrenchingTool";
		player addItemToUniform "MRH_BluForTransponder";
		player addItemToUniform "KNB_Notebook";
		player addItemToUniform "ACRE_PRC152";
		player addItemToUniform "ACE_Fortify";
		player addItemToUniform "Laserbatteries";
		for "_i" from 1 to 5 do {player addItemToVest "ACE_CableTie";};
		player addItemToVest "ACE_DefusalKit";
		for "_i" from 1 to 5 do {player addItemToVest "ACE_Chemlight_HiGreen";};
		for "_i" from 1 to 5 do {player addItemToVest "SmokeShell";};
		for "_i" from 1 to 5 do {player addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 3 do {player addItemToVest "B_IR_Grenade";};
		for "_i" from 1 to 5 do {player addItemToVest "11Rnd_45ACP_Mag";};
		for "_i" from 1 to 5 do {player addItemToVest "1Rnd_Smoke_Grenade_shell";};
		for "_i" from 1 to 5 do {player addItemToVest "ACE_40mm_Flare_white";};
		for "_i" from 1 to 5 do {player addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
		for "_i" from 1 to 10 do {player addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
		for "_i" from 1 to 3 do {player addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_packingBandage";};
		for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_quikclot";};
		player addItemToBackpack "ACE_wirecutter";
		player addItemToBackpack "MineDetector";
		player addItemToBackpack "ACE_Canteen";
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_WaterBottle";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_MRE_CreamChickenSoup";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_MRE_MeatballsPasta";};
		player addItemToBackpack "ToolKit";
		for "_i" from 1 to 10 do {player addItemToBackpack "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 5 do {player addItemToBackpack "30Rnd_556x45_Stanag";};
		player addHeadgear "H_HelmetB_snakeskin";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "ACE_Altimeter";
		player linkItem "ItemRadioAcreFlagged";
		player linkItem "ItemGPS";
		hint "Gear Loaded!";
		sleep 1;
	};
	case 3:
	{
		hint "Spez Gear";
		sleep 1;
		removeAllWeapons player;
		removeAllItems player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeHeadgear player;
		removeGoggles player;
		player forceAddUniform "UK3CB_BAF_U_Smock_MTP";
		player addItemToUniform "ACE_EarPlugs";
		player addItemToUniform "ACE_Flashlight_XL50";
		player addItemToUniform "ACE_EntrenchingTool";
		player addItemToUniform "MRH_BluForTransponder";
		player addItemToUniform "ACRE_PRC152";
		player addItemToUniform "KNB_Notebook";
		player addItemToUniform "Laserbatteries";
		player addVest "UK3CB_BAF_V_Osprey_Medic_D";
		player addItemToVest "adv_aceCPR_AED";
		for "_i" from 1 to 20 do {player addItemToVest "adv_aceSplint_splint";};
		for "_i" from 1 to 5 do {player addItemToVest "ACE_CableTie";};
		for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
		for "_i" from 1 to 3 do {player addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 3 do {player addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 10 do {player addItemToVest "ACE_30Rnd_556x45_Stanag_Mk318_mag";};
		for "_i" from 1 to 2 do {player addItemToVest "11Rnd_45ACP_Mag";};
		player addBackpack "UK3CB_BAF_B_Bergen_MTP_Medic_L_B";
		for "_i" from 1 to 10 do {player addItemToBackpack "ACE_adenosine";};
		for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
		player addItemToBackpack "ACE_personalAidKit";
		player addItemToBackpack "ACE_surgicalKit";
		for "_i" from 1 to 15 do {player addItemToBackpack "ACE_quikclot";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {player addItemToBackpack "ACE_bloodIV_500";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_bloodIV";};
		for "_i" from 1 to 16 do {player addItemToBackpack "ACE_bloodIV_250";};
		for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
		player addItemToBackpack "ACE_Canteen";
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_WaterBottle";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_MRE_CreamChickenSoup";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_MRE_MeatballsPasta";};
		player addHeadgear "H_HelmetB_snakeskin";
		player addWeapon "arifle_SPAR_01_snd_F";
		player addPrimaryWeaponItem "ACE_muzzle_mzls_L";
		player addPrimaryWeaponItem "rksl_optic_lds_c";
		player addWeapon "hgun_Pistol_heavy_01_F";
		player addHandgunItem "muzzle_snds_acp";
		player addHandgunItem "acc_flashlight_pistol";
		player addHandgunItem "optic_MRD";
		player addWeapon "Laserdesignator_01_khk_F";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "ACE_Altimeter";
		player linkItem "ItemRadioAcreFlagged";
		player linkItem "ItemGPS";
		hint "Gear Loaded!";
		sleep 1;
	};
	case 4:
	{
		hint "Norm Gear";
		sleep 1;
		removeAllWeapons player;
		removeAllItems player;
		removeAllAssignedItems player;
		removeUniform player;
		removeVest player;
		removeBackpack player;
		removeHeadgear player;
		removeGoggles player;
		player forceAddUniform "UK3CB_BAF_U_Smock_MTP";
		player addItemToUniform "ACE_EarPlugs";
		player addItemToUniform "ACE_Flashlight_XL50";
		player addItemToUniform "ACE_EntrenchingTool";
		player addItemToUniform "MRH_BluForTransponder";
		player addItemToUniform "ACRE_PRC152";
		player addItemToUniform "KNB_Notebook";
		player addItemToUniform "Laserbatteries";
		player addVest "UK3CB_BAF_V_Osprey_Rifleman_B";
		for "_i" from 1 to 5 do {player addItemToVest "ACE_CableTie";};
		for "_i" from 1 to 5 do {player addItemToVest "ACE_Chemlight_HiGreen";};
		for "_i" from 1 to 5 do {player addItemToVest "SmokeShell";};
		for "_i" from 1 to 5 do {player addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 5 do {player addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 5 do {player addItemToVest "ACE_30Rnd_556x45_Stanag_Mk318_mag";};
		for "_i" from 1 to 3 do {player addItemToVest "B_IR_Grenade";};
		player addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C";
		for "_i" from 1 to 10 do {player addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
		for "_i" from 1 to 3 do {player addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_packingBandage";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_quikclot";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_30Rnd_556x45_Stanag_Mk318_mag";};
		for "_i" from 1 to 3 do {player addItemToBackpack "11Rnd_45ACP_Mag";};
		player addItemToBackpack "ACE_Canteen";
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_WaterBottle";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_MRE_CreamChickenSoup";};
		for "_i" from 1 to 5 do {player addItemToBackpack "ACE_MRE_MeatballsPasta";};
		player addHeadgear "H_HelmetB_snakeskin";
		player addWeapon "arifle_SPAR_01_snd_F";
		player addPrimaryWeaponItem "ACE_muzzle_mzls_L";
		player addPrimaryWeaponItem "rksl_optic_lds_c";
		player addWeapon "hgun_Pistol_heavy_01_F";
		player addHandgunItem "muzzle_snds_acp";
		player addHandgunItem "acc_flashlight_pistol";
		player addHandgunItem "optic_MRD";
		player addWeapon "Laserdesignator_01_khk_F";
		player linkItem "ItemMap";
		player linkItem "ItemCompass";
		player linkItem "ACE_Altimeter";
		player linkItem "ItemRadioAcreFlagged";
		player linkItem "ItemGPS";
		hint "Gear Loaded!";
		sleep 1;
	};
	default
	{
		hint "Gear Loading Failed!\nPlease Report to Azrael";
		sleep 5;
		["noGear",false,true] call BIS_fnc_endMission;
	};
};
