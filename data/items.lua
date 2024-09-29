return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["basic_hunt_bait"] = {
		label = "Basic Hunting Bait",
		weight = 100,
		stack = true,
		close = true,
		description = "Basic Bait for Hunting",
		client = {
			image = "basic_hunt_bait.png",
		}
	},

	["grip"] = {
		label = "Grip",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "grip.png",
		}
	},

	["consumable_herb_chanterelles"] = {
		label = "Chanterelles",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Chanterelles",
		client = {
			image = "consumable_herb_chanterelles.png",
		}
	},

	["bpcaxe"] = {
		label = "BPC Axe",
		weight = 0,
		stack = false,
		close = true,
		description = "3 x Steel 1 x Wood",
		client = {
			image = "bpcaxe.png",
		}
	},

	["consumable_herb_prairie_poppy"] = {
		label = "Prairie Poppy",
		weight = 0.4,
		stack = true,
		close = true,
		description = "Prairie Poppy",
		client = {
			image = "consumable_herb_prairie_poppy.png",
		}
	},

	["california_condor"] = {
		label = "California Condorr",
		weight = 500,
		stack = false,
		close = true,
		description = "California Condorr",
		client = {
			image = "animal_california_condor.png",
		}
	},

	["hay"] = {
		label = "Hay",
		weight = 100,
		stack = true,
		close = true,
		description = "placeholder",
		client = {
			image = "hay.png",
		}
	},

	["blackpanther"] = {
		label = "Black Panther",
		weight = 500,
		stack = false,
		close = true,
		description = "Black Panther",
		client = {
			image = "animal_black_panther.png",
		}
	},

	["bpcpickaxe"] = {
		label = "BPC PickAxe",
		weight = 0,
		stack = false,
		close = true,
		description = "3 x Steel 1 x Wood",
		client = {
			image = "bpcpickaxe.png",
		}
	},

	["consumable_predator_bait"] = {
		label = "Predator Bait",
		weight = 500,
		stack = true,
		close = true,
		description = "Basic Bait for Hunting Predators",
		client = {
			image = "consumable_predator_bait.png",
		}
	},

	["perfect_large_alligator_pelt"] = {
		label = "Large Alligator Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["poor_bear_pelt"] = {
		label = "Bear Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["tail_beaver"] = {
		label = "Beaver tail",
		weight = 100,
		stack = true,
		close = true,
		description = "Tail.",
		client = {
			image = "tail_beaver.png",
		}
	},

	["bananaseed"] = {
		label = "Banana Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "bananaseeds.png",
		}
	},

	["consumable_herb_wild_feverfew"] = {
		label = "Wild Feverfew",
		weight = 0.4,
		stack = true,
		close = true,
		description = "Wild Feverfew",
		client = {
			image = "consumable_herb_wild_feverfew.png",
		}
	},

	["perfect_boar_pelt"] = {
		label = "Boar Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["claws_eaglet"] = {
		label = "Eagle claws",
		weight = 100,
		stack = true,
		close = true,
		description = "Claws.",
		client = {
			image = "claws_eaglet.png",
		}
	},

	["consumable_herb_vanilla_flower"] = {
		label = "Vanilla Flower",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Vanilla Flower",
		client = {
			image = "consumable_herb_vanilla_flower.png",
		}
	},

	["beak_ravenf"] = {
		label = "Raven beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Raven beak.",
		client = {
			image = "beak_ravenf.png",
		}
	},

	["good_ox_pelt"] = {
		label = "Ox Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["legendary_tatanka_bison_pelt"] = {
		label = "Leg Bison Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["poor_black_bear_pelt"] = {
		label = "Black Bear Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["a_c_fishrockbass_01_ms"] = {
		label = "Rock Bass (M)",
		weight = 600,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_rock_bass.png",
		}
	},

	["horn_bison"] = {
		label = "Bison horn",
		weight = 100,
		stack = true,
		close = true,
		description = "Horn.",
		client = {
			image = "horn_bisonhorn.png",
		}
	},

	["consumable_herb_english_mace"] = {
		label = "English Mace",
		weight = 0.3,
		stack = true,
		close = true,
		description = "English Mace",
		client = {
			image = "consumable_herb_english_mace.png",
		}
	},

	["provision_wldflwr_cardinal_flower"] = {
		label = "Cardinal Flower",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Cardinal Flower",
		client = {
			image = "provision_wldflwr_cardinal_flower.png",
		}
	},

	["poor_raccoon_pelt"] = {
		label = "Raccoon Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["provision_wldflwr_bitterweed"] = {
		label = "Bitterweed",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Bitterweed",
		client = {
			image = "provision_wldflwr_bitterweed.png",
		}
	},

	["p_finisdfishlure01x"] = {
		label = "Fish Lure",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_leg_lure_lake.png",
		}
	},

	["good_cougar_pelt"] = {
		label = "Cougar Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["goldbar"] = {
		label = "Gold Bar",
		weight = 500,
		stack = true,
		close = true,
		description = "solid gold bar",
		client = {
			image = "goldbar.png",
		}
	},

	["consumable_meat_plump_bird_cooked"] = {
		label = "Cooked Plump Bird Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "consumable_meat_plump_bird_cooked.png",
		}
	},

	["a_c_fishbluegil_01_sm"] = {
		label = "Blue Gil (S)",
		weight = 300,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_bluegill.png",
		}
	},

	["a_c_fishsmallmouthbass_01_ms"] = {
		label = "Small Mouth Bass (M)",
		weight = 600,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_smallmouth_bass.png",
		}
	},

	["silver_ore"] = {
		label = "Silver Ore",
		weight = 1000,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "silver_ore.png",
		}
	},

	["provision_ro_flower_queens"] = {
		label = "Queens Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Queens Flower",
		client = {
			image = "provision_ro_flower_queens.png",
		}
	},

	["tooth_aligatorto"] = {
		label = "Alligator tooth",
		weight = 100,
		stack = true,
		close = true,
		description = "Alligator tooth.",
		client = {
			image = "tooth_aligatorto.png",
		}
	},

	["tooth_snaket"] = {
		label = "Snake tooth",
		weight = 100,
		stack = true,
		close = true,
		description = "Snake tooth.",
		client = {
			image = "tooth_snaket.png",
		}
	},

	["provision_ro_flower_dragons"] = {
		label = "Dragons Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Dragons Flower",
		client = {
			image = "provision_ro_flower_dragons.png",
		}
	},

	["consumable_herb_red_sage"] = {
		label = "Red Sage",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Red Sage",
		client = {
			image = "consumable_herb_red_sage.png",
		}
	},

	["beer"] = {
		label = "Beer",
		weight = 500,
		stack = true,
		close = true,
		description = "bottle of Beer",
		client = {
			image = "beer.png",
		}
	},

	["provision_ro_flower_moccasin"] = {
		label = "Moccasin Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Moccasin Flower",
		client = {
			image = "provision_ro_flower_moccasin.png",
		}
	},

	["chicken_stew"] = {
		label = "Sup Daging Ayam",
		weight = 100,
		stack = true,
		close = true,
		description = "Sup dengan daging Ayam",
		client = {
			image = "chicken_stew.png",
		}
	},

	["consumable_herb_indian_tobacco"] = {
		label = "Indian Tobacco",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Indian Tobacco",
		client = {
			image = "consumable_herb_indian_tobacco.png",
		}
	},

	["big_game_meat"] = {
		label = "Big Game Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "big_game_meat.png",
		}
	},

	["consumable_herb_oleander_sage"] = {
		label = "Oleander Sage",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Oleander Sage",
		client = {
			image = "consumable_herb_oleander_sage.png",
		}
	},

	["bear_black"] = {
		label = "Bear Black",
		weight = 500,
		stack = false,
		close = true,
		description = "Bear Black",
		client = {
			image = "animal_bear_black.png",
		}
	},

	["bottle"] = {
		label = "Bottle",
		weight = 50,
		stack = true,
		close = true,
		description = "used by saloons",
		client = {
			image = "bottle.png",
		}
	},

	["beak_bbirdf"] = {
		label = "Cormorant beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Sleek cormorant beak for diving.",
		client = {
			image = "beak_bbirdf.png",
		}
	},

	["large_raw_meat"] = {
		label = "Large Raw Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "Large meat ready for cooking",
		client = {
			image = "large_raw_meat.png",
		}
	},

	["tooth_boarmusk"] = {
		label = "Boar tusk",
		weight = 100,
		stack = true,
		close = true,
		description = "Boar tusk.",
		client = {
			image = "tooth_boarmusk.png",
		}
	},

	["perfect_raccoon_pelt"] = {
		label = "Raccoon Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["a_c_fishbullheadcat_01_sm"] = {
		label = "Bullhead Cat (S)",
		weight = 300,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_bullhead_catfish.png",
		}
	},

	["perfect_javelina_pelt"] = {
		label = "Javelina Pelt",
		weight = 100,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["provision_meat_mature_venison"] = {
		label = "Mature Venison Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "provision_meat_mature_venison.png",
		}
	},

	["ammo_varmint"] = {
		label = "Varmint (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Varmint Ammo",
		client = {
			image = "ammo_bullet_normal.png",
		}
	},

	["perfect_goat_pelt"] = {
		label = "Goat Pelt",
		weight = 100,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["tail_bull"] = {
		label = "Bull Tail",
		weight = 500,
		stack = true,
		close = true,
		description = "Tail of a bull",
		client = {
			image = "tail_bull.png",
		}
	},

	["p_finishdcrawdlegendary01x"] = {
		label = "Legendary Crawfish Lure",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_lure_lake.png",
		}
	},

	["claws_cockc"] = {
		label = "Rooster claws",
		weight = 100,
		stack = true,
		close = true,
		description = "Claws.",
		client = {
			image = "claws_cockc.png",
		}
	},

	["poor_cougar_pelt"] = {
		label = "Cougar Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["ammo_arrow_poison"] = {
		label = "Arrow (P)",
		weight = 200,
		stack = true,
		close = true,
		description = "Arrow",
		client = {
			image = "ammo_arrow_poison.png",
		}
	},

	["poor_bull_pelt"] = {
		label = "Bull Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["perfect_sheep_pelt"] = {
		label = "Sheep Pelt",
		weight = 300,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["firstaid"] = {
		label = "First Aid",
		weight = 100,
		stack = true,
		close = true,
		description = "used by medics to improve your health",
		client = {
			image = "firstaid.png",
		}
	},

	["wolfmedium1"] = {
		label = "Wolf Medium 1",
		weight = 500,
		stack = false,
		close = true,
		description = "Wolf Medium 1",
		client = {
			image = "animal_wolf_medium.png",
		}
	},

	["axe"] = {
		label = "Axe",
		weight = 100,
		stack = true,
		close = true,
		description = "equipment for chopping",
		client = {
			image = "axe.png",
		}
	},

	["truffle"] = {
		label = "Truffle",
		weight = 100,
		stack = true,
		close = true,
		description = "placeholder",
		client = {
			image = "truffle.png",
		}
	},

	["consumable_herb_burdock_root"] = {
		label = "Burdock Root",
		weight = 0.4,
		stack = true,
		close = true,
		description = "Burdock Root",
		client = {
			image = "consumable_herb_burdock_root.png",
		}
	},

	["perfect_fox_pelt"] = {
		label = "Redfox Pelt",
		weight = 100,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["cylinder"] = {
		label = "Cylinder",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "cylinder.png",
		}
	},

	["consumable_herb_bay_bolete"] = {
		label = "Bay Bolete",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Bay Bolete",
		client = {
			image = "consumable_herb_bay_bolete.png",
		}
	},

	["raw_meat"] = {
		label = "Raw Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "Raw Meat ready for cooking",
		client = {
			image = "raw_meat.png",
		}
	},

	["lighter"] = {
		label = "Korek Api",
		weight = 50,
		stack = true,
		close = true,
		description = "used by saloons",
		client = {
			image = "lighter.png",
		}
	},

	["good_black_bear_pelt"] = {
		label = "Black Bear Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["a_c_fishlargemouthbass_01_ms"] = {
		label = "Large Mouth Bass (M)",
		weight = 600,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_largemouth_bass.png",
		}
	},

	["barricade_avd"] = {
		label = "Barricade avd",
		weight = 100,
		stack = true,
		close = true,
		description = "Moonshine Item",
		client = {
			image = "defensive_barricade.png",
		}
	},

	["consumable_herb_hummingbird_sage"] = {
		label = "Humingbird Sage",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Humingbird Sage",
		client = {
			image = "consumable_herb_hummingbird_sage.png",
		}
	},

	["stew"] = {
		label = "Hot Stew",
		weight = 300,
		stack = true,
		close = true,
		description = "hot homemade stew",
		client = {
			image = "stew.png",
		}
	},

	["bpoaxe"] = {
		label = "BPO Axe",
		weight = 0,
		stack = false,
		close = true,
		description = "blueprint original",
		client = {
			image = "bpoaxe.png",
		}
	},

	["banana"] = {
		label = "Banana",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "banana.png",
		}
	},

	["perfect_bighornram_pelt"] = {
		label = "Bighornram Pelt",
		weight = 800,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["poor_large_alligator_pelt"] = {
		label = "Large Alligator Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["frame"] = {
		label = "Frame",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "frame.png",
		}
	},

	["crafttable"] = {
		label = "Crafttable",
		weight = 500,
		stack = true,
		close = true,
		description = "used for crafting anywhere",
		client = {
			image = "crafttable.png",
		}
	},

	["pocketwatch3"] = {
		label = "P_W Gold",
		weight = 125,
		stack = false,
		close = true,
		description = "Pocket Watch Gold",
		client = {
			image = "pocket_watch_gold.png",
		}
	},

	["provision_wldflwr_creek_plum"] = {
		label = "Creek Plum",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Creek Plum",
		client = {
			image = "provision_wldflwr_creek_plum.png",
		}
	},

	["poor_buffalo_pelt"] = {
		label = "Buffalo Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["ruby"] = {
		label = "Ruby",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "ruby.png",
		}
	},

	["horn_ram"] = {
		label = "Ram horn",
		weight = 100,
		stack = true,
		close = true,
		description = "Horn.",
		client = {
			image = "horn_ramhorn.png",
		}
	},

	["perfect_buffalo_pelt"] = {
		label = "Buffalo Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["tooth_turtlet"] = {
		label = "Turtle tooth",
		weight = 100,
		stack = true,
		close = true,
		description = "Turtle tooth.",
		client = {
			image = "tooth_turtlet.png",
		}
	},

	["canoe"] = {
		label = "Canoe",
		weight = 500,
		stack = true,
		close = true,
		description = "deployable canoe",
		client = {
			image = "canoe.png",
		}
	},

	["provision_wldflwr_chocolate_daisy"] = {
		label = "Chocolate Daisy",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Chocolate Daisy",
		client = {
			image = "provision_wldflwr_chocolate_daisy.png",
		}
	},

	["provision_ro_flower_rat_tail"] = {
		label = "Rat Tail Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Rat Tail Flower",
		client = {
			image = "provision_ro_flower_rat_tail.png",
		}
	},

	["a_c_fishchannelcatfish_01_lg"] = {
		label = "Channel Catfish (L)",
		weight = 900,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_channel_catfish.png",
		}
	},

	["provision_loon_egg"] = {
		label = "Loon Egg",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Loon Egg",
		client = {
			image = "provision_loon_egg.png",
		}
	},

	["sugarseed"] = {
		label = "Sugar Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "sugarseeds.png",
		}
	},

	["steel_ore"] = {
		label = "Steel Ore",
		weight = 1000,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "steel_ore.png",
		}
	},

	["cookedlarge_bird_meat"] = {
		label = "Whole Chicken",
		weight = 50,
		stack = true,
		close = true,
		description = "Good for eating!",
		client = {
			image = "cookedlarge_bird_meat.png",
		}
	},

	["ammo_rifle"] = {
		label = "Rifle (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Rifle Ammo",
		client = {
			image = "ammo_bullet_normal.png",
		}
	},

	["coonhound"] = {
		label = "Coon Hound",
		weight = 500,
		stack = false,
		close = true,
		description = "Bluetick Coonhound",
		client = {
			image = "animal_dog_bluetickcoonhound.png",
		}
	},

	["coffee"] = {
		label = "Coffee",
		weight = 500,
		stack = true,
		close = true,
		description = "cup of Coffee",
		client = {
			image = "coffee.png",
		}
	},

	["provision_meat_gristly_mutton"] = {
		label = "Gristly Mutton Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "provision_meat_gristly_mutton.png",
		}
	},

	["carrotseed"] = {
		label = "Carrot Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "carrotseeds.png",
		}
	},

	["poor_pig_pelt"] = {
		label = "Pig Pelt",
		weight = 300,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["legendary_panther_pelt"] = {
		label = "Leg Panther Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["consumable_herb_creeping_thyme"] = {
		label = "Creeping Thyme",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Creeping Thyme",
		client = {
			image = "consumable_herb_creeping_thyme.png",
		}
	},

	["tail_chipmunk_c"] = {
		label = "Chipmunk tail",
		weight = 100,
		stack = true,
		close = true,
		description = "Tail.",
		client = {
			image = "tail_chipmunk_c.png",
		}
	},

	["ammo_repeater"] = {
		label = "Repeater (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Repeater Ammo",
		client = {
			image = "ammo_bullet_normal.png",
		}
	},

	["horsereviver"] = {
		label = "Horse Reviver",
		weight = 100,
		stack = true,
		close = true,
		description = "used to revive a horse",
		client = {
			image = "consumable_horse_reviver.png",
		}
	},

	["small_cooked_meat"] = {
		label = "Small Steak",
		weight = 50,
		stack = true,
		close = true,
		description = "Should feed me a little bit",
		client = {
			image = "small_cooked_meat.png",
		}
	},

	["barrel"] = {
		label = "Barrel",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "barrel.png",
		}
	},

	["honeycomb"] = {
		label = "Honeycomb",
		weight = 300,
		stack = true,
		close = true,
		description = "Used for making honey",
		client = {
			image = "honeycomb.png",
		}
	},

	["ammo_repeater_express_explosive"] = {
		label = "Repeater (EE)",
		weight = 200,
		stack = true,
		close = true,
		description = "Repeater Express Explosive Ammo",
		client = {
			image = "ammo_bullet_explosive.png",
		}
	},

	["consumable_herb_golden_currant"] = {
		label = "Golden Currant",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Golden Currant",
		client = {
			image = "consumable_herb_golden_currant.png",
		}
	},

	["animalfeed"] = {
		label = "Animal Feed",
		weight = 100,
		stack = true,
		close = true,
		description = "ranch",
		client = {
			image = "animalfeed.png",
		}
	},

	["poor_sheep_pelt"] = {
		label = "Sheep Pelt",
		weight = 300,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["cigar25"] = {
		label = "Cigar",
		weight = 200,
		stack = true,
		close = true,
		description = "Cigar 25% full",
		client = {
			image = "cigar25.png",
		}
	},

	["potatoseed"] = {
		label = "Potato Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "potatoseeds.png",
		}
	},

	["poor_javelina_pelt"] = {
		label = "Javelina Pelt",
		weight = 100,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["lion_mangy"] = {
		label = "Lion Mangy",
		weight = 500,
		stack = false,
		close = true,
		description = "Lion Mangy",
		client = {
			image = "animal_lion_mangy.png",
		}
	},

	["bounty_ticket"] = {
		label = "Bounty Ticket",
		weight = 10,
		stack = true,
		close = true,
		description = "Ticket For Start Bounty Hunt",
		client = {
			image = "bounty_ticket.png",
		}
	},

	["a_c_fishbluegil_01_ms"] = {
		label = "Blue Gil (M)",
		weight = 600,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_bluegill.png",
		}
	},

	["consumable_herb_wild_mint"] = {
		label = "Wild Mint",
		weight = 0.4,
		stack = true,
		close = true,
		description = "Wild Mint",
		client = {
			image = "consumable_herb_wild_mint.png",
		}
	},

	["provision_wldflwr_blood_flower"] = {
		label = "Blood Flower",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Blood Flower",
		client = {
			image = "provision_wldflwr_blood_flower.png",
		}
	},

	["good_javelina_pelt"] = {
		label = "Javelina Pelt",
		weight = 100,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["consumable_herb_rams_head"] = {
		label = "Rams Head",
		weight = 0.4,
		stack = true,
		close = true,
		description = "Rams Head",
		client = {
			image = "consumable_herb_rams_head.png",
		}
	},

	["provision_meat_plump_bird"] = {
		label = "Plump Bird Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "provision_meat_plump_bird.png",
		}
	},

	["provision_ro_flower_lady_of_night"] = {
		label = "Lady Of The Night Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Lady Of The Night Flower",
		client = {
			image = "provision_ro_flower_lady_of_night.png",
		}
	},

	["perfect_cougar_pelt"] = {
		label = "Cougar Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["consumable_meat_mature_venison_cooked"] = {
		label = "Cooked Venison Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "consumable_meat_mature_venison_cooked.png",
		}
	},

	["tail_panthere"] = {
		label = "Panther eyes",
		weight = 100,
		stack = true,
		close = true,
		description = "Tail.",
		client = {
			image = "tail_panthere.png",
		}
	},

	["cigar75"] = {
		label = "Cigar",
		weight = 200,
		stack = true,
		close = true,
		description = "Cigar 75% full",
		client = {
			image = "cigar75.png",
		}
	},

	["tail_fox"] = {
		label = "Fox tail",
		weight = 100,
		stack = true,
		close = true,
		description = "Tail.",
		client = {
			image = "tail_fox.png",
		}
	},

	["perfect_pig_pelt"] = {
		label = "Pig Pelt",
		weight = 300,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["rocksalt"] = {
		label = "Rock Salt",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "rocksalt.png",
		}
	},

	["p_crawdad01x"] = {
		label = "Crawfish Bait",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_crayfish.png",
		}
	},

	["a_c_fishlargemouthbass_01_lg"] = {
		label = "Large Mouth Bass (L)",
		weight = 900,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_largemouth_bass.png",
		}
	},

	["moneyclip"] = {
		label = "Money Clip",
		weight = 1,
		stack = false,
		close = true,
		description = "Money Clip",
		client = {
			image = "money_moneyclip.png",
		}
	},

	["steel"] = {
		label = "Steel",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "steel.png",
		}
	},

	["goldsmelt"] = {
		label = "Gold Smelt",
		weight = 300,
		stack = true,
		close = true,
		description = "equipment for gold smelting",
		client = {
			image = "goldsmelt.png",
		}
	},

	["pocketwatch6"] = {
		label = "P_W Gleaming Brass",
		weight = 125,
		stack = false,
		close = true,
		description = "Pocket Watch Gleaming Brass",
		client = {
			image = "pocket_watch_gleaming_brass.png",
		}
	},

	["poodle"] = {
		label = "Poodle",
		weight = 500,
		stack = false,
		close = true,
		description = "Poodle",
		client = {
			image = "animal_dog_poodle.png",
		}
	},

	["provision_duck_egg"] = {
		label = "Duck Egg",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Duck Egg",
		client = {
			image = "provision_duck_egg.png",
		}
	},

	["aluminum"] = {
		label = "Aluminum",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "aluminum.png",
		}
	},

	["ammo_pistol"] = {
		label = "Pistol (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Pistol Ammo",
		client = {
			image = "ammo_bullet_normal.png",
		}
	},

	["beak_quailb"] = {
		label = "Quail beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Small quail beak in grasslands.",
		client = {
			image = "beak_quailb.png",
		}
	},

	["stone"] = {
		label = "Stone",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "stone.png",
		}
	},

	["aluminum_ore"] = {
		label = "Aluminum Ore",
		weight = 1000,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "aluminum_ore.png",
		}
	},

	["bayretriever"] = {
		label = "Retriever",
		weight = 500,
		stack = false,
		close = true,
		description = "Ches Bay Retriever",
		client = {
			image = "animal_dog_chesbayretriever.png",
		}
	},

	["poor_pronghorn_pelt"] = {
		label = "Pronghorn Pelt",
		weight = 800,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["provision_wldflwr_wild_rhubarb"] = {
		label = "Wild Rhubarb",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Wild Rhubarb",
		client = {
			image = "provision_wldflwr_wild_rhubarb.png",
		}
	},

	["beef_stew"] = {
		label = "Sup Daging Sapi",
		weight = 100,
		stack = true,
		close = true,
		description = "Sup dengan daging Sapi",
		client = {
			image = "beef_stew.png",
		}
	},

	["perfect_moose_pelt"] = {
		label = "Moose Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["good_raccoon_pelt"] = {
		label = "Raccoon Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["haybale"] = {
		label = "Hay Bale",
		weight = 100,
		stack = true,
		close = true,
		description = "placeholder",
		client = {
			image = "haybale.png",
		}
	},

	["cigar0"] = {
		label = "Cigar",
		weight = 200,
		stack = true,
		close = true,
		description = "Cigar 5% full",
		client = {
			image = "cigar0.png",
		}
	},

	["bucket"] = {
		label = "Bucket",
		weight = 500,
		stack = true,
		close = true,
		description = "farm equipment",
		client = {
			image = "bucket.png",
		}
	},

	["indiancigar"] = {
		label = "Indian Cigar",
		weight = 50,
		stack = true,
		close = true,
		description = "indian cigar",
		client = {
			image = "indiancigar.png",
		}
	},

	["largenugget"] = {
		label = "Large Nugget",
		weight = 300,
		stack = true,
		close = true,
		description = "large gold nugget",
		client = {
			image = "largenugget.png",
		}
	},

	["consumable_meat_herptile_cooked"] = {
		label = "Cooked Herptile Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "consumable_meat_herptile_cooked.png",
		}
	},

	["thyme"] = {
		label = "Thyme",
		weight = 125,
		stack = true,
		close = true,
		description = "thyme",
		client = {
			image = "thyme.png",
		}
	},

	["a_c_fishredfinpickerel_01_ms"] = {
		label = "Red Fin Pickerel (M)",
		weight = 600,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_redfin_pickerel.png",
		}
	},

	["ammo_arrow"] = {
		label = "Arrow (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Arrow",
		client = {
			image = "ammo_arrow.png",
		}
	},

	["tooth_coyotef"] = {
		label = "Coyote tooth",
		weight = 100,
		stack = true,
		close = true,
		description = "Coyote tooth.",
		client = {
			image = "tooth_coyotef.png",
		}
	},

	["bpcshovel"] = {
		label = "BPC Shovel",
		weight = 0,
		stack = false,
		close = true,
		description = "3 x Steel 1 x Wood",
		client = {
			image = "bpcshovel.png",
		}
	},

	["beak_owlf"] = {
		label = "Owl beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Owl beak.",
		client = {
			image = "beak_owlf.png",
		}
	},

	["mediumnugget"] = {
		label = "Medium Nugget",
		weight = 200,
		stack = true,
		close = true,
		description = "medium gold nugget",
		client = {
			image = "mediumnugget.png",
		}
	},

	["provision_vulture_egg"] = {
		label = "Vulture Egg",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Vulture Egg",
		client = {
			image = "provision_vulture_egg.png",
		}
	},

	["moonshinekit"] = {
		label = "Moonshine Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "Moonshine Item",
		client = {
			image = "moonshinekit.png",
		}
	},

	["consumable_herb_desert_sage"] = {
		label = "Desert Sage",
		weight = 0.4,
		stack = true,
		close = true,
		description = "Desert Sage",
		client = {
			image = "consumable_herb_desert_sage.png",
		}
	},

	["consumable_meat_tender_pork_cooked"] = {
		label = "Cooked Pork Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "consumable_meat_tender_pork_cooked.png",
		}
	},

	["sheepfeed"] = {
		label = "Sheep Feed",
		weight = 100,
		stack = true,
		close = true,
		description = "placeholder",
		client = {
			image = "sheepfeed.png",
		}
	},

	["fiber_woolblack"] = {
		label = "Black Yarn Fibre",
		weight = 500,
		stack = true,
		close = true,
		description = "Fibre from an animal",
		client = {
			image = "fiber_woolblack.png",
		}
	},

	["horsetrainingcarrot"] = {
		label = "Trainer Carrot",
		weight = 100,
		stack = true,
		close = true,
		description = "carrot used by a horse trainer",
		client = {
			image = "carrot.png",
		}
	},

	["goldwatch"] = {
		label = "Gold Watch",
		weight = 100,
		stack = true,
		close = true,
		description = "solid gold watch",
		client = {
			image = "goldwatch.png",
		}
	},

	["drytobacco"] = {
		label = "Dry Tobacco",
		weight = 100,
		stack = true,
		close = true,
		description = "factory product",
		client = {
			image = "drytobacco.png",
		}
	},

	["p_finisdfishlurelegendary01x"] = {
		label = "Legendary Fish Lure",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_lure_lake.png",
		}
	},

	["provision_ro_flower_clamshell"] = {
		label = "Clamshell Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Clamshell Flower",
		client = {
			image = "provision_ro_flower_clamshell.png",
		}
	},

	["attachmentsbox"] = {
		label = "Attachments Box",
		weight = 300,
		stack = false,
		close = true,
		description = "Used for weapon customizations",
		client = {
			image = "weaponpart.png",
		}
	},

	["cooked_meat"] = {
		label = "Meat Steak",
		weight = 50,
		stack = true,
		close = true,
		description = "Should be sustain me",
		client = {
			image = "cooked_meat.png",
		}
	},

	["copper_ore"] = {
		label = "Copper Ore",
		weight = 1000,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "copper_ore.png",
		}
	},

	["phonograph"] = {
		label = "phonograph",
		weight = 5000,
		stack = false,
		close = true,
		description = "spin the decks",
		client = {
			image = "phonograph.png",
		}
	},

	["a_c_fishsalmonsockeye_01_ml"] = {
		label = "Salmon Sockeye (ML)",
		weight = 800,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_sockeye_salmon.png",
		}
	},

	["horn_elkantler"] = {
		label = "Elk antler",
		weight = 100,
		stack = true,
		close = true,
		description = "Horn.",
		client = {
			image = "horn_elkantler.png",
		}
	},

	["canteen30"] = {
		label = "Canteen",
		weight = 200,
		stack = false,
		close = true,
		description = "Canteen 30% Full",
		client = {
			image = "canteen30.png",
		}
	},

	["husky"] = {
		label = "Husky",
		weight = 500,
		stack = false,
		close = true,
		description = "Husky",
		client = {
			image = "animal_dog_husky.png",
		}
	},

	["beak_eaglef"] = {
		label = "Eagle beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Eagle beak.",
		client = {
			image = "beak_eaglef.png",
		}
	},

	["p_baitcheese01x"] = {
		label = "Cheese Bait",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_cheese.png",
		}
	},

	["bpopickaxe"] = {
		label = "BPO PickAxe",
		weight = 0,
		stack = false,
		close = true,
		description = "blueprint original",
		client = {
			image = "bpopickaxe.png",
		}
	},

	["perfect_elk_pelt"] = {
		label = "Elk Pelt",
		weight = 1000,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["consumable_herb_american_ginseng"] = {
		label = "American Ginseng",
		weight = 0.3,
		stack = true,
		close = true,
		description = "American Ginseng",
		client = {
			image = "consumable_herb_american_ginseng.png",
		}
	},

	["cookedbird_meat"] = {
		label = "Chicken Wings",
		weight = 50,
		stack = true,
		close = true,
		description = "Should be sustain me",
		client = {
			image = "cookedbird_meat.png",
		}
	},

	["dog_lion"] = {
		label = "Dog Lion",
		weight = 500,
		stack = false,
		close = true,
		description = "Dog Lion",
		client = {
			image = "animal_dog_lion.png",
		}
	},

	["sheperd"] = {
		label = "Shepherd",
		weight = 500,
		stack = false,
		close = true,
		description = "Australian Sheperd",
		client = {
			image = "animal_dog_australianshepherd.png",
		}
	},

	["broccoliseed"] = {
		label = "Broccoli Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "broccoliseeds.png",
		}
	},

	["good_cow_pelt"] = {
		label = "Cow Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["a_c_fishsalmonsockeye_01_ms"] = {
		label = "Salmon Sockeye (M)",
		weight = 600,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_sockeye_salmon.png",
		}
	},

	["poor_wolf_pelt"] = {
		label = "Wolf Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["ammo_repeater_high_velocity"] = {
		label = "Repeater (HV)",
		weight = 200,
		stack = true,
		close = true,
		description = "Repeater High Velocity Ammo",
		client = {
			image = "ammo_bullet_high_velocity.png",
		}
	},

	["broccoli"] = {
		label = "Broccoli",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "broccoli.png",
		}
	},

	["a_c_fishnorthernpike_01_lg"] = {
		label = "Northern Pike (L)",
		weight = 900,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_northern_pike.png",
		}
	},

	["prime_hunt_bait"] = {
		label = "Prime Hunting Bait",
		weight = 100,
		stack = true,
		close = true,
		description = "Prime Bait for Hunting",
		client = {
			image = "prime_hunt_bait.png",
		}
	},

	["indtobaccoseed"] = {
		label = "Indian Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "indian tobacco seed",
		client = {
			image = "indtobaccoseed.png",
		}
	},

	["poor_cow_pelt"] = {
		label = "Cow Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["consumable_meat_stringy_cooked"] = {
		label = "Cooked Stringy Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "consumable_meat_stringy_cooked.png",
		}
	},

	["provision_ro_flower_lady_slipper"] = {
		label = "Lady Slipper Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Lady Slipper Flower",
		client = {
			image = "provision_ro_flower_lady_slipper.png",
		}
	},

	["moonshine"] = {
		label = "Moonshine",
		weight = 100,
		stack = true,
		close = true,
		description = "best moonshine in town",
		client = {
			image = "moonshine.png",
		}
	},

	["foxhound"] = {
		label = "Fox Hound",
		weight = 500,
		stack = false,
		close = true,
		description = "American Foxhound",
		client = {
			image = "animal_dog_americanfoxhound.png",
		}
	},

	["canteen40"] = {
		label = "Canteen",
		weight = 300,
		stack = false,
		close = true,
		description = "Canteen 40% Full",
		client = {
			image = "canteen40.png",
		}
	},

	["claws_owlt"] = {
		label = "Owl claws",
		weight = 100,
		stack = true,
		close = true,
		description = "Claws.",
		client = {
			image = "claws_owlt.png",
		}
	},

	["horseholster"] = {
		label = "Horse Holster",
		weight = 500,
		stack = false,
		close = true,
		description = "horse holster",
		client = {
			image = "horseholster.png",
		}
	},

	["a_c_fishsmallmouthbass_01_lg"] = {
		label = "Small Mouth Bass (L)",
		weight = 900,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_smallmouth_bass.png",
		}
	},

	["perfect_ox_pelt"] = {
		label = "Ox Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["p_baitcorn01x"] = {
		label = "Corn Bait",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_corn.png",
		}
	},

	["legendary_boar_pelt"] = {
		label = "Leg Boar Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["provision_meat_exotic_bird"] = {
		label = "Exotic Bird Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "provision_meat_exotic_bird.png",
		}
	},

	["ammo_blueprint"] = {
		label = "Bluepirnt Ammo",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "ammo_blueprint.png",
		}
	},

	["canteen20"] = {
		label = "Canteen",
		weight = 300,
		stack = false,
		close = true,
		description = "Canteen 20% Full",
		client = {
			image = "canteen20.png",
		}
	},

	["provision_meat_stringy"] = {
		label = "Stringy Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "provision_meat_stringy.png",
		}
	},

	["cigar50"] = {
		label = "Cigar",
		weight = 200,
		stack = true,
		close = true,
		description = "Cigar 50% full",
		client = {
			image = "cigar50.png",
		}
	},

	["a_c_fishlongnosegar_01_lg"] = {
		label = "Long Nose Gar (L)",
		weight = 900,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_longnose_gar.png",
		}
	},

	["good_bear_pelt"] = {
		label = "Bear Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["claws_beartc"] = {
		label = "Bear claws",
		weight = 100,
		stack = true,
		close = true,
		description = "Claws.",
		client = {
			image = "claws_beartc.png",
		}
	},

	["fertilizer"] = {
		label = "Fertilizer",
		weight = 100,
		stack = true,
		close = true,
		description = "feed for growing plants",
		client = {
			image = "fertilizer.png",
		}
	},

	["street"] = {
		label = "Street",
		weight = 500,
		stack = false,
		close = true,
		description = "Street",
		client = {
			image = "animal_dog_street.png",
		}
	},

	["consumable_potent_predator_bait"] = {
		label = "Potent Predator Bait",
		weight = 5000,
		stack = true,
		close = true,
		description = "Prime Bait for Hunting Predators",
		client = {
			image = "consumable_potent_predator_bait.png",
		}
	},

	["tooth_beart"] = {
		label = "Bear tooth",
		weight = 100,
		stack = true,
		close = true,
		description = "Bear tooth.",
		client = {
			image = "tooth_beart.png",
		}
	},

	["a_c_fishmuskie_01_lg"] = {
		label = "Muskie (L)",
		weight = 900,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_muskie.png",
		}
	},

	["consumable_meat_gristly_mutton_cooked"] = {
		label = "Cooked Gristly Mutton Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "consumable_meat_gristly_mutton_cooked.png",
		}
	},

	["horsebrush"] = {
		label = "Horse Brush",
		weight = 10,
		stack = true,
		close = true,
		description = "brush used to clean your horse",
		client = {
			image = "horsebrush.png",
		}
	},

	["feathers"] = {
		label = "Feathers",
		weight = 500,
		stack = true,
		close = true,
		description = "Bird Feathers",
		client = {
			image = "feathers.png",
		}
	},

	["consumable_herb_black_berry"] = {
		label = "Black Berry",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Black Berry",
		client = {
			image = "consumable_herb_black_berry.png",
		}
	},

	["consumable_meat_prime_beef_cooked"] = {
		label = "Cooked Prime Beef Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "consumable_meat_prime_beef_cooked.png",
		}
	},

	["tail_rabbitpaw"] = {
		label = "Rabbit foot",
		weight = 100,
		stack = true,
		close = true,
		description = "Tail.",
		client = {
			image = "tail_rabbitpaw.png",
		}
	},

	["animal_fang"] = {
		label = "Animal Fang",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "animal_fang.png",
		}
	},

	["poor_coyote_pelt"] = {
		label = "Coyote Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["legendary_night_beaver_pelt"] = {
		label = "Leg Beaver Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["legendary_alligator_pelt"] = {
		label = "Leg Alligator Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["man_idcard"] = {
		label = "IDCard",
		weight = 5,
		stack = false,
		close = true,
		description = "Identity Item",
		client = {
			image = "man_idcard.png",
		}
	},

	["provision_wldflwr_wisteria"] = {
		label = "Wisteria",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Wisteria",
		client = {
			image = "provision_wldflwr_wisteria.png",
		}
	},

	["blueberry"] = {
		label = "Blueberry",
		weight = 125,
		stack = true,
		close = true,
		description = "A blueberry",
		client = {
			image = "blueberry.png",
		}
	},

	["beak_peasantf"] = {
		label = "Peasant beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Unique peasant beak with omnivorous diet.",
		client = {
			image = "beak_peasantf.png",
		}
	},

	["dynamite"] = {
		label = "Dynamite",
		weight = 100,
		stack = true,
		close = true,
		description = "for blowing stuff up",
		client = {
			image = "dynamite.png",
		}
	},

	["ramuan_horse"] = {
		label = "Ramuan Kuda",
		weight = 100,
		stack = true,
		close = true,
		description = "Ramuan untuk Kuda",
		client = {
			image = "ramuan_horse.png",
		}
	},

	["jamu_horse"] = {
		label = "Jamu Kuda",
		weight = 100,
		stack = true,
		close = true,
		description = "Jamu untuk Kuda",
		client = {
			image = "jamu_horse.png",
		}
	},

	["gingseng"] = {
		label = "Gingseng",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "gingseng.png",
		}
	},

	["beak_condorf"] = {
		label = "Condor beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Massive condor beak for scavenging.",
		client = {
			image = "beak_condorf.png",
		}
	},

	["poor_deer_pelt"] = {
		label = "Deer Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["pocketwatch1"] = {
		label = "P_W Platinum",
		weight = 125,
		stack = false,
		close = true,
		description = "Pocket Watch Platinum",
		client = {
			image = "pocket_watch_platinum.png",
		}
	},

	["poor_ox_pelt"] = {
		label = "Ox Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["hound"] = {
		label = "Hound",
		weight = 500,
		stack = false,
		close = true,
		description = "Hound",
		client = {
			image = "animal_dog_hound.png",
		}
	},

	["poor_elk_pelt"] = {
		label = "Elk Pelt",
		weight = 1000,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["beak_kbirdf"] = {
		label = "Blue Heron beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Majestic great blue heron beak near water.",
		client = {
			image = "beak_kbirdf.png",
		}
	},

	["canteen80"] = {
		label = "Canteen",
		weight = 300,
		stack = false,
		close = true,
		description = "Canteen 80% Full",
		client = {
			image = "canteen80.png",
		}
	},

	["provision_meat_prime_beef"] = {
		label = "Prime Beef Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "provision_meat_prime_beef.png",
		}
	},

	["p_baitcricket01x"] = {
		label = "Cricket Bait",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_cricket.png",
		}
	},

	["consumable_herb_oregano"] = {
		label = "Oregano",
		weight = 0.6,
		stack = true,
		close = true,
		description = "Oregano",
		client = {
			image = "consumable_herb_oregano.png",
		}
	},

	["good_goat_pelt"] = {
		label = "Goat Pelt",
		weight = 100,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["iron"] = {
		label = "Iron",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "iron.png",
		}
	},

	["cigar100"] = {
		label = "Cigar",
		weight = 200,
		stack = true,
		close = true,
		description = "Cigar 100% full",
		client = {
			image = "cigar100.png",
		}
	},

	["good_elk_pelt"] = {
		label = "Elk Pelt",
		weight = 1000,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["silver"] = {
		label = "Silver",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "silver.png",
		}
	},

	["consumable_herb_harrietum"] = {
		label = "Harrietum",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Harrietum",
		client = {
			image = "consumable_herb_harrietum.png",
		}
	},

	["shovel"] = {
		label = "Shovel",
		weight = 100,
		stack = true,
		close = true,
		description = "equipment for digging",
		client = {
			image = "shovel.png",
		}
	},

	["pocketwatch2"] = {
		label = "P_W Silver",
		weight = 125,
		stack = false,
		close = true,
		description = "Pocket Watch Silver",
		client = {
			image = "pocket_watch_silver.png",
		}
	},

	["milkbottle"] = {
		label = "Milk Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "placeholder",
		client = {
			image = "milkbottle.png",
		}
	},

	["consumable_herb_wintergreen_berry"] = {
		label = "Wintergreen Berry",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Wintergreen Berry",
		client = {
			image = "consumable_herb_wintergreen_berry.png",
		}
	},

	["sling"] = {
		label = "Sling",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "sling.png",
		}
	},

	["consumable_potent_herbivore_bait"] = {
		label = "Potent Herbivore Bait",
		weight = 5000,
		stack = true,
		close = true,
		description = "Prime Bait for Hunting Herbivores",
		client = {
			image = "consumable_potent_herbivore_bait.png",
		}
	},

	["a_c_fishsalmonsockeye_01_lg"] = {
		label = "Salmon Sockeye (L)",
		weight = 900,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_sockeye_salmon.png",
		}
	},

	["chickenfeed"] = {
		label = "Chicken Feed",
		weight = 100,
		stack = true,
		close = true,
		description = "placeholder",
		client = {
			image = "chickenfeed.png",
		}
	},

	["pigfeed"] = {
		label = "Pig Feed",
		weight = 100,
		stack = true,
		close = true,
		description = "placeholder",
		client = {
			image = "pigfeed.png",
		}
	},

	["perfect_deer_pelt"] = {
		label = "Deer Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["a_c_fishbullheadcat_01_ms"] = {
		label = "Bullhead Cat (M)",
		weight = 600,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_bullhead_catfish.png",
		}
	},

	["lab"] = {
		label = "Lab",
		weight = 500,
		stack = false,
		close = true,
		description = "Lab",
		client = {
			image = "animal_dog_lab.png",
		}
	},

	["provision_ro_flower_acunas_star"] = {
		label = "Acunas Star",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Acunas Star",
		client = {
			image = "provision_ro_flower_acunas_star.png",
		}
	},

	["bird_meat"] = {
		label = "Raw Bird Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "Raw Meat ready for cooking",
		client = {
			image = "bird_meat.png",
		}
	},

	["beak_rspoonf"] = {
		label = "Spoonbill beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Specialized spoonbill beak.",
		client = {
			image = "beak_rspoonf.png",
		}
	},

	["canteen50"] = {
		label = "Canteen",
		weight = 400,
		stack = false,
		close = true,
		description = "Canteen 50% Full",
		client = {
			image = "canteen50.png",
		}
	},

	["good_sheep_pelt"] = {
		label = "Sheep Pelt",
		weight = 300,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["beak_bparrotf"] = {
		label = "Parrot beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Colorful parrot beak.",
		client = {
			image = "beak_bparrotf.png",
		}
	},

	["hammer"] = {
		label = "Hammer",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "hammer.png",
		}
	},

	["wateringcan"] = {
		label = "Wateringcan",
		weight = 300,
		stack = true,
		close = true,
		description = "equipment for watering stuff",
		client = {
			image = "wateringcan.png",
		}
	},

	["poor_alligator_pelt"] = {
		label = "Alligator Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["beak_vulturef"] = {
		label = "Vulture beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Vulture beak.",
		client = {
			image = "beak_vulturef.png",
		}
	},

	["canteen0"] = {
		label = "Canteen Kosong",
		weight = 100,
		stack = false,
		close = true,
		description = "Canteen Kosong",
		client = {
			image = "canteenempty.png",
		}
	},

	["beak_boobyf"] = {
		label = "Red-footed beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Distinctive red-footed booby beak.",
		client = {
			image = "beak_boobyf.png",
		}
	},

	["pickaxe"] = {
		label = "PickAxe",
		weight = 100,
		stack = true,
		close = true,
		description = "equipment for mining",
		client = {
			image = "pickaxe.png",
		}
	},

	["ammo_varmint_tranquilizer"] = {
		label = "Varmint (T)",
		weight = 200,
		stack = true,
		close = true,
		description = "Varmint Ammo",
		client = {
			image = "ammo_22_tranquilizer.png",
		}
	},

	["poor_boar_pelt"] = {
		label = "Boar Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["addressbook"] = {
		label = "Address Book",
		weight = 5,
		stack = true,
		close = true,
		description = "Address Book for your life!",
		client = {
			image = "addressbook.png",
		}
	},

	["provision_wldflwr_texas_blue_bonnet"] = {
		label = "Texas Blue Bonnet",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Texas Blue Bonnet",
		client = {
			image = "provision_wldflwr_texas_blue_bonnet.png",
		}
	},

	["buffalo_tatanka"] = {
		label = "Buffalo Tatanka",
		weight = 500,
		stack = false,
		close = true,
		description = "Buffalo Tatanka",
		client = {
			image = "animal_buffalo_tatanka.png",
		}
	},

	["boatticket"] = {
		label = "Boat Ticket",
		weight = 0,
		stack = true,
		close = true,
		description = "used for boat travel",
		client = {
			image = "boatticket.png",
		}
	},

	["stimulantcheval"] = {
		label = "Horse Stimulant",
		weight = 100,
		stack = true,
		close = true,
		description = "Horse Stimulant",
		client = {
			image = "stimulantcheval.png",
		}
	},

	["canteen60"] = {
		label = "Canteen",
		weight = 500,
		stack = false,
		close = true,
		description = "Canteen 60% Full",
		client = {
			image = "canteen60.png",
		}
	},

	["horn_cowh"] = {
		label = "Cow horn",
		weight = 100,
		stack = true,
		close = true,
		description = "Horn.",
		client = {
			image = "horn_cowh.png",
		}
	},

	["beak_goosef"] = {
		label = "Goose beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Eagle beak for hunting.",
		client = {
			image = "beak_goosef.png",
		}
	},

	["legendary_cougar_pelt"] = {
		label = "Leg Cougar Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["perfect_coyote_pelt"] = {
		label = "Coyote Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["poor_fox_pelt"] = {
		label = "Redfox Pelt",
		weight = 100,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["perfect_panther_pelt"] = {
		label = "Panther Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["fieldbandage"] = {
		label = "Field Bandage",
		weight = 50,
		stack = true,
		close = true,
		description = "patching yourself up",
		client = {
			image = "fieldbandage.png",
		}
	},

	["good_pig_pelt"] = {
		label = "Pig Pelt",
		weight = 300,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["legendary_coyote_pelt"] = {
		label = "Leg Coyote Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["horn_ox"] = {
		label = "Angus Bull horn",
		weight = 100,
		stack = true,
		close = true,
		description = "Horn.",
		client = {
			image = "horn_oxhorn.png",
		}
	},

	["bird_parrot"] = {
		label = "Bird Parrot",
		weight = 500,
		stack = false,
		close = true,
		description = "Bird Parrot",
		client = {
			image = "animal_bird_parrot.png",
		}
	},

	["cleankit"] = {
		label = "Cleaning Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "for cleaning weapons",
		client = {
			image = "cleankit.png",
		}
	},

	["consumable_herb_evergreen_huckleberry"] = {
		label = "Evergreen Huckleberry",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Evergreen Huckleberry",
		client = {
			image = "consumable_herb_evergreen_huckleberry.png",
		}
	},

	["a_c_fishredfinpickerel_01_sm"] = {
		label = "Red Fin Pickerel (S)",
		weight = 300,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_redfin_pickerel.png",
		}
	},

	["claws_hawkt"] = {
		label = "Hawk claws",
		weight = 100,
		stack = true,
		close = true,
		description = "Claws.",
		client = {
			image = "claws_hawkt.png",
		}
	},

	["sugar"] = {
		label = "Sugar",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "sugar.png",
		}
	},

	["collie"] = {
		label = "Collie",
		weight = 500,
		stack = false,
		close = true,
		description = "Collie",
		client = {
			image = "animal_dog_collie.png",
		}
	},

	["beak_turkeyf"] = {
		label = "Turkey beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Owl beak for nocturnal hunting.",
		client = {
			image = "beak_turkeyf.png",
		}
	},

	["large_cooked_meat"] = {
		label = "Large Steak",
		weight = 50,
		stack = true,
		close = true,
		description = "Good for eating!",
		client = {
			image = "large_cooked_meat.png",
		}
	},

	["boar_legendary"] = {
		label = "Boar Legendary",
		weight = 500,
		stack = false,
		close = true,
		description = "Boar Legendary",
		client = {
			image = "animal_boar_legendary.png",
		}
	},

	["ammo_repeater_express"] = {
		label = "Repeater (E)",
		weight = 200,
		stack = true,
		close = true,
		description = "Repeater Express Ammo",
		client = {
			image = "ammo_bullet_express.png",
		}
	},

	["cougar"] = {
		label = "Cougar",
		weight = 500,
		stack = false,
		close = true,
		description = "Cougar",
		client = {
			image = "animal_cougar.png",
		}
	},

	["animal_fat"] = {
		label = "Animal Fat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "animal_fat.png",
		}
	},

	["beeswax"] = {
		label = "Bees Wax",
		weight = 100,
		stack = true,
		close = true,
		description = "product from beehive",
		client = {
			image = "beeswax.png",
		}
	},

	["consumable_herb_alaskan_ginseng"] = {
		label = "Alaskan Ginseng",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Alaskan Ginseng",
		client = {
			image = "consumable_herb_alaskan_ginseng.png",
		}
	},

	["wool"] = {
		label = "Wool",
		weight = 100,
		stack = true,
		close = true,
		description = "placeholder",
		client = {
			image = "wool.png",
		}
	},

	["provision_ro_flower_cigar"] = {
		label = "Cigar Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Cigar Flower",
		client = {
			image = "provision_ro_flower_cigar.png",
		}
	},

	["pig"] = {
		label = "Truffle Pig",
		weight = 100,
		stack = true,
		close = true,
		description = "ranch",
		client = {
			image = "pig.png",
		}
	},

	["provision_wldflwr_agarita"] = {
		label = "Agarita",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Agarita",
		client = {
			image = "provision_wldflwr_agarita.png",
		}
	},

	["sage"] = {
		label = "Sage",
		weight = 125,
		stack = true,
		close = true,
		description = "sage",
		client = {
			image = "sage.png",
		}
	},

	["consumable_herbivore_bait"] = {
		label = "Herbivore Bait",
		weight = 500,
		stack = true,
		close = true,
		description = "Basic Bait for Hunting Herbivores",
		client = {
			image = "consumable_herbivore_bait.png",
		}
	},

	["legendary_fox_pelt"] = {
		label = "Leg Fox Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["beak_prairif"] = {
		label = "Prairie Chicken beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Robust prairie chicken beak.",
		client = {
			image = "beak_prairif.png",
		}
	},

	["barricade_exp"] = {
		label = "Barricade exp",
		weight = 100,
		stack = true,
		close = true,
		description = "Moonshine Item",
		client = {
			image = "defensive_fortmodular.png",
		}
	},

	["horn_bull"] = {
		label = "Bull horn",
		weight = 100,
		stack = true,
		close = true,
		description = "Horn.",
		client = {
			image = "horn_bullhorn.png",
		}
	},

	["iron_ore"] = {
		label = "Iron Ore",
		weight = 1000,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "iron_ore.png",
		}
	},

	["wolf"] = {
		label = "Wolf",
		weight = 500,
		stack = false,
		close = true,
		description = "Wolf",
		client = {
			image = "animal_wolf.png",
		}
	},

	["claws_armadilloc"] = {
		label = "Armadillo claws",
		weight = 100,
		stack = true,
		close = true,
		description = "Armadillo claws.",
		client = {
			image = "claws_armadilloc.png",
		}
	},

	["beak_pelicanf"] = {
		label = "Pelican beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Large pelican beak for scooping fish.",
		client = {
			image = "beak_pelicanf.png",
		}
	},

	["deer_stew"] = {
		label = "Sup Daging Rusa",
		weight = 100,
		stack = true,
		close = true,
		description = "Sup dengan daging Rusa",
		client = {
			image = "deer_stew.png",
		}
	},

	["consumable_herb_yarrow"] = {
		label = "Yarrow",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Yarrow",
		client = {
			image = "consumable_herb_yarrow.png",
		}
	},

	["trigger"] = {
		label = "Trigger",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "trigger.png",
		}
	},

	["sugarcube"] = {
		label = "Sugar Cube",
		weight = 10,
		stack = true,
		close = true,
		description = "your horse may like these",
		client = {
			image = "sugarcube.png",
		}
	},

	["good_wolf_pelt"] = {
		label = "Wolf Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["cookedsmall_bird_meat"] = {
		label = "Chick Drum Sticks",
		weight = 50,
		stack = true,
		close = true,
		description = "Should feed me a little bit",
		client = {
			image = "cookedsmall_bird_meat.png",
		}
	},

	["indtobacco"] = {
		label = "Indian Tobacco",
		weight = 10,
		stack = true,
		close = true,
		description = "indian tobacco",
		client = {
			image = "indtobacco.png",
		}
	},

	["cat"] = {
		label = "Cat",
		weight = 500,
		stack = false,
		close = true,
		description = "Cat",
		client = {
			image = "animal_cat.png",
		}
	},

	["canteen10"] = {
		label = "Canteen",
		weight = 200,
		stack = false,
		close = true,
		description = "Canteen 10% Full",
		client = {
			image = "canteen10.png",
		}
	},

	["legendary_moon_beaver_pelt"] = {
		label = "Leg Beaver Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["a_c_fishlakesturgeon_01_lg"] = {
		label = "Lake Sturgeon (L)",
		weight = 900,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_lake_sturgeon.png",
		}
	},

	["ammo_revolver"] = {
		label = "Revolver (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Revolver Ammo",
		client = {
			image = "ammo_bullet_normal.png",
		}
	},

	["milk"] = {
		label = "Susu Mentah",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "milk.png",
		}
	},

	["cigarbox"] = {
		label = "Cigar Box",
		weight = 2000,
		stack = true,
		close = true,
		description = "factory product",
		client = {
			image = "cigarbox.png",
		}
	},

	["horn_prong"] = {
		label = "Pronghorn horn",
		weight = 100,
		stack = true,
		close = true,
		description = "Horn.",
		client = {
			image = "horn_pronghornh.png",
		}
	},

	["perfect_black_bear_pelt"] = {
		label = "Black Bear Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["consumable_meat_gamey_bird_cooked"] = {
		label = "Cooked Big Game Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "consumable_meat_gamey_bird_cooked.png",
		}
	},

	["p_finishedragonflylegendary01x"] = {
		label = "Legendary Dragonfly Lure",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_lure_lake.png",
		}
	},

	["malt"] = {
		label = "Malt",
		weight = 50,
		stack = true,
		close = true,
		description = "used by saloons",
		client = {
			image = "malt.png",
		}
	},

	["surgeryticket"] = {
		label = "Surgery Ticket",
		weight = 10,
		stack = true,
		close = true,
		description = "Ticket for your Surgery",
		client = {
			image = "bounty_ticket.png",
		}
	},

	["horsetrainingbrush"] = {
		label = "Trainer Brush",
		weight = 300,
		stack = true,
		close = true,
		description = "brush used by a horse trainer",
		client = {
			image = "horsebrush.png",
		}
	},

	["salt"] = {
		label = "Garam",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "salt.png",
		}
	},

	["stock"] = {
		label = "Stock",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "stock.png",
		}
	},

	["saddlebag"] = {
		label = "Saddlebag",
		weight = 650,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "saddlebag.png",
		}
	},

	["corn"] = {
		label = "Corn",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "corn.png",
		}
	},

	["raccoon"] = {
		label = "Raccoon",
		weight = 500,
		stack = false,
		close = true,
		description = "Racoon",
		client = {
			image = "animal_raccoon.png",
		}
	},

	["carrot"] = {
		label = "Carrot",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "carrot.png",
		}
	},

	["cooked_fish"] = {
		label = "Cooked Fish",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "cooked_fish.png",
		}
	},

	["provision_ro_flower_ghost"] = {
		label = "Ghost Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Ghost Flower",
		client = {
			image = "provision_ro_flower_ghost.png",
		}
	},

	["mint"] = {
		label = "Mint",
		weight = 125,
		stack = true,
		close = true,
		description = "mint",
		client = {
			image = "mint.png",
		}
	},

	["a_c_fishrainbowtrout_01_lg"] = {
		label = "Rainbow Trout (L)",
		weight = 900,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_speckled_trout.png",
		}
	},

	["bposhovel"] = {
		label = "BPO Shovel",
		weight = 0,
		stack = false,
		close = true,
		description = "blueprint original",
		client = {
			image = "bposhovel.png",
		}
	},

	["consumable_herb_milkweed"] = {
		label = "Milkweed",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Milkweed",
		client = {
			image = "consumable_herb_milkweed.png",
		}
	},

	["apple"] = {
		label = "Apple",
		weight = 500,
		stack = true,
		close = true,
		description = "Apple",
		client = {
			image = "apple.png",
		}
	},

	["consumable_meat_exotic_bird_cooked"] = {
		label = "Cooked Exotic Bird Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "consumable_meat_exotic_bird_cooked.png",
		}
	},

	["tooth_foxt"] = {
		label = "Fox tooth",
		weight = 100,
		stack = true,
		close = true,
		description = "Fox tooth.",
		client = {
			image = "tooth_foxt.png",
		}
	},

	["woman_idcard"] = {
		label = "IDCard",
		weight = 5,
		stack = false,
		close = true,
		description = "Identity Item",
		client = {
			image = "woman_idcard.png",
		}
	},

	["p_finishdcrawd01x"] = {
		label = "Crawfish Lure",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_leg_lure_swamp.png",
		}
	},

	["action"] = {
		label = "Action",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "action.png",
		}
	},

	["wolf_heart"] = {
		label = "Wolf Heart",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "wolf_heart.png",
		}
	},

	["birdpost"] = {
		label = "Bird Post",
		weight = 5,
		stack = true,
		close = true,
		description = "Bird Post for sending letters",
		client = {
			image = "birdpost.png",
		}
	},

	["p_baitbread01x"] = {
		label = "Bread Bait",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_bread.png",
		}
	},

	["good_coyote_pelt"] = {
		label = "Coyote Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["good_pronghorn_pelt"] = {
		label = "Pronghorn Pelt",
		weight = 800,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["tail_lizardl"] = {
		label = "Lizard foot",
		weight = 100,
		stack = true,
		close = true,
		description = "Tail.",
		client = {
			image = "tail_lizardl.png",
		}
	},

	["perfect_buck_pelt"] = {
		label = "Buck Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["provision_ro_flower_sparrows"] = {
		label = "Sparrows Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Sparrows Flower",
		client = {
			image = "provision_ro_flower_sparrows.png",
		}
	},

	["ammo_arrow_dynamite"] = {
		label = "Arrow (D)",
		weight = 200,
		stack = true,
		close = true,
		description = "Arrow",
		client = {
			image = "ammo_arrow_dynamite.png",
		}
	},

	["poor_goat_pelt"] = {
		label = "Goat Pelt",
		weight = 100,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["egg"] = {
		label = "Egg",
		weight = 100,
		stack = true,
		close = true,
		description = "placeholder",
		client = {
			image = "egg.png",
		}
	},

	["provision_fish_meat"] = {
		label = "Fish Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "provision_fish_meat.png",
		}
	},

	["diamond"] = {
		label = "Diamond",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "diamond.png",
		}
	},

	["a_c_fishperch_01_sm"] = {
		label = "Perch (S)",
		weight = 300,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_perch.png",
		}
	},

	["smallnugget"] = {
		label = "Small Nugget",
		weight = 100,
		stack = true,
		close = true,
		description = "small gold nugget",
		client = {
			image = "smallnugget.png",
		}
	},

	["a_c_fishchannelcatfish_01_xl"] = {
		label = "Channel Catfish (EL)",
		weight = 1000,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_channel_catfish.png",
		}
	},

	["paper"] = {
		label = "Kertas",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "paper.png",
		}
	},

	["yeast"] = {
		label = "Yeast",
		weight = 50,
		stack = true,
		close = true,
		description = "used by saloons",
		client = {
			image = "yeast.png",
		}
	},

	["rooster"] = {
		label = "Rooster",
		weight = 500,
		stack = false,
		close = true,
		description = "Rooster",
		client = {
			image = "animal_rooster.png",
		}
	},

	["beak_loonf"] = {
		label = "Common Loon beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Pointed common loon beak for underwater fishing.",
		client = {
			image = "beak_loonf.png",
		}
	},

	["tooth_raccoont"] = {
		label = "Raccoon tooth",
		weight = 100,
		stack = true,
		close = true,
		description = "Raccoon tooth.",
		client = {
			image = "tooth_raccoont.png",
		}
	},

	["a_c_fishchainpickerel_01_ms"] = {
		label = "Chain Pickerel (M)",
		weight = 600,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_chain_pickerel.png",
		}
	},

	["tooth_wolftooth"] = {
		label = "Wolf tooth",
		weight = 100,
		stack = true,
		close = true,
		description = "Wolf tooth.",
		client = {
			image = "tooth_wolftooth.png",
		}
	},

	["ammo_arrow_fire"] = {
		label = "Arrow (F)",
		weight = 200,
		stack = true,
		close = true,
		description = "Arrow",
		client = {
			image = "ammo_arrow_fire.png",
		}
	},

	["perfect_cow_pelt"] = {
		label = "Cow Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["tobaccoseed"] = {
		label = "Tobacco Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "tobaccoseeds.png",
		}
	},

	["a_c_fishrainbowtrout_01_ms"] = {
		label = "Rainbow Trout (M)",
		weight = 600,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_speckled_trout.png",
		}
	},

	["poor_bighornram_pelt"] = {
		label = "Bighornram Pelt",
		weight = 800,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["treasure1"] = {
		label = "Treasure Map",
		weight = 50,
		stack = true,
		close = true,
		description = "map for finding treasure",
		client = {
			image = "treasuremap.png",
		}
	},

	["poor_moose_pelt"] = {
		label = "Moose Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["a_c_fishrockbass_01_sm"] = {
		label = "Rock Bass (S)",
		weight = 300,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_rock_bass.png",
		}
	},

	["good_alligator_pelt"] = {
		label = "Alligator Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["woodplank"] = {
		label = "Papan",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "woodplank.png",
		}
	},

	["poor_buck_pelt"] = {
		label = "Buck Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["hops"] = {
		label = "Hops",
		weight = 50,
		stack = true,
		close = true,
		description = "used by saloons",
		client = {
			image = "hops.png",
		}
	},

	["beak_duckf"] = {
		label = "Duck beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Duck beak.",
		client = {
			image = "beak_duckf.png",
		}
	},

	["wolfsmall"] = {
		label = "Wolf Small",
		weight = 500,
		stack = false,
		close = true,
		description = "Wolf Small",
		client = {
			image = "animal_wolf_small.png",
		}
	},

	["consumable_herb_parasol_mushroom"] = {
		label = "Parasol Mushroom",
		weight = 0.4,
		stack = true,
		close = true,
		description = "Parasol Mushroom",
		client = {
			image = "consumable_herb_parasol_mushroom.png",
		}
	},

	["small_bird_meat"] = {
		label = "Small Bird Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "Small meat ready for cooking",
		client = {
			image = "small_bird_meat.png",
		}
	},

	["consumable_herb_wild_carrots"] = {
		label = "Wild Carrots",
		weight = 0.4,
		stack = true,
		close = true,
		description = "Wild Carrots",
		client = {
			image = "consumable_herb_wild_carrots.png",
		}
	},

	["gingsengseed"] = {
		label = "Gingseng Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "gingsengseeds.png",
		}
	},

	["pocketwatch4"] = {
		label = "P_W Silver Gold",
		weight = 125,
		stack = false,
		close = true,
		description = "Pocket Watch Silver Gold",
		client = {
			image = "pocket_watch_silvergold.png",
		}
	},

	["tobacco"] = {
		label = "Tobacco",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "tobacco.png",
		}
	},

	["perfect_pronghorn_pelt"] = {
		label = "Pronghorn Pelt",
		weight = 800,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["emerald"] = {
		label = "Emerald",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "emerald.png",
		}
	},

	["canteen00"] = {
		label = "Canteen Mentah",
		weight = 100,
		stack = false,
		close = true,
		description = "Canteen Mentah",
		client = {
			image = "emptycanteen.png",
		}
	},

	["perfect_bear_pelt"] = {
		label = "Bear Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["consumable_herb_violet_snowdrop"] = {
		label = "Violet Snowdrop",
		weight = 0.3,
		stack = true,
		close = true,
		description = "Violet Snowdrop",
		client = {
			image = "consumable_herb_violet_snowdrop.png",
		}
	},

	["bread"] = {
		label = "Bread Roll",
		weight = 125,
		stack = true,
		close = true,
		description = "Bread Roll",
		client = {
			image = "bread.png",
		}
	},

	["p_lgoc_spinner_v4"] = {
		label = "Spinner",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_leg_lure_lake.png",
		}
	},

	["provision_ro_flower_spider"] = {
		label = "Spider Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Spider Flower",
		client = {
			image = "provision_ro_flower_spider.png",
		}
	},

	["consumable_meat_game_cooked"] = {
		label = "Cooked Game Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "consumable_meat_game_cooked.png",
		}
	},

	["provision_meat_herptile"] = {
		label = "Herptile Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "provision_meat_herptile.png",
		}
	},

	["beak_daruf"] = {
		label = "Crane beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Slender crane beak near wetlands.",
		client = {
			image = "beak_daruf.png",
		}
	},

	["provision_meat_game"] = {
		label = "Game Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "provision_meat_game.png",
		}
	},

	["claws_ravenc"] = {
		label = "Raven claws",
		weight = 100,
		stack = true,
		close = true,
		description = "Claws.",
		client = {
			image = "claws_ravenc.png",
		}
	},

	["consumable_herb_common_bulrush"] = {
		label = "Bulrush",
		weight = 0.4,
		stack = true,
		close = true,
		description = "Bulrush",
		client = {
			image = "consumable_herb_common_bulrush.png",
		}
	},

	["honeypot"] = {
		label = "Honey Pot",
		weight = 300,
		stack = true,
		close = true,
		description = "Used for making honey",
		client = {
			image = "honeypot.png",
		}
	},

	["beak_hawkf"] = {
		label = "Hawk beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Hawk beak.",
		client = {
			image = "beak_hawkf.png",
		}
	},

	["fish_stew"] = {
		label = "Sup Daging Ikan",
		weight = 100,
		stack = true,
		close = true,
		description = "Sup dengan daging Ikan",
		client = {
			image = "fish_stew.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "bottle of Vodka",
		client = {
			image = "vodka.png",
		}
	},

	["provision_meat_tender_pork"] = {
		label = "Tender Pork Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "provision_meat_tender_pork.png",
		}
	},

	["rock"] = {
		label = "Rock",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "rock.png",
		}
	},

	["legendary_beaver_pelt"] = {
		label = "Leg Beaver Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["moonshinemash"] = {
		label = "Moonshine Mash",
		weight = 100,
		stack = true,
		close = true,
		description = "Moonshine Item",
		client = {
			image = "moonshinemash.png",
		}
	},

	["big_game_meat_cooked"] = {
		label = "Cooked Big Game Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "big_game_meat_cooked.png",
		}
	},

	["good_bull_pelt"] = {
		label = "Bull Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["cowfeed"] = {
		label = "Cow Feed",
		weight = 100,
		stack = true,
		close = true,
		description = "placeholder",
		client = {
			image = "cowfeed.png",
		}
	},

	["good_large_alligator_pelt"] = {
		label = "Large Alligator Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["printphoto"] = {
		label = "Print Photo",
		weight = 5,
		stack = false,
		close = true,
		description = "Identity Item",
		client = {
			image = "printphoto.png",
		}
	},

	["wood"] = {
		label = "Kayu",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "wood.png",
		}
	},

	["milk_r"] = {
		label = "Susu Fermentasi",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "milk_r.png",
		}
	},

	["ammo_repeater_split_point"] = {
		label = "Repeater (SP)",
		weight = 200,
		stack = true,
		close = true,
		description = "Repeater Split Point Ammo",
		client = {
			image = "ammo_bullet_split_point.png",
		}
	},

	["spring"] = {
		label = "Spring",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "spring.png",
		}
	},

	["coal"] = {
		label = "Coal",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "coal.png",
		}
	},

	["sight"] = {
		label = "Sight",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "sight.png",
		}
	},

	["canteen70"] = {
		label = "Canteen",
		weight = 200,
		stack = false,
		close = true,
		description = "Canteen 70% Full",
		client = {
			image = "canteen70.png",
		}
	},

	["canteen100"] = {
		label = "Canteen",
		weight = 500,
		stack = false,
		close = true,
		description = "Canteen 100% Full",
		client = {
			image = "canteen100.png",
		}
	},

	["ammo_shotgun"] = {
		label = "Shotgun (N)",
		weight = 200,
		stack = true,
		close = true,
		description = "Shotgun Ammo",
		client = {
			image = "ammo_shotgun.png",
		}
	},

	["p_lgoc_spinner_v6"] = {
		label = "Improved Spinner",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_leg_lure_lake.png",
		}
	},

	["good_buffalo_pelt"] = {
		label = "Buffalo Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["small_raw_meat"] = {
		label = "Small Raw Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "Small meat ready for cooking",
		client = {
			image = "small_raw_meat.png",
		}
	},

	["provision_goose_egg"] = {
		label = "Goose Egg",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Goose Egg",
		client = {
			image = "provision_goose_egg.png",
		}
	},

	["horselantern"] = {
		label = "Horse Lantern",
		weight = 500,
		stack = true,
		close = true,
		description = "horses need headlights!",
		client = {
			image = "horselantern.png",
		}
	},

	["good_buck_pelt"] = {
		label = "Buck Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["legendary_wolf_pelt"] = {
		label = "Leg Wolf Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["notepad"] = {
		label = "Notepad",
		weight = 50,
		stack = false,
		close = true,
		description = "for sending notes",
		client = {
			image = "notepad.png",
		}
	},

	["consumable_herb_red_raspberry"] = {
		label = "Red Raspberry",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Red Raspberry",
		client = {
			image = "consumable_herb_red_raspberry.png",
		}
	},

	["woodlog"] = {
		label = "Kayu Mentah",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "woodlog.png",
		}
	},

	["good_bighornram_pelt"] = {
		label = "Bighornram Pelt",
		weight = 800,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["claws_opossumc"] = {
		label = "Opossumc claws",
		weight = 100,
		stack = true,
		close = true,
		description = "Claws.",
		client = {
			image = "claws_opossumc.png",
		}
	},

	["stick"] = {
		label = "Stick",
		weight = 125,
		stack = true,
		close = true,
		description = "A stick",
		client = {
			image = "stick.png",
		}
	},

	["provision_meat_gamey_bird"] = {
		label = "Gamey Bird",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "provision_meat_gamey_bird.png",
		}
	},

	["provision_disco_gator_egg"] = {
		label = "Disco Gator Egg",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Disco Gator Egg",
		client = {
			image = "provision_disco_gator_egg.png",
		}
	},

	["large_bird_meat"] = {
		label = "Large Bird Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "Large meat ready for cooking",
		client = {
			image = "large_bird_meat.png",
		}
	},

	["bear"] = {
		label = "Bear",
		weight = 500,
		stack = false,
		close = true,
		description = "Bear",
		client = {
			image = "animal_bear.png",
		}
	},

	["bolt"] = {
		label = "Bolt",
		weight = 100,
		stack = true,
		close = true,
		description = "weapon crafting part",
		client = {
			image = "bolt.png",
		}
	},

	["tomato"] = {
		label = "Tomato",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "tomato.png",
		}
	},

	["catahoulacur"] = {
		label = "Catahoula Cur",
		weight = 500,
		stack = false,
		close = true,
		description = "Catahoula Cur",
		client = {
			image = "animal_dog_catahoularcur.png",
		}
	},

	["provision_ro_flower_night_scented"] = {
		label = "Night Scented Flower",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Night Scented Flower",
		client = {
			image = "provision_ro_flower_night_scented.png",
		}
	},

	["barricade"] = {
		label = "Barricade",
		weight = 100,
		stack = true,
		close = true,
		description = "Moonshine Item",
		client = {
			image = "defensive_wood.png",
		}
	},

	["campfire"] = {
		label = "Camp Fire",
		weight = 500,
		stack = true,
		close = true,
		description = "used for cooking",
		client = {
			image = "campfire.png",
		}
	},

	["good_boar_pelt"] = {
		label = "Boar Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["goldpan"] = {
		label = "Gold Pan",
		weight = 100,
		stack = true,
		close = true,
		description = "equipment for gold panning",
		client = {
			image = "goldpan.png",
		}
	},

	["perfect_wolf_pelt"] = {
		label = "Wolf Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["perfect_bull_pelt"] = {
		label = "Bull Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["legendary_zizi_beaver_pelt"] = {
		label = "Leg Beaver Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["tomatoseed"] = {
		label = "Tomato Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "tomatoseeds.png",
		}
	},

	["potato"] = {
		label = "Potato",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "potato.png",
		}
	},

	["poor_panther_pelt"] = {
		label = "Panther Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Poor (*)",
		client = {
			image = "pelt_poor.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "copper.png",
		}
	},

	["consumable_herb_black_currant"] = {
		label = "Black Currant",
		weight = 0.4,
		stack = true,
		close = true,
		description = "Black Currant",
		client = {
			image = "consumable_herb_black_currant.png",
		}
	},

	["birdseagull"] = {
		label = "Bird Seagull",
		weight = 500,
		stack = false,
		close = true,
		description = "Bird Seagull",
		client = {
			image = "animal_bird_seagull.png",
		}
	},

	["perfect_alligator_pelt"] = {
		label = "Alligator Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_perfect.png",
		}
	},

	["consumable_herb_saltbush"] = {
		label = "Crown Garlic",
		weight = 0.05,
		stack = true,
		close = true,
		description = "Crown Garlic",
		client = {
			image = "consumable_crows_garlic.png",
		}
	},

	["tooth_cougarf"] = {
		label = "Cougar tooth",
		weight = 100,
		stack = true,
		close = true,
		description = "Cougar tooth.",
		client = {
			image = "tooth_cougarf.png",
		}
	},

	["a_c_fishchainpickerel_01_sm"] = {
		label = "Chain Pickerel (S)",
		weight = 300,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_chain_pickerel.png",
		}
	},

	["honeyframe"] = {
		label = "Honey Frame",
		weight = 100,
		stack = true,
		close = true,
		description = "Used for making honey",
		client = {
			image = "honeyframe.png",
		}
	},

	["good_panther_pelt"] = {
		label = "Panther Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["beak_seagullf"] = {
		label = "Seagull beak",
		weight = 100,
		stack = true,
		close = true,
		description = "beak.",
		client = {
			image = "beak_seagullf.png",
		}
	},

	["p_baitworm01x"] = {
		label = "Worm Bait",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_worm.png",
		}
	},

	["buffalo"] = {
		label = "Buffalo",
		weight = 500,
		stack = false,
		close = true,
		description = "Buffalo",
		client = {
			image = "animal_buffalo.png",
		}
	},

	["good_fox_pelt"] = {
		label = "Redfox Pelt",
		weight = 100,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["panther"] = {
		label = "Panther",
		weight = 500,
		stack = false,
		close = true,
		description = "Panther",
		client = {
			image = "animal_panther.png",
		}
	},

	["canteen90"] = {
		label = "Canteen",
		weight = 400,
		stack = false,
		close = true,
		description = "Canteen 90% Full",
		client = {
			image = "canteen90.png",
		}
	},

	["legendary_bighorn_ram_pelt"] = {
		label = "Leg Bighorn Ram Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Perfect (* * *)",
		client = {
			image = "pelt_legendary.png",
		}
	},

	["p_finishedragonfly01x"] = {
		label = "Dragonfly Lure",
		weight = 10,
		stack = true,
		close = true,
		description = "used for fishing",
		client = {
			image = "upgrade_fsh_bait_leg_lure_river.png",
		}
	},

	["a_c_fishperch_01_ms"] = {
		label = "Perch (M)",
		weight = 600,
		stack = false,
		close = true,
		description = "used for fishing",
		client = {
			image = "provision_fish_perch.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "bottle of Whiskey",
		client = {
			image = "whiskey.png",
		}
	},

	["horn_buckantler"] = {
		label = "Buck Antlers",
		weight = 100,
		stack = true,
		close = true,
		description = "Horn.",
		client = {
			image = "horn_buckantler.png",
		}
	},

	["cornseed"] = {
		label = "Corn Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "cornseeds.png",
		}
	},

	["good_deer_pelt"] = {
		label = "Deer Pelt",
		weight = 500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["twig"] = {
		label = "Ranting",
		weight = 100,
		stack = true,
		close = true,
		description = "crafting material",
		client = {
			image = "twig.png",
		}
	},

	["beak_chickenf"] = {
		label = "Chicken beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Chicken beak.",
		client = {
			image = "beak_chickenf.png",
		}
	},

	["good_moose_pelt"] = {
		label = "Moose Pelt",
		weight = 1500,
		stack = true,
		close = true,
		description = "Good (* *)",
		client = {
			image = "pelt_good.png",
		}
	},

	["raw_fish"] = {
		label = "Fish Meat",
		weight = 50,
		stack = true,
		close = true,
		description = "ready for cooking",
		client = {
			image = "raw_fish.png",
		}
	},

	["beak_egretf"] = {
		label = "Snowy Egret beak",
		weight = 100,
		stack = true,
		close = true,
		description = "Hawk beak for swift hunting.",
		client = {
			image = "beak_egretf.png",
		}
	},

	["chicken"] = {
		label = "Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "ranch",
		client = {
			image = "chicken.png",
		}
	},

	["pocketwatch5"] = {
		label = "P_W Reutlinge",
		weight = 125,
		stack = false,
		close = true,
		description = "Pocket Watch Reutlinge",
		client = {
			image = "pocket_watch_reutlinge.png",
		}
	},

	["hopsseed"] = {
		label = "Hop Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "hopsseed.png",
		}
	},

	["fullbucket"] = {
		label = "Full Bucket",
		weight = 500,
		stack = true,
		close = true,
		description = "full water bucket",
		client = {
			image = "fullbucket.png",
		}
	},

	["tomato_sauce"] = {
		label = "Tomato Sauce",
		weight = 0,
		stack = true,
		close = true,
		description = "Product Farming",
		client = {
			image = "tomato_sauce.png",
		}
	},

	["artichokeseed"] = {
		label = "Artichoke Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "artichokeseeds.png",
		}
	},

	["bodyguard"] = {
		label = "bodyguard",
		weight = 0,
		stack = false,
		close = true,
		description = "bodyguard",
		client = {
			image = "bodyguard.png",
		}
	},

	["rotten_material"] = {
		label = "Potato",
		weight = 100,
		stack = true,
		close = true,
		description = "product farming material rotten",
		client = {
			image = "rotten_material.png",
		}
	},

	["artichoke"] = {
		label = "Artichoke",
		weight = 100,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "artichoke.png",
		}
	},

	["paddyseed"] = {
		label = "Paddy Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "used in farming",
		client = {
			image = "paddyseed.png",
		}
	},

	["paddy"] = {
		label = "Paddy",
		weight = 0,
		stack = true,
		close = true,
		description = "product from farming",
		client = {
			image = "paddy.png",
		}
	},
}