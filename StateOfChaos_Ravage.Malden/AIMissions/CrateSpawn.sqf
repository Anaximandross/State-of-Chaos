if (!isServer) exitWith {}; 

while {true} do {
	
	sleep 60;
	
	hint "A supply crate has been dropped! \nCheck your map for the location";

	_position = ["PlayZone", false] call CBA_fnc_randPosArea;

	_crateSelection = selectRandom ["Box_IED_Exp_F","Box_NATO_Equip_F","B_supplyCrate_F","C_IDAP_supplyCrate_F"];

	_crate = _crateSelection createVehicle _position; 

	_marker = createMarker ["Supply Drop", _position];
	_marker setMarkerType "hd_objective";
	_marker setMarkerColor "ColorBlue";
	_marker setmarkerText "Supply Drop";

	_chuteType = "B_Parachute_02_F";

	_crateType = _crateSelection;

	_crate = createVehicle [_crateType, _position, [], 0, 'NONE'];
	_crate allowdamage false;

	createMarker ["cratePosition", _position];

	_weaponsArray = ["rhs_weap_m27iar","rhs_weap_mk18_grip_KAC_bk","rhs_weap_mk18_grip2_KAC_bk","rhs_weap_mk18_grip_KAC_wd","rhs_weap_mk18_grip2_KAC_wd","rhs_weap_XM2010_d","rhs_weap_m14ebrri","rhs_weap_sr25_d","rhs_weap_t5000","rhs_weap_M107","rhs_weap_M107_d","rhs_weap_M107_w","rhs_weap_M107_lc"];
	_uniformsArray = ["U_B_GhillieSuit", "U_B_FullGhillie_lsh", "U_B_FullGhillie_sard","U_B_FullGhillie_ard"];
	_magazinesArray = ["rhsusf_20Rnd_762x51_m118_special_Mag",
		"rhsusf_20Rnd_762x51_m993_Mag",
		"30Rnd_556x45_Stanag",
		"30Rnd_556x45_Stanag_Tracer_Green",
		"30Rnd_556x45_Stanag_Tracer_Red",
		"30Rnd_556x45_Stanag_Tracer_Yellow",
		"rhs_200rnd_556x45_M_SAW",
		"rhs_200rnd_556x45_T_SAW",
		"rhs_200rnd_556x45_B_SAW",
		"rhsusf_50Rnd_762x51",
		"rhsusf_50Rnd_762x51_m61_ap",
		"rhsusf_50Rnd_762x51_m62_tracer",
		"rhsusf_50Rnd_762x51_m80a1epr",
		"rhsusf_100Rnd_762x51",
		"rhsusf_100Rnd_762x51_m61_ap",
		"rhsusf_100Rnd_762x51_m62_tracer",
		"rhsusf_100Rnd_762x51_m80a1epr",
		"rhsusf_50Rnd_762x51_m993",
		"rhsusf_100Rnd_762x51_m993",
		"rhsusf_10Rnd_762x51_m118_special_Mag",
		"rhsusf_5Rnd_762x51_m118_special_Mag",
		"rhs_10Rnd_762x54mmR_7N1",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_PMAG",
		"rhs_mag_30Rnd_556x45_Mk318_PMAG",
		"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",
		"rhs_mag_100Rnd_556x45_M855A1_cmag",
		"rhs_mag_M441_HE",
		"rhsusf_mag_6Rnd_M441_HE",
		"rhs_mag_M433_HEDP",
		"rhsusf_mag_6Rnd_M433_HEDP",
		"rhs_mag_M397_HET",
		"rhsusf_mag_6Rnd_M397_HET",
		"rhs_mag_m576",
		"rhsusf_mag_6Rnd_M576_Buckshot",
		"rhs_mag_M585_white",
		"rhs_mag_m661_green",
		"rhs_mag_m662_red",
		"rhsusf_mag_6Rnd_M585_white",
		"rhsusf_mag_6Rnd_m661_green",
		"rhsusf_mag_6Rnd_m662_red",
		"rhs_mag_m713_Red",
		"rhs_mag_m714_White",
		"rhs_mag_m715_Green",
		"rhs_mag_m716_yellow",
		"rhsusf_mag_6Rnd_M713_red",
		"rhsusf_mag_6Rnd_M714_white",
		"rhsusf_mag_6Rnd_M715_green",
		"rhsusf_mag_6Rnd_M716_yellow",
		"rhsusf_5Rnd_300winmag_xm2010",
		"10Rnd_RHS_50BMG_Box",
		"rhsusf_mag_10Rnd_STD_50BMG_M33",
		"rhsusf_mag_10Rnd_STD_50BMG_mk211",
		"rhsusf_5Rnd_00Buck",
		"rhsusf_8Rnd_00Buck",
		"rhsusf_5Rnd_Slug",
		"rhsusf_8Rnd_Slug",
		"rhsusf_5Rnd_HE",
		"rhsusf_8Rnd_HE",
		"rhsusf_5Rnd_FRAG",
		"rhsusf_8Rnd_FRAG",
		"rhsusf_100Rnd_556x45_soft_pouch",
		"rhsusf_100Rnd_556x45_mixed_soft_pouch",
		"rhsusf_100Rnd_556x45_M855_soft_pouch",
		"rhsusf_100Rnd_556x45_M855_mixed_soft_pouch",
		"rhsusf_100Rnd_556x45_M200_soft_pouch",
		"rhsusf_200Rnd_556x45_soft_pouch",
		"rhsusf_200Rnd_556x45_mixed_soft_pouch",
		"rhsusf_200Rnd_556x45_M855_soft_pouch",
		"rhsusf_200Rnd_556x45_M855_mixed_soft_pouch",
		"rhs_200rnd_556x45_M_SAW",
		"rhs_200rnd_556x45_T_SAW",
		"rhs_200rnd_556x45_B_SAW",
		"rhsusf_200Rnd_556x45_box",
		"rhsusf_200rnd_556x45_mixed_box",
		"rhsusf_200rnd_556x45_M855_box",
		"rhsusf_200rnd_556x45_M855_mixed_box",
		"rhsusf_50Rnd_762x51",
		"rhsusf_50Rnd_762x51_m61_ap",
		"rhsusf_50Rnd_762x51_m993",
		"rhsusf_100Rnd_762x51_m993",
		"rhsusf_20Rnd_762x51_m118_special_Mag",
		"rhsusf_20Rnd_762x51_m993_Mag",
		"rhsusf_20Rnd_762x51_m62_Mag",
		"rhsusf_20Rnd_762x51_SR25_m118_special_Mag",
		"rhsusf_20Rnd_762x51_SR25_m993_Mag",
		"rhsusf_20Rnd_762x51_SR25_m62_Mag",
		"rhsusf_5Rnd_762x51_m118_special_Mag",
		"rhsusf_5Rnd_762x51_m993_Mag",
		"rhsusf_5Rnd_762x51_m62_Mag",
		"rhsusf_10Rnd_762x51_m118_special_Mag",
		"rhsusf_10Rnd_762x51_m993_Mag",
		"rhsusf_10Rnd_762x51_m62_Mag",
		"rhsusf_5Rnd_762x51_AICS_m118_special_Mag",
		"rhsusf_5Rnd_762x51_AICS_m993_Mag",
		"rhsusf_5Rnd_762x51_AICS_m62_Mag",
		"rhsusf_mag_7x45acp_MHP",
		"rhsusf_mag_17Rnd_9x19_FMJ",
		"rhsusf_mag_17Rnd_9x19_JHP",
		"rhsusf_mag_15Rnd_9x19_FMJ",
		"rhs_mag_smaw_HEAA",
		"rhs_mag_smaw_HEDP",
		"rhs_mag_smaw_SR",
		"rhs_mag_maaws_HEAT",
		"rhs_mag_maaws_HEDP",
		"rhs_mag_maaws_HE",
		"rhs_mag_maaws_SMOKE",
		"rhs_mag_maaws_ILLUM",
		"rhsusf_m112_mag",
		"rhsusf_m112x4_mag",
		"rhs_mine_M19_mag",
		"rhsusf_mine_m14_mag",
		"rhs_mag_m67",
		"rhs_mag_m69",
		"rhs_mag_mk84",
		"rhs_mag_an_m8hc",
		"rhs_mag_an_m14_th3",
		"rhs_mag_m7a3_cs",
		"rhs_mag_mk3a2",
		"rhs_mag_m18_smoke_base",
		"rhs_mag_m18_green",
		"rhs_mag_m18_purple",
		"rhs_mag_m18_red",
		"rhs_mag_m18_yellow",
		"rhs_30Rnd_545x39_AK",
		"rhs_30Rnd_545x39_7N6_AK",
		"rhs_30Rnd_545x39_7N6_green_AK",
		"rhs_30Rnd_545x39_AK_no_tracers",
		"rhs_30Rnd_545x39_AK_green",
		"rhs_30Rnd_545x39_AK_plum_green",
		"rhs_30Rnd_545x39_7N6M_AK",
		"rhs_30Rnd_545x39_7N6M_green_AK",
		"rhs_30Rnd_545x39_7N6M_plum_AK",
		"rhs_30Rnd_545x39_7N10_AK",
		"rhs_30Rnd_545x39_7N10_plum_AK",
		"rhs_30Rnd_545x39_7N10_desert_AK",
		"rhs_30Rnd_545x39_7N10_camo_AK",
		"rhs_30Rnd_545x39_7N22_AK",
		"rhs_30Rnd_545x39_7N22_plum_AK",
		"rhs_30Rnd_545x39_7N22_desert_AK",
		"rhs_30Rnd_545x39_7N22_camo_AK",
		"rhs_30Rnd_545x39_7U1_AK",
		"rhs_30Rnd_545x39_7N10_2mag_AK",
		"rhs_30Rnd_545x39_7N10_2mag_plum_AK",
		"rhs_30Rnd_545x39_7N10_2mag_desert_AK",
		"rhs_30Rnd_545x39_7N10_2mag_camo_AK",
		"rhs_45Rnd_545X39_7N22_AK",
		"rhs_45Rnd_545X39_7N10_AK",
		"rhs_45Rnd_545X39_7N6_AK",
		"rhs_45Rnd_545X39_AK_Green",
		"rhs_45Rnd_545X39_AK",
		"rhs_45Rnd_545X39_7U1_AK",
		"rhs_VOG25",
		"rhs_VOG25P",
		"rhs_VG40TB",
		"rhs_VG40SZ",
		"rhs_VG40OP_white",
		"rhs_VG40OP_green",
		"rhs_VG40OP_red",
		"rhs_GRD40_White",
		"rhs_GRD40_Green",
		"rhs_GRD40_Red",
		"rhs_VG40MD_White",
		"rhs_VG40MD_Green",
		"rhs_VG40MD_Red",
		"rhs_GDM40",
		"rhs_100Rnd_762x54mmR",
		"rhs_100Rnd_762x54mmR_green",
		"rhs_100Rnd_762x54mmR_7N13",
		"rhs_100Rnd_762x54mmR_7N26",
		"rhs_100Rnd_762x54mmR_7BZ3",
		"rhs_10Rnd_762x54mmR_7N1",
		"rhs_10Rnd_762x54mmR_7N14",
		"rhs_30Rnd_762x39mm",
		"rhs_30Rnd_762x39mm_bakelite",
		"rhs_30Rnd_762x39mm_bakelite_tracer",
		"rhs_30Rnd_762x39mm_polymer",
		"rhs_10Rnd_762x39mm",
		"rhs_10Rnd_762x39mm_tracer",
		"rhs_10Rnd_762x39mm_89",
		"rhs_75Rnd_762x39mm",
		"rhs_75Rnd_762x39mm_89",
		"rhs_20rnd_9x39mm_SP5",
		"rhs_20rnd_9x39mm_SP6",
		"rhs_10rnd_9x39mm_SP5",
		"rhs_10rnd_9x39mm_SP6",
		"rhs_5Rnd_338lapua_t5000",
		"rhs_mine_pmn2_mag",
		"rhs_mine_tm62m_mag",
		"rhs_mine_msk40p_white_mag",
		"rhs_mine_msk40p_red_mag",
		"rhs_mine_msk40p_green_mag",
		"rhs_mine_msk40p_blue_mag",
		"rhs_mine_sm320_white_mag",
		"rhs_mine_sm320_red_mag",
		"rhs_mine_sm320_green_mag",
		"rhs_rpg26_mag",
		"rhs_rshg2_mag",
		"rhs_rpg18_mag",
		"rhs_rpg7_PG7VL_mag",
		"rhs_rpg7_PG7V_mag",
		"rhs_rpg7_PG7VM_mag",
		"rhs_rpg7_PG7VS_mag",
		"rhs_rpg7_PG7VR_mag",
		"rhs_rpg7_TBG7V_mag",
		"rhs_rpg7_OG7V_mag",
		"rhs_rpg7_type69_airburst_mag",
		"rhs_mag_9k32_rocket",
		"rhs_mag_9k38_rocket",
		"rhs_mag_9x19_17",
		"rhs_mag_9x19mm_7n21_20",
		"rhs_mag_9x19mm_7n31_20",
		"rhs_mag_9x19mm_7n21_44",
		"rhs_mag_9x19mm_7n31_44",
		"rhs_mag_9x18_12_57N181S",
		"rhs_mag_9x18_8_57N181S",
		"rhs_18rnd_9x21mm_7N28",
		"rhs_18rnd_9x21mm_7N29",
		"rhs_18rnd_9x21mm_7BT3",
		"rhs_mag_rsp30_red",
		"rhs_mag_rsp30_green",
		"rhs_mag_rsp30_white",
		"rhs_mag_rgd5",
		"rhs_mag_rgn",
		"rhs_mag_rgo",
		"rhs_mag_rdg2_white",
		"rhs_mag_rdg2_black",
		"rhs_mag_nspn_yellow",
		"rhs_mag_nspn_red",
		"rhs_mag_nspn_green",
		"rhs_mag_nspd",
		"rhs_mag_fakel",
		"rhs_mag_fakels",
		"rhs_mag_zarya2",
		"rhs_mag_plamyam",
		"ACE_HandFlare_Base",
		"ACE_HandFlare_White",
		"ACE_HandFlare_Red",
		"ACE_HandFlare_Green",
		"ACE_HandFlare_Yellow",
		"ACE_M84",
		"ACE_M14",
		"ACE_HuntIR_M203"];



	clearWeaponCargoGlobal _crate;
	clearMagazineCargoGlobal _crate;
	clearBackpackCargoGlobal _crate;
	clearItemCargoGlobal _crate; 

	_crate addWeaponCargoGlobal [selectRandom _weaponsArray,5];
	_crate addMagazineCargoGlobal [selectRandom _magazinesArray,10];
	_crate addMagazineCargoGlobal [selectRandom _magazinesArray,10];
	_crate addMagazineCargoGlobal [selectRandom _magazinesArray,10];
	_crate addMagazineCargoGlobal [selectRandom _magazinesArray,10];
	_crate addItemCargoGlobal [selectRandom _uniformsArray, 1]; 
	_crate addItemCargoGlobal [selectRandom _uniformsArray, 1]; 
	
	sleep 600;

	deleteVehicle _crate;
	deleteMarker _marker;

};		
