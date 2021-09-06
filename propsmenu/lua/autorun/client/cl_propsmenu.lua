hook.Add("PostGamemodeLoaded", "Initialize Props Remove", function()
	hook.Remove( "PopulateContent", "GameProps" )
	hook.Remove( "PopulateContent", "AddCustomContent" )
	hook.Remove( "PopulateContent", "AddonProps" )
	hook.Remove( "PopulateContent", "AlexNoelProps" )
end)


hook.Add( "PopulateContent", "LifeRP PropsMenu", function( pnlContent, tree, node )

	local Categories = {}
	Categories.contentsLifeRP1 = { 
"models/7-11slurpeemaker/7-11slurpeemaker.mdl",
"models/env/furniture/bed_andrea/bed_andrea_1st.mdl",
"models/env/furniture/decosofa_wood/decosofa_wood_dou.mdl",
"models/env/furniture/largedesk/largedesk.mdl",
"models/env/furniture/square_sink/sink_merged_b.mdl",
"models/env/furniture/wc_double_cupboard/wc_double_cupboard.mdl",
"models/env/lighting/lamp_trumpet/lamp_trumpet_tall.mdl",
"models/gibs/hgibs.mdl",
"models/gibs/hgibs_rib.mdl",
"models/gibs/hgibs_scapula.mdl",
"models/gibs/hgibs_spine.mdl",
"models/highrise/cubicle_monitor_01.mdl",
"models/highrise/lobby_chair_01.mdl",
"models/highrise/lobby_chair_02.mdl",
"models/hunter/blocks/cube025x150x025.mdl",
"models/hunter/blocks/cube025x3x025.mdl",
"models/hunter/blocks/cube025x4x025.mdl",
"models/hunter/blocks/cube025x5x025.mdl",
"models/hunter/blocks/cube025x6x025.mdl",
"models/hunter/blocks/cube05x05x05.mdl",
"models/hunter/blocks/cube05x105x05.mdl",
"models/hunter/blocks/cube05x1x05.mdl",
"models/hunter/blocks/cube05x2x05.mdl",
"models/hunter/blocks/cube075x075x025.mdl",
"models/hunter/blocks/cube075x075x075.mdl",
"models/hunter/blocks/cube075x1x025.mdl",
"models/hunter/blocks/cube075x1x075.mdl",
"models/hunter/blocks/cube075x1x1.mdl",
"models/hunter/blocks/cube075x2x025.mdl",
"models/hunter/blocks/cube1x1x05.mdl",
"models/hunter/blocks/cube1x2x05.mdl",
"models/hunter/blocks/cube2x4x1.mdl",
"models/hunter/plates/plate1x1.mdl",
"models/hunter/plates/plate1x2.mdl",
"models/hunter/plates/plate1x3.mdl",
"models/hunter/plates/plate1x4.mdl",
"models/hunter/plates/plate1x5.mdl",
"models/hunter/plates/plate1x6.mdl",
"models/hunter/plates/plate2x2.mdl",
"models/hunter/plates/plate2x3.mdl",
"models/hunter/plates/plate2x4.mdl",
"models/hunter/plates/plate2x5.mdl",
"models/hunter/plates/plate2x6.mdl",
"models/hunter/plates/plate3x3.mdl",
"models/hunter/plates/plate3x4.mdl",
"models/hunter/plates/plate3x5.mdl",
"models/hunter/plates/plate3x6.mdl",
"models/hunter/plates/plate3x7.mdl",
"models/hunter/plates/plate4x4.mdl",
"models/hunter/plates/plate4x5.mdl",
"models/hunter/plates/plate4x6.mdl",
"models/hunter/plates/plate4x7.mdl",
"models/hunter/plates/plate5x5.mdl",
"models/hunter/plates/plate5x6.mdl",
"models/hunter/plates/plate5x7.mdl",
"models/hunter/plates/plate6x6.mdl",
"models/hunter/plates/plate6x7.mdl",
"models/pg_props/pg_hospital/pg_optable.mdl",
"models/pg_props/pg_hospital/pg_roll_table.mdl",
"models/props/de_tides/patio_table2.mdl",
"models/props_borealis/bluebarrel001.mdl",
"models/props_borealis/borealis_door001a.mdl",
"models/props_c17/bench01a.mdl",
"models/props_c17/briefcase001a.mdl",
"models/props_c17/cashregister01a.mdl",
"models/props_c17/chair_office01a.mdl",
"models/props_c17/clock01.mdl",
"models/props_c17/computer01_keyboard.mdl",
"models/props_c17/concrete_barrier001a.mdl",
"models/props_c17/doll01.mdl",
"models/props_c17/fence01a.mdl",
"models/props_c17/fence01b.mdl",
"models/props_c17/fence03a.mdl",
"models/props_c17/frame002a.mdl",
"models/props_c17/furnituredrawer002a.mdl",
"models/props_c17/furnituredrawer003a.mdl",
"models/props_c17/furnituredresser001a.mdl",
"models/props_c17/furniturefireplace001a.mdl",
"models/props_c17/furniturefridge001a.mdl",
"models/props_c17/furnitureradiator001a.mdl",
"models/props_c17/furnitureshelf002a.mdl",
"models/props_c17/furnituresink001a.mdl",
"models/props_c17/furniturestove001a.mdl",
"models/props_c17/furnituretable001a.mdl",
"models/props_c17/furnituretable002a.mdl",
"models/props_c17/furniturewashingmachine001a.mdl",
"models/props_c17/gravestone003a.mdl",
"models/props_c17/gravestone_coffinpiece001a.mdl",
"models/props_c17/lockers001a.mdl",
"models/props_c17/metalpot001a.mdl",
"models/props_c17/metalpot002a.mdl",
"models/props_c17/oildrum001.mdl",
"models/props_c17/streetsign004f.mdl",
"models/props_c17/suitcase001a.mdl",
"models/props_c17/suitcase_passenger_physics.mdl",
"models/props_canal/canal_bridge02.mdl",
"models/props_canal/canal_bridge03a.mdl",
"models/props_combine/breenbust.mdl",
"models/props_combine/breenchair.mdl",
"models/props_combine/breendesk.mdl",
"models/props_downtown/booth01.mdl",
"models/props_downtown/booth02.mdl",
"models/props_downtown/booth_table.mdl",
"models/props_equipment/sleeping_bag1.mdl",
"models/props_equipment/surgicaltray_01.mdl",
"models/props_foliage/mall_pot_large01.mdl",
"models/props_furniture/piano.mdl",
"models/props_furniture/picture_frame8.mdl",
"models/props_interiors/boothfastfood01.mdl",
"models/props_interiors/cashregister01.mdl",
"models/props_interiors/chair01.mdl",
"models/props_interiors/coffee_maker.mdl",
"models/props_interiors/desk_metal.mdl",
"models/props_interiors/furniture_chair01a.mdl",
"models/props_interiors/furniture_couch01a.mdl",
"models/props_interiors/furniture_couch02a.mdl",
"models/props_interiors/furniture_desk01a.mdl",
"models/props_interiors/furniture_lamp01a.mdl",
"models/props_interiors/furniture_shelf01a.mdl",
"models/props_interiors/furniture_vanity01a.mdl",
"models/props_interiors/phone.mdl",
"models/props_interiors/phone_p1.mdl",
"models/props_interiors/phone_p2.mdl",
"models/props_interiors/pot01a.mdl",
"models/props_interiors/pot02a.mdl",
"models/props_interiors/radiator01a.mdl",
"models/props_interiors/side_table_square.mdl",
"models/props_interiors/sink_industrial01.mdl",
"models/props_interiors/sofa02.mdl",
"models/props_interiors/sofa_chair02.mdl",
"models/props_interiors/stove02.mdl",
"models/props_interiors/styrofoam_cups.mdl",
"models/props_interiors/table_cafeteria.mdl",
"models/props_interiors/table_picnic.mdl",
"models/props_interiors/toiletpaperdispenser_residential.mdl",
"models/props_interiors/trashcankitchen01.mdl",
"models/props_junk/cardboard_box001a.mdl",
"models/props_junk/garbage128_composite001b.mdl",
"models/props_junk/garbage256_composite001b.mdl",
"models/props_junk/garbage256_composite002b.mdl",
"models/props_junk/garbage_coffeemug001a.mdl",
"models/props_junk/garbage_glassbottle002a.mdl",
"models/props_junk/garbage_glassbottle003a.mdl",
"models/props_junk/garbage_metalcan002a.mdl",
"models/props_junk/garbage_milkcarton001a.mdl",
"models/props_junk/garbage_milkcarton002a.mdl",
"models/props_junk/garbage_newspaper001a.mdl",
"models/props_junk/garbage_plasticbottle001a.mdl",
"models/props_junk/gascan001a.mdl",
"models/props_junk/metalbucket01a.mdl",
"models/props_junk/metalbucket02a.mdl",
"models/props_junk/plasticcrate01a.mdl",
"models/props_junk/shoe001a.mdl",
"models/props_junk/trafficcone001a.mdl",
"models/props_junk/trashdumpster01a.mdl",
"models/props_junk/wood_crate001a.mdl",
"models/props_junk/wood_crate002a.mdl",
"models/props_lab/binderblue.mdl",
"models/props_lab/binderbluelabel.mdl",
"models/props_lab/bindergraylabel01a.mdl",
"models/props_lab/bindergreen.mdl",
"models/props_lab/bindergreenlabel.mdl",
"models/props_lab/chess.mdl",
"models/props_lab/citizenradio.mdl",
"models/props_lab/clipboard.mdl",
"models/props_lab/corkboard001.mdl",
"models/props_lab/desklamp01.mdl",
"models/props_lab/filecabinet02.mdl",
"models/props_lab/frame001a.mdl",
"models/props_lab/frame002a.mdl",
"models/props_lab/harddrive02.mdl",
"models/props_lab/monitor01a.mdl",
"models/props_lab/monitor01b.mdl",
"models/props_lab/securitybank.mdl",
"models/props_lab/servers.mdl",
"models/props_lab/workspace003.mdl",
"models/props_office/file_cabinet_03.mdl",
"models/props_phx/construct/metal_dome360.mdl",
"models/props_phx/construct/metal_plate1.mdl",
"models/props_phx/construct/metal_plate1x2.mdl",
"models/props_phx/construct/metal_plate2x2.mdl",
"models/props_phx/construct/metal_plate2x2_tri.mdl",
"models/props_phx/construct/metal_plate2x4.mdl",
"models/props_phx/construct/metal_plate4x4.mdl",
"models/props_phx/construct/metal_plate_curve180.mdl",
"models/props_phx/construct/metal_plate_curve180x2.mdl",
"models/props_phx/construct/metal_plate_curve360.mdl",
"models/props_phx/construct/metal_plate_curve360x2.mdl",
"models/props_phx/construct/metal_tube.mdl",
"models/props_phx/construct/metal_tubex2.mdl",
"models/props_phx/construct/windows/window_curve180x1.mdl",
"models/props_phx/construct/windows/window_curve180x2.mdl",
"models/props_phx/construct/windows/window_curve360x1.mdl",
"models/props_phx/construct/windows/window_curve360x2.mdl",
"models/props_phx/construct/windows/window_dome180.mdl",
"models/props_phx/construct/windows/window_dome360.mdl",
"models/props_phx/construct/wood/wood_panel1x1.mdl",
"models/props_phx/construct/wood/wood_panel2x2.mdl",
"models/props_phx/construct/wood/wood_panel2x4.mdl",
"models/props_phx/construct/wood/wood_wire1x1x2.mdl",
"models/props_trainstation/benchoutdoor01a.mdl",
"models/props_trainstation/bench_indoor001a.mdl",
"models/props_trainstation/traincar_seats001.mdl",
"models/props_trainstation/trainstation_clock001.mdl",
"models/props_unique/coffeemachine01.mdl",
"models/props_unique/coffeepot01.mdl",
"models/props_unique/hospital/exam_table.mdl",
"models/props_unique/hospital/gurney.mdl",
"models/props_unique/hospital/hospital_bed.mdl",
"models/props_unique/wheelchair01.mdl",
"models/props_urban/bench001.mdl",
"models/props_urban/plastic_chair001.mdl",
"models/props_vtmb/sofa.mdl",
"models/props_warehouse/office_furniture_coffee_table.mdl",
"models/props_warehouse/office_furniture_couch.mdl",
"models/props_warehouse/office_furniture_desk_corner.mdl",
"models/props_wasteland/controlroom_storagecloset001a.mdl",
"models/props_wasteland/kitchen_counter001b.mdl",
"models/props_wasteland/kitchen_counter001d.mdl",
"models/props_wasteland/kitchen_shelf001a.mdl",
"models/props_wasteland/kitchen_shelf002a.mdl",
"models/props_wasteland/laundry_cart001.mdl",
"models/props_wasteland/laundry_cart002.mdl",
"models/props_waterfront/awning01.mdl",
"models/scenery/furniture/coffeetable1/vestbl.mdl",
"models/scenery/structural/vesuvius/bartap.mdl",
"models/sickness/bk_booth2.mdl",
"models/sickness/fridge_01.mdl",
"models/sickness/stove_01.mdl",
"models/splayn/rp/lr/chair.mdl",
"models/splayn/rp/lr/couch.mdl",
"models/sunabouzu/lobby_poster_small.mdl",
"models/sunabouzu/theater_sofa01.mdl",
"models/testmodels/apple_display.mdl",
"models/testmodels/macbook_pro.mdl",
"models/testmodels/sofa_double.mdl",
"models/thedoctor/crackmachine_on.mdl",
"models/u4lab/chair_office_a.mdl",
"models/u4lab/desk_office_a.mdl",
"models/env/decor/plant_decofern/plant_decofern.mdl",
"models/env/furniture/bstoolred/bstoolred.mdl",
"models/props_downtown/bar_long.mdl",
"models/props_downtown/bar_long_endcorner.mdl",
"models/props/cs_office/Shelves_metal2.mdl",
"models/wilderness/lamp6.mdl",
"models/props/CS_militia/barstool01.mdl",
"models/props/CS_militia/bar01.mdl",
"models/s_prop/vegas/light/suite_lamp/suite_lamp.mdl",
"models/got/woodenchest.mdl",
"models/props_furniture/fireplace2.mdl",
"models/props/cs_office/sofa.mdl",
"models/de_vegas/card_table.mdl",
"models/gmod_tower/suitetable.mdl",
"models/props/cs_office/offpaintingk.mdl",
"models/props/cs_office/offcorkboarda.mdl",
"models/props/cs_office/offcertificatea.mdl",
"models/props/cs_office/plant01.mdl",
"models/props/cs_office/offpaintinga.mdl",
"models/props/cs_office/trash_can.mdl",
"models/props/cs_office/TV_plasma.mdl",
"models/props/cs_office/computer.mdl",
"models/props/cs_office/Bookshelf1.mdl",
"models/Highrise/potted_plant_05.mdl",
"models/env/decor/tall_plant_b/tall_plant_b.mdl",
"models/env/decor/plant_decofern/plant_decofern.mdl",
"models/env/furniture/bstoolred/bstoolred.mdl",
"models/props_downtown/bar_long.mdl",
"models/props_downtown/bar_long_endcorner.mdl",
"models/props/cs_office/Shelves_metal2.mdl",
"models/wilderness/lamp6.mdl",

 }

 	Categories.contentsLifeRP2 = {

"models/hunter/blocks/cube2x4x1.mdl",
"models/hunter/blocks/cube075x1x1.mdl",
"models/hunter/blocks/cube075x075x075.mdl",
"models/hunter/blocks/cube075x075x075.mdl",
"models/hunter/blocks/cube075x1x075.mdl",
"models/hunter/blocks/cube1x2x05.mdl",
"models/hunter/blocks/cube1x1x05.mdl",
"models/hunter/blocks/cube05x2x05.mdl",
"models/hunter/blocks/cube05x105x05.mdl",
"models/hunter/blocks/cube05x1x05.mdl",
"models/hunter/plates/plate6x6.mdl",
"models/hunter/blocks/cube05x05x05.mdl",
"models/hunter/blocks/cube075x2x025.mdl",
"models/hunter/blocks/cube075x1x025.mdl",
"models/hunter/blocks/cube075x075x025.mdl",
"models/hunter/plates/plate6x7.mdl",
"models/hunter/plates/plate5x7.mdl",
"models/hunter/plates/plate4x7.mdl",
"models/hunter/blocks/cube025x150x025.mdl",
"models/hunter/blocks/cube025x3x025.mdl",
"models/hunter/blocks/cube025x4x025.mdl",
"models/hunter/blocks/cube025x5x025.mdl",
"models/hunter/blocks/cube025x6x025.mdl",
"models/hunter/plates/plate4x6.mdl",
"models/hunter/plates/plate1x3.mdl",
"models/hunter/plates/plate5x6.mdl",
"models/hunter/plates/plate5x5.mdl",
"models/hunter/plates/plate3x6.mdl",
"models/hunter/plates/plate1x5.mdl",
"models/hunter/plates/plate1x5.mdl",
"models/hunter/plates/plate1x1.mdl",
"models/hunter/plates/plate1x2.mdl",
"models/props_phx/construct/wood/wood_panel2x2.mdl",
"models/hunter/plates/plate3x6.mdl",
"models/hunter/plates/plate1x4.mdl",
"models/hunter/plates/plate2x4.mdl",
"models/hunter/plates/plate2x3.mdl",
"models/props_phx/construct/wood/wood_panel2x4.mdl",
"models/hunter/plates/plate2x2.mdl",
"models/hunter/plates/plate4x4.mdl",
"models/hunter/plates/plate4x5.mdl",
"models/props_phx/construct/wood/wood_panel1x1.mdl",
 "models/props_phx/construct/metal_plate2x4.mdl",
"models/props_phx/construct/metal_plate1x2.mdl",
"models/props_phx/construct/metal_plate1.mdl",
"models/props_phx/construct/metal_plate2x2.mdl",
"models/props_c17/oildrum001.mdl",
"models/props_borealis/borealis_door001a.mdl",
"models/props_borealis/bluebarrel001.mdl",
"models/props_c17/fence03a.mdl",
"models/props_c17/fence01a.mdl",
"models/props_c17/concrete_barrier001a.mdl",
"models/props_phx/construct/metal_tubex2.mdl",
"models/props_phx/construct/metal_tube.mdl"
}

--[[Categories.contentsLifeRP3 = { 
"models/LifeRPlogo512/LifeRPlogo512.mdl",
"models/LifeRPlogotwo/LifeRPlogotwo.mdl",
"models/LifeRPlogotwox2/LifeRPlogotwox2.mdl"
}]]

Categories.contentsLifeRP4 = {
"models/props_interiors/sofa02.mdl",
"models/props_warehouse/office_furniture_couch.mdl",
"models/props_warehouse/office_furniture_desk_corner.mdl",
"models/props_vtmb/sofa.mdl",
"models/props_interiors/furniture_lamp01a.mdl",
"models/props_interiors/furniture_desk01a.mdl",
"models/props_interiors/sofa_chair02.mdl",
"models/scenery/furniture/coffeetable1/vestbl.mdl",
"models/props_interiors/furniture_couch02a.mdl",
"models/props_interiors/furniture_shelf01a.mdl",
"models/props_unique/wheelchair01.mdl",
"models/env/furniture/decosofa_wood/decosofa_wood_dou.mdl",
"models/props_furniture/piano.mdl",
"models/props_interiors/furniture_vanity01a.mdl",
"models/props_interiors/furniture_couch01a.mdl",
"models/props_c17/furnituredresser001a.mdl",
"models/u4lab/desk_office_a.mdl",
"models/scenery/structural/vesuvius/bartap.mdl",
"models/props_c17/furniturefireplace001a.mdl",
"models/props_combine/breendesk.mdl",
"models/env/furniture/bed_andrea/bed_andrea_1st.mdl",
"models/env/furniture/square_sink/sink_merged_b.mdl",
"models/props_interiors/pot01a.mdl",
"models/props_trainstation/benchoutdoor01a.mdl",
"models/props_c17/furnituredrawer003a.mdl",
"models/props_c17/furnitureradiator001a.mdl",
"models/props_combine/breenchair.mdl",
"models/env/furniture/largedesk/largedesk.mdl",
"models/props_junk/plasticcrate01a.mdl",
"models/props_c17/furniturefridge001a.mdl",
"models/props_trainstation/trainstation_clock001.mdl",
"models/props_junk/wood_crate001a.mdl",
"models/props_c17/metalpot001a.mdl",
"models/props_junk/cardboard_box001a.mdl",
"models/props_interiors/coffee_maker.mdl",
"models/props_unique/coffeepot01.mdl",
"models/props_unique/coffeemachine01.mdl",
"models/props_c17/clock01.mdl",
"models/props_c17/metalpot002a.mdl",
"models/props_lab/monitor01a.mdl",
"models/props_lab/harddrive02.mdl",
"models/props_c17/computer01_keyboard.mdl",
"models/props_interiors/furniture_chair01a.mdl",
"models/props_lab/frame002a.mdl",
"models/pg_props/pg_hospital/pg_roll_table.mdl",
"models/pg_props/pg_hospital/pg_optable.mdl",
"models/props_interiors/stove02.mdl",
"models/props_interiors/styrofoam_cups.mdl",
"models/testmodels/apple_display.mdl",
"models/testmodels/sofa_double.mdl",
"models/testmodels/macbook_pro.mdl",
"models/props_interiors/sink_industrial01.mdl",
"models/props_interiors/phone.mdl",
"models/props_street/mail_dropbox.mdl",
"models/props/cs_office/offpaintingk.mdl",
"models/props/cs_office/offcorkboarda.mdl",
"models/props/cs_office/offcertificatea.mdl",
"models/props/cs_office/offpaintinga.mdl",
"models/props/cs_office/trash_can.mdl",
"models/props/cs_office/TV_plasma.mdl",
"models/props/cs_office/computer.mdl",
"models/props/cs_office/Bookshelf1.mdl",
"models/env/furniture/bstoolred/bstoolred.mdl",
"models/props_downtown/bar_long.mdl",
"models/props_downtown/bar_long_endcorner.mdl",
"models/props/cs_office/Shelves_metal2.mdl",
"models/wilderness/lamp6.mdl",
"models/s_prop/vegas/light/suite_lamp/suite_lamp.mdl",
"models/got/woodenchest.mdl",
"models/props_furniture/fireplace2.mdl",
"models/props/cs_office/sofa.mdl",
"models/de_vegas/card_table.mdl",
"models/gmod_tower/suitetable.mdl",
"models/props/CS_militia/barstool01.mdl",
"models/props/CS_militia/bar01.mdl",
"models/env/furniture/bstoolred/bstoolred.mdl",
"models/props_downtown/bar_long.mdl",
"models/props_downtown/bar_long_endcorner.mdl",
"models/props/cs_office/Shelves_metal2.mdl",
"models/wilderness/lamp6.mdl",
"models/props_interiors/radiator01a.mdl"
["Salon"] = {
			"models/U4Lab/tv_monitor_plasma.mdl",
			"models/gmod_tower/suitetv.mdl",
			"models/scenery/furniture/coffeetable1/vestbl.mdl",
			"models/props_interiors/chairlobby01.mdl",
			"models/props_warehouse/office_furniture_couch.mdl",
			"models/props_vtmb/armchair.mdl",
			"models/props_vtmb/sofa.mdl",
			"models/props_interiors/sofa01.mdl",
			"models/props_interiors/sofa02.mdl",
			"models/props_interiors/sofa_chair02.mdl",
			"models/props_interiors/ottoman01.mdl",
			"models/env/furniture/decosofa_wood/decosofa_wood_dou.mdl",
			"models/Highrise/lobby_chair_01.mdl",
			"models/Highrise/lobby_chair_02.mdl",
			"models/props_interiors/desk_motel.mdl",
			"models/props_furniture/piano.mdl",
			"models/props_furniture/piano_bench.mdl",
			"models/props_interiors/painting_landscape01.mdl",
			"models/props_interiors/painting_portrait01.mdl",
			"models/props_furniture/picture_frame8.mdl",
			"models/props_urban/hotel_curtain001.mdl",
			"models/props_plants/plantairport01.mdl",
			"models/Highrise/potted_plant_05.mdl",
			"models/env/decor/tall_plant_b/tall_plant_b.mdl",
			"models/env/decor/plant_decofern/plant_decofern.mdl",
			},
		["Cuisine"] = {
			"models/props_interiors/refrigerator03.mdl",
			"models/sickness/fridge_01.mdl",
			"models/sickness/stove_01.mdl",
			"models/props_interiors/sink_kitchen.mdl",
			"models/props_interiors/coffee_maker.mdl",
			"models/props_interiors/chair01.mdl",
			"models/props_interiors/chair_cafeteria.mdl",
			"models/props_interiors/dining_table_round.mdl",
			"models/props_interiors/dinning_table_oval.mdl",
			"models/props_interiors/trashcankitchen01.mdl",
			
			},
		["Salle de bains"] = {
			"models/env/furniture/wc_double_cupboard/wc_double_cupboard.mdl",
			"models/env/furniture/square_sink/sink_double.mdl",
			"models/env/furniture/square_sink/sink_merged_b.mdl",
			"models/env/furniture/showerbase/showerbase.mdl",
			"models/env/furniture/shower/shower.mdl",
			"models/props_interiors/bathtub01.mdl",
			"models/env/furniture/ensuite1_toilet/ensuite1_toilet.mdl",
			"models/env/furniture/ensuite1_toilet/ensuite1_toilet_b.mdl",
			"models/env/furniture/ensuite1_sink/ensuite1_sink.mdl",
			"models/props_interiors/soap_dispenser.mdl",
			"models/props_interiors/toiletpaperdispenser_residential.mdl",
			"models/props_interiors/toiletpaperroll.mdl",		
			},
		["Chambre"] = {
			"models/props_interiors/bed_motel.mdl",
			"models/props_downtown/bed_motel01.mdl",
			"models/env/furniture/bed_secondclass/beddouble_group.mdl",
			"models/env/furniture/bed_andrea/bed_andrea_1st.mdl",
			"models/props_interiors/side_table_square.mdl",		
			},
		["Bureau"] = {
			"models/U4Lab/chair_office_a.mdl",
			"models/U4Lab/desk_office_a.mdl",
			"models/props_warehouse/office_furniture_coffee_table.mdl",
			"models/props_warehouse/office_furniture_desk.mdl",
			"models/props_warehouse/office_furniture_desk_corner.mdl",
			"models/props_office/desk_01.mdl",
			"models/props_interiors/desk_executive.mdl",
			"models/env/furniture/largedesk/largedesk.mdl",
			"models/props_office/file_cabinet_03.mdl",
			"models/Highrise/cubicle_monitor_01.mdl",
			"models/props_interiors/copymachine01.mdl",
			"models/props_interiors/printer.mdl",
			"models/props_interiors/paper_tray.mdl",
			"models/props_interiors/water_cooler.mdl",
			"models/props_interiors/corkboardverticle01.mdl",		
			},
		["Dehors"] = {
			"models/props_unique/spawn_apartment/coffeeammo.mdl",
			"models/props_downtown/sign_donotenter.mdl",
			"models/props_waterfront/awning01.mdl",
			"models/props_street/awning_department_store.mdl",
			"models/props/de_tides/planter.mdl",
			"models/props_urban/bench001.mdl",
			"models/props_interiors/table_picnic.mdl",
			"models/props_urban/plastic_chair001.mdl",
			"models/props_interiors/patio_chair2_white.mdl",
			"models/props/de_tides/patio_chair2.mdl",
			"models/props/de_tides/patio_table2.mdl",
			"models/env/furniture/pool_recliner/pool_recliner.mdl",
			"models/props/de_piranesi/pi_bench.mdl",
			"models/props/de_piranesi/pi_sundial.mdl",
			"models/props/de_inferno/bench_concrete.mdl",
			"models/props/de_inferno/fountain.mdl",
			"models/props/de_inferno/lattice.mdl",
			"models/props_unique/firepit_campground.mdl",
			"models/props_equipment/sleeping_bag1.mdl",
			"models/props_equipment/sleeping_bag2.mdl",
			"models/props_urban/outhouse001.mdl",
			"models/props_junk/trashcluster01a_corner.mdl",
			"models/trees/pi_tree1.mdl",
			"models/trees/pi_tree3.mdl",
			"models/trees/pi_tree4.mdl",
			"models/trees/pi_tree5.mdl",
			},
		["Commerciale"] = {
			"models/props_equipment/phone_booth.mdl",
			"models/Highrise/trashcanashtray_01.mdl",
			"models/Highrise/trash_can_03.mdl",
			"models/props_interiors/trashcan01.mdl",
			"models/props_interiors/cashregister01.mdl",
			"models/props_interiors/magazine_rack.mdl",
			"models/props_interiors/shelvinggrocery01.mdl",
			"models/props_interiors/shelvingstore01.mdl",
			"models/props_equipment/fountain_drinks.mdl",
			"models/props_downtown/bar_long.mdl",
			"models/props_downtown/bar_long_endcorner.mdl",
			"models/scenery/structural/vesuvius/bartap.mdl",
			"models/env/furniture/bstoolred/bstoolred.mdl",
			"models/props_furniture/cafe_barstool1.mdl",
			"models/props_downtown/pooltable.mdl",
			"models/de_vegas/card_table.mdl",
			"models/props_equipment/security_desk1.mdl",
			"models/sickness/bk_booth2.mdl",
			"models/props_downtown/booth01.mdl",
			"models/props_downtown/booth02.mdl",
			"models/props_downtown/booth_table.mdl",
			"models/props_interiors/table_cafeteria.mdl",
			"models/props_warehouse/table_01.mdl",
			"models/props_interiors/chairs_airport.mdl",
			"models/props_warehouse/toolbox.mdl",
			"models/props_vtmb/turntable.mdl",
			"models/props_vehicles/ambulance.mdl",
			"models/props_unique/wheelchair01.mdl",
			"models/props_unique/hospital/exam_table.mdl",
			"models/props_unique/hospital/gurney.mdl",
			"models/props_equipment/surgicaltray_01.mdl",
			"models/props_unique/hospital/hospital_bed.mdl",
			"models/props_unique/hospital/iv_pole.mdl",
			"models/props_unique/hospital/surgery_lamp.mdl",
			"models/props_interiors/medicalcabinet02.mdl",		
			},
		["Éclairage"] = {
			"models/props_unique/spawn_apartment/lantern.mdl",	
			"models/env/lighting/lamp_trumpet/lamp_trumpet_tall.mdl",
			"models/env/lighting/jelly_lamp/jellylamp.mdl",
			"models/env/lighting/corridor_ceil_lamp/corridor_ceil_lamp.mdl",
			"models/env/lighting/corridorlamp/corridorlamp.mdl",
			"models/props_urban/light_fixture01.mdl",
			"models/Highrise/tall_lamp_01.mdl",
			"models/U4Lab/track_lighting_a.mdl",
			"models/Highrise/sconce_01.mdl",
			"models/wilderness/lamp6.mdl",
			"models/props_interiors/lamp_table02.mdl",			
			}

}

Categories.contentsLifeRP5 = {
"models/props_junk/garbage256_composite002b.mdl",
"models/props_junk/garbage256_composite001b.mdl",
"models/props_junk/cardboard_box001a.mdl",
"models/props_junk/garbage128_composite001b.mdl",
"models/props_junk/garbage_newspaper001a.mdl",
"models/props_junk/garbage_plasticbottle001a.mdl",
"models/props_junk/metalbucket02a.mdl",
"models/props_junk/metalbucket01a.mdl",
"models/props_junk/garbage_glassbottle003a.mdl"
}

Categories.contentsLifeRP6 = {
"models/testmodels/macbook_pro.mdl",
"models/props_lab/monitor01a.mdl",
"models/props_c17/computer01_keyboard.mdl",
"models/props_lab/binderbluelabel.mdl",
"models/props_c17/briefcase001a.mdl",
"models/props_lab/binderblue.mdl",
"models/props_interiors/phone.mdl",
"models/props_lab/clipboard.mdl",
"models/props_c17/clock01.mdl",
"models/props_lab/harddrive02.mdl",
"models/props_junk/cardboard_box001a.mdl",
"models/props_interiors/furniture_shelf01a.mdl",
"models/testmodels/sofa_double.mdl",
"models/props_combine/breendesk.mdl",
"models/props_unique/coffeepot01.mdl",
"models/props_unique/coffeemachine01.mdl",
"models/props_junk/garbage_coffeemug001a.mdl",
"models/props_junk/trafficcone001a.mdl",
"models/props_lab/bindergraylabel01a.mdl",
"models/props_combine/breenchair.mdl",
"models/props_lab/bindergreen.mdl",
"models/props_lab/bindergreenlabel.mdl",
"models/props_combine/breenbust.mdl",
"models/props_interiors/furniture_lamp01a.mdl",
"models/props_lab/desklamp01.mdl",
"models/props_trainstation/trainstation_clock001.mdl",
"models/props_c17/concrete_barrier001a.mdl",             
"models/props_interiors/furniture_chair01a.mdl",
"models/props_c17/furnituretable002a.mdl",
"models/props_lab/frame002a.mdl",
"models/props_wasteland/controlroom_storagecloset001a.mdl",
"models/props_c17/fence01b.mdl",
"models/props_c17/fence03a.mdl",
"models/props_c17/fence01a.mdl"
}

Categories.contentsLifeRP7 = {
"models/gibs/hgibs.mdl",
"models/gibs/hgibs_rib.mdl",
"models/gibs/hgibs_scapula.mdl",
"models/props_c17/doll01.mdl"
}

Categories.contentsLifeRP8 = {"models/props_downtown/booth01.mdl",
"models/sickness/bk_booth2.mdl",
"models/props_interiors/radiator01a.mdl",
"models/props_waterfront/awning01.mdl",
"models/props_lab/clipboard.mdl",
"models/props_interiors/boothfastfood01.mdl",
"models/props_unique/coffeemachine01.mdl",
"models/props_junk/garbage_glassbottle003a.mdl",
"models/props_junk/garbage_coffeemug001a.mdl",
"models/props_interiors/furniture_chair01a.mdl",
"models/props_unique/coffeepot01.mdl",
"models/props_interiors/phone.mdl",
"models/props_c17/clock01.mdl",
"models/props_wasteland/kitchen_shelf001a.mdl",
"models/props_wasteland/kitchen_shelf002a.mdl",
"models/props_interiors/cashregister01.mdl",
"models/props_wasteland/kitchen_counter001d.mdl",
"models/props_junk/garbage_newspaper001a.mdl",
"models/props_junk/metalbucket01a.mdl",
"models/props_junk/metalbucket02a.mdl",
"models/props_junk/garbage_milkcarton002a.mdl",
"models/props_junk/garbage_milkcarton001a.mdl",
"models/props_junk/garbage_plasticbottle001a.mdl",
"models/props_junk/plasticcrate01a.mdl",
"models/props_junk/wood_crate001a.mdl",
"models/props_c17/furniturestove001a.mdl",
"models/sickness/stove_01.mdl",
"models/props_c17/furniturefridge001a.mdl",
"models/sickness/fridge_01.mdl",
"models/sickness/bk_booth2.mdl"
}

Categories.contentsLifeRP9 = {
"models/props_c17/furnituretable002a.mdl",
"models/props_junk/garbage_newspaper001a.mdl",
"models/props_interiors/furniture_chair01a.mdl",
"models/props_lab/workspace003.mdl",
"models/props_c17/frame002a.mdl",
"models/props_junk/wood_crate001a.mdl",
"models/props_junk/cardboard_box001a.mdl",
"models/props_combine/breenchair.mdl",
"models/props_junk/wood_crate002a.mdl",
"models/props_lab/servers.mdl",
"models/props_combine/breendesk.mdl",
"models/props_interiors/sofa02.mdl",
"models/props_phx/construct/metal_dome360.mdl",
"models/props_phx/construct/windows/window_curve360x2.mdl",
"models/props_phx/construct/windows/window_dome360.mdl",
"models/props_phx/construct/metal_plate_curve360x2.mdl"
}

Categories.contentsLifeRP10 = {
"models/props/cs_office/plant01.mdl",
"models/props_plants/plantairport01.mdl",
"models/Highrise/potted_plant_05.mdl",
"models/env/decor/tall_plant_b/tall_plant_b.mdl",
"models/env/decor/plant_decofern/plant_decofern.mdl"
}
	Categories.contentsLifeRP1["name"] = "All"
	Categories.contentsLifeRP2["name"] = "Construction et Protection"
	--Categories.contentsLifeRP3["name"] = "Logo LifeRP"
	Categories.contentsLifeRP4["name"] = "Decoration"
	Categories.contentsLifeRP5["name"] = "SDF"
	Categories.contentsLifeRP6["name"] = "Police"
	Categories.contentsLifeRP7["name"] = "Psychopathe"
	Categories.contentsLifeRP8["name"] = "Gangs"
	Categories.contentsLifeRP9["name"] = "Restauration"
	Categories.contentsLifeRP10["name"] = "Vegetation"
	local ViewPanel = vgui.Create( "ContentContainer", pnlContent )
	ViewPanel:SetVisible( false )
	local MyNode = node:AddNode( "Props LifeRP", "icon16/folder_database.png" )
	for k, v in pairs(Categories) do
		local models = MyNode:AddNode( v["name"], "icon16/bricks.png" )
		models.DoClick = function()
			ViewPanel:Clear( true )
			for k , Models in pairs(v) do
				if Models != v["name"] then
					local cp = spawnmenu.GetContentType( "model" )
					cp( ViewPanel , { model = Models })
					pnlContent:SwitchPanel( ViewPanel )
				end
			end
		end
	end
end )
