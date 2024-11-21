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

	["pnapollitano"] = {
		label = "Napollitano Pizza",
		weight = 1000,
		stack = true,
		close = true,
		description = "Napollitano Pizza",
		client = {
			image = "pnapollitano.png",
		}
	},

	["meth_sacid"] = {
		label = "Sodium Benzoate Canister",
		weight = 5000,
		stack = true,
		close = false,
		description = "Warning! Dangerous Chemicals!",
		client = {
			image = "meth_sacid.png",
		}
	},

	["coke_access"] = {
		label = "Access card",
		weight = 50,
		stack = true,
		close = false,
		description = "Access Card for Coke Lab",
		client = {
			image = "coke_access.png",
		}
	},

	["underglow_controller"] = {
		label = "Neon Controller",
		weight = 0,
		stack = true,
		close = true,
		description = "RGB LED Vehicle Remote",
		client = {
			image = "underglow_controller.png",
		}
	},

	["akoudaibento"] = {
		label = "Akou-Dai Bento",
		weight = 350,
		stack = true,
		close = true,
		description = "Akou-dai bento box..",
		client = {
			image = "akoudaibento.png",
		}
	},

	["pcoldbrewlatte"] = {
		label = "Cold Brew Latte",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cold Brew Latte",
		client = {
			image = "pcoldbrewlatte.png",
		}
	},

	["radio_alarm"] = {
		label = "Radio",
		weight = 30,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "radio_alarm.png",
		}
	},

	["engine3"] = {
		label = "Tier 3 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine3.png",
		}
	},

	["casino_coke"] = {
		label = "Casino Kofola",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Kofola",
		client = {
			image = "casino_coke.png",
		}
	},

	["pcocacola"] = {
		label = "Coca Cola",
		weight = 1000,
		stack = true,
		close = true,
		description = "Coca Cola",
		client = {
			image = "pcocacola.png",
		}
	},

	["pearl2"] = {
		label = "Bronze pearl",
		weight = 0,
		stack = true,
		close = false,
		description = "Bronze pearl",
		client = {
			image = "pearl2.png",
		}
	},

	["casino_luckypotion"] = {
		label = "Casino Lucky Potion",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Lucky Potion",
		client = {
			image = "casino_luckypotion.png",
		}
	},

	["lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "lighter.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet",
		client = {
			image = "tablet.png",
		}
	},

	["weaponlicense"] = {
		label = "Weapon License",
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},

	["ppinkwine"] = {
		label = "Pink Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pink Wine",
		client = {
			image = "ppinkwine.png",
		}
	},

	["bluediamond"] = {
		label = "Blue diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "Blue diamond",
		client = {
			image = "bluediamond.png",
		}
	},

	["coffemachine"] = {
		label = "Coffe machine",
		weight = 55,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "coffemachine.png",
		}
	},

	["bass"] = {
		label = "Bass",
		weight = 1250,
		stack = true,
		close = false,
		description = "A normal fish Tatses pretty good!",
		client = {
			image = "bass.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "binoculars.png",
		}
	},

	["blue_usb"] = {
		label = "Master Key (100%)",
		weight = 1000,
		stack = false,
		close = true,
		description = "Master Key to access encrypted data.",
		client = {
			image = "var_usb.png",
		}
	},

	["horn"] = {
		label = "Custom Vehicle Horn",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "horn.png",
		}
	},

	["scissors"] = {
		label = "Scissors",
		weight = 40,
		stack = true,
		close = false,
		description = "To help you with collecting",
		client = {
			image = "scissors.png",
		}
	},

	["cokebaggy"] = {
		label = "Bag of Coke",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["coke_raw"] = {
		label = "Raw Coke",
		weight = 50,
		stack = true,
		close = true,
		description = "Coke with some dirty particles",
		client = {
			image = "coke_raw.png",
		}
	},

	["taco-favai"] = {
		label = "Beans",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "beans.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["var_helmet"] = {
		label = "VAR Helmet",
		weight = 1000,
		stack = false,
		close = true,
		description = "VAR Helmet",
		client = {
			image = "var_helmet.png",
		}
	},

	["noscan"] = {
		label = "Empty NOS Bottle",
		weight = 0,
		stack = true,
		close = true,
		description = "An Empty bottle of NOS",
		client = {
			image = "noscan.png",
		}
	},

	["fishinghook"] = {
		label = "Fishing hook",
		weight = 0,
		stack = true,
		close = true,
		description = "Fishing hook",
		client = {
			image = "fishinghook.png",
		}
	},

	["taco-quesadilla"] = {
		label = "Quesadilla",
		weight = 350,
		stack = true,
		close = true,
		description = "Quesadilla!",
		client = {
			image = "quesadilla.png",
		}
	},

	["pancakes"] = {
		label = "Pancakes",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pancakes.png",
		}
	},

	["meth"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "A baggie of Meth",
		client = {
			image = "meth_baggy.png",
		}
	},

	["a4shemptydocumentseets"] = {
		label = "A4Sheets Pack",
		weight = 2000,
		stack = true,
		close = true,
		description = "These are blank documents which you can use to fill them out.",
		client = {
			image = "a4sheets.png",
		}
	},

	["carbonatedwater"] = {
		label = "Carbonated Water",
		weight = 150,
		stack = true,
		close = false,
		description = "Carbonated water.",
		client = {
			image = "carbonatedwater.png",
		}
	},

	["ajibento"] = {
		label = "Aji Bento",
		weight = 350,
		stack = true,
		close = true,
		description = "Aji bento box..",
		client = {
			image = "ajibento.png",
		}
	},

	["donut"] = {
		label = "Donut",
		weight = 100,
		stack = true,
		close = true,
		description = "Donut",
		client = {
			image = "donut.png",
		}
	},

	["bobacup"] = {
		label = "Boba Tea Cup",
		weight = 100,
		stack = true,
		close = false,
		description = "A empty boba tea cup.",
		client = {
			image = "bobacup.png",
		}
	},

	["hood"] = {
		label = "Vehicle Hood",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "hood.png",
		}
	},

	["sharkhammer"] = {
		label = "Shark",
		weight = 5000,
		stack = true,
		close = false,
		description = "Hammerhead Shark",
		client = {
			image = "sharkhammer.png",
		}
	},

	["cup_coffee"] = {
		label = "Cup of Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "A cup of coffee.",
		client = {
			image = "cup_coffee.png",
		}
	},

	["akoudaisashimi"] = {
		label = "Akou-dai Sashimi",
		weight = 320,
		stack = true,
		close = true,
		description = "Akou-dai sashimi..",
		client = {
			image = "akoudaisashimi.png",
		}
	},

	["cup_greentea"] = {
		label = "Cup of Green Tea",
		weight = 200,
		stack = true,
		close = true,
		description = "A cup of green tea.",
		client = {
			image = "cup_greentea.png",
		}
	},

	["strawberry"] = {
		label = "Strawberry",
		weight = 150,
		stack = true,
		close = false,
		description = "The sweetest of strawbs!",
		client = {
			image = "strawberry.png",
		}
	},

	["pparmesancheese"] = {
		label = "Parmesan Cheese",
		weight = 1000,
		stack = true,
		close = true,
		description = "Parmesan Cheese",
		client = {
			image = "pparmesancheese.png",
		}
	},

	["beeframen"] = {
		label = "Beef Ramen",
		weight = 350,
		stack = true,
		close = true,
		description = "Beef ramen bowl..",
		client = {
			image = "beeframen.png",
		}
	},

	["glass_lemonade"] = {
		label = "Glass of Lemonade",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of lemonade!",
		client = {
			image = "glass_lemonade.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "whiskey.png",
		}
	},

	["hackingdrive"] = {
		label = "Hacking drive",
		weight = 0,
		stack = false,
		close = true,
		description = "Hacking drive",
		client = {
			image = "hackingdrive.png",
		}
	},

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["xanaxpack"] = {
		label = "Xanax Pack",
		weight = 130,
		stack = true,
		close = true,
		description = "Explore a new universe!",
		client = {
			image = "xanaxpack.png",
		}
	},

	["porange"] = {
		label = "Orange",
		weight = 1000,
		stack = true,
		close = true,
		description = "Orange",
		client = {
			image = "porange.png",
		}
	},

	["car_armor"] = {
		label = "Vehicle Armor",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "armour.png",
		}
	},

	["drifttires"] = {
		label = "Drift Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drifttires.png",
		}
	},

	["pgaryfarrel"] = {
		label = "Gary Garrel Red Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Gary Farrel Red Wine",
		client = {
			image = "pgaryfarrel.png",
		}
	},

	["note"] = {
		label = "Note",
		weight = 0,
		stack = false,
		close = true,
		description = "Note",
		client = {
			image = "note.png",
		}
	},

	["fries-potato"] = {
		label = "Potato",
		weight = 100,
		stack = true,
		close = false,
		description = "Hmm",
		client = {
			image = "fries-potato.png",
		}
	},

	["hornyshotdog"] = {
		label = "Hornys Hotdog",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm",
		client = {
			image = "hornyshotdog.png",
		}
	},

	["daimondbuckle"] = {
		label = "Daimond buckle",
		weight = 100,
		stack = true,
		close = false,
		description = "Daimond buckle",
		client = {
			image = "daimondbuckle.png",
		}
	},

	["casino_burger"] = {
		label = "Casino Burger",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Burger",
		client = {
			image = "casino_burger.png",
		}
	},

	["meat_pig"] = {
		label = "Pork Meat",
		weight = 750,
		stack = true,
		close = false,
		description = "Pig meat!",
		client = {
			image = "meat_pig.png",
		}
	},

	["espresso"] = {
		label = "Espresso",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "espresso.png",
		}
	},

	["ramuneblueberry"] = {
		label = "Ramune Blueberry",
		weight = 275,
		stack = true,
		close = true,
		description = "Ramune soda, blueberry flavoured.",
		client = {
			image = "ramuneblueberry.png",
		}
	},

	["coke_figurebroken"] = {
		label = "Pieces of Action Figure",
		weight = 100,
		stack = true,
		close = false,
		description = "You can throw this away or try to repair with glue",
		client = {
			image = "coke_figurebroken.png",
		}
	},

	["var_medkit"] = {
		label = "CPR Medical Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "VAR CPR Kit",
		client = {
			image = "firstaid.png",
		}
	},

	["cocacola"] = {
		label = "CocaCola",
		weight = 330,
		stack = true,
		close = true,
		description = "CocaCola, Taste The Feeling!",
		client = {
			image = "cocacola.png",
		}
	},

	["weed_bud"] = {
		label = "Weed Bud",
		weight = 40,
		stack = true,
		close = false,
		description = "Needs to be clean at the table",
		client = {
			image = "weed_bud.png",
		}
	},

	["french_toast_bacon"] = {
		label = "French sandwich bacon",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "french_toast_bacon.png",
		}
	},

	["mk2_blueprint"] = {
		label = "Mk2 blueprint",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mk2_blueprint.png",
		}
	},

	["katsubento"] = {
		label = "Katsu Chicken Bento",
		weight = 350,
		stack = true,
		close = true,
		description = "Katsu chicken bento box..",
		client = {
			image = "katsubento.png",
		}
	},

	["milk"] = {
		label = "Milk",
		weight = 200,
		stack = true,
		close = true,
		description = "Milk good enough to drink!",
		client = {
			image = "milk.png",
		}
	},

	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
		client = {
			image = "wine.png",
		}
	},

	["syphoningkit"] = {
		label = "Syphoning kit",
		weight = 1000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "syphoningkit.png",
		}
	},

	["trowel"] = {
		label = "Trowel",
		weight = 250,
		stack = true,
		close = false,
		description = "Perfect for your garden or for Coca plant",
		client = {
			image = "trowel.png",
		}
	},

	["ohyouramen"] = {
		label = "O-hyou Ramen",
		weight = 350,
		stack = true,
		close = true,
		description = "O-hyou ramen bowl..",
		client = {
			image = "ohyouramen.png",
		}
	},

	["casino_beer"] = {
		label = "Casino Beer",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Beer",
		client = {
			image = "casino_beer.png",
		}
	},

	["hacking_device"] = {
		label = "Software device",
		weight = 500,
		stack = false,
		close = true,
		description = "A multi purpose device",
		client = {
			image = "hacking_device.png",
		}
	},

	["weed_joint"] = {
		label = "Joint",
		weight = 50,
		stack = true,
		close = false,
		description = "Enjoy your weed!",
		client = {
			image = "weed_joint.png",
		}
	},

	["chickenramen"] = {
		label = "Chicken Ramen",
		weight = 350,
		stack = true,
		close = true,
		description = "Chicken ramen bowl..",
		client = {
			image = "chickenramen.png",
		}
	},

	["house_locator"] = {
		label = "House locator",
		weight = 55,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "house_locator.png",
		}
	},

	["mitadango"] = {
		label = "Mitarashi Dango",
		weight = 100,
		stack = true,
		close = true,
		description = "Mitarashi dango..",
		client = {
			image = "mitadango.png",
		}
	},

	["pbutter"] = {
		label = "Butter",
		weight = 1000,
		stack = true,
		close = true,
		description = "Butter",
		client = {
			image = "pbutter.png",
		}
	},

	["refined_rubber"] = {
		label = "Refined rubber",
		weight = 100,
		stack = true,
		close = false,
		description = "Refined rubber",
		client = {
			image = "refined_rubber.png",
		}
	},

	["uav"] = {
		label = "UAV System",
		weight = 500,
		stack = true,
		close = true,
		description = "Enemy detection",
		client = {
			image = "uav.png",
		}
	},

	["moneyspray"] = {
		label = "Spray",
		weight = 100,
		stack = true,
		close = false,
		description = "Spray",
		client = {
			image = "moneyspray.png",
		}
	},

	["bluebbobatea"] = {
		label = "Blueberry Boba Tea",
		weight = 200,
		stack = true,
		close = true,
		description = "Blueberry Boba tea..",
		client = {
			image = "bluebbobatea.png",
		}
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "labkey.png",
		}
	},

	["shampoo"] = {
		label = "Shampoo",
		weight = 25,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "shampoo.png",
		}
	},

	["oyster"] = {
		label = "Oyster",
		weight = 0,
		stack = true,
		close = false,
		description = "Oyster",
		client = {
			image = "oyster.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["guchisushi"] = {
		label = "Ishimochi Guchi Sushi",
		weight = 320,
		stack = true,
		close = true,
		description = "Ishimochi guchi sushi..",
		client = {
			image = "guchisushi.png",
		}
	},

	["hornysburger"] = {
		label = "Hornys Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm",
		client = {
			image = "hornysburger.png",
		}
	},

	["newoil"] = {
		label = "Car Oil",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "caroil.png",
		}
	},

	["weap_bench"] = {
		label = "craft bench",
		weight = 1000,
		stack = true,
		close = true,
		description = "Vegi Slice",
		client = {
			image = "pure_bench.png",
		}
	},

	["bumper"] = {
		label = "Vehicle Bumper",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bumper.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["casino_sandwitch"] = {
		label = "Casino Sandwitch",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Sandwitch",
		client = {
			image = "casino_sandwitch.png",
		}
	},

	["pwhiskyglass"] = {
		label = "Whiskey Glass",
		weight = 1000,
		stack = true,
		close = true,
		description = "Whiskey Glass",
		client = {
			image = "pwhiskyglass.png",
		}
	},

	["tapiocapearls"] = {
		label = "Tapioca Pearls",
		weight = 10,
		stack = true,
		close = false,
		description = "What the heck are tapioca pearls..",
		client = {
			image = "tapiocapearls.png",
		}
	},

	["clown"] = {
		label = "Clown",
		weight = 0,
		stack = true,
		close = false,
		description = "Clown",
		client = {
			image = "clown.png",
		}
	},

	["ppizzaflour"] = {
		label = "Pizza Flour",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Flour",
		client = {
			image = "ppizzaflour.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["book"] = {
		label = "Book",
		weight = 25,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "book.png",
		}
	},

	["crack_pipe"] = {
		label = "Crack Pipe",
		weight = 550,
		stack = true,
		close = false,
		description = "Enjoy your Crack!",
		client = {
			image = "crack_pipe.png",
		}
	},

	["monitor"] = {
		label = "Monitor",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "monitor.png",
		}
	},

	["ecstasy2"] = {
		label = "Ectasy",
		weight = 10,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "ecstasy2.png",
		}
	},

	["orange"] = {
		label = "Orange",
		weight = 150,
		stack = true,
		close = false,
		description = "What rhymes with orange?",
		client = {
			image = "orange.png",
		}
	},

	["pdusche"] = {
		label = "Dusche Beer",
		weight = 1000,
		stack = true,
		close = true,
		description = "Dusche Beer",
		client = {
			image = "pdusche.png",
		}
	},

	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},

	["pmacncheese"] = {
		label = "Mac N Cheese",
		weight = 1000,
		stack = true,
		close = true,
		description = "Mac N Cheese",
		client = {
			image = "pmacncheese.png",
		}
	},

	["pcoffeeglass"] = {
		label = "Coffee Glass",
		weight = 1000,
		stack = true,
		close = true,
		description = "Empty Coffee Glass",
		client = {
			image = "pcoffeeglass.png",
		}
	},

	["scratch_ticket"] = {
		label = "Scratch ticket",
		weight = 0,
		stack = true,
		close = true,
		description = "Scratch ticket",
		client = {
			image = "scratch_ticket.png",
		}
	},

	["visa"] = {
		label = "Visa Card",
		weight = 0,
		stack = false,
		close = false,
		description = "Visa can be used via ATM",
		client = {
			image = "visacard.png",
		}
	},

	["ramunepapple"] = {
		label = "Ramune Pineapple",
		weight = 275,
		stack = true,
		close = true,
		description = "Ramune soda, pineapple flavoured.",
		client = {
			image = "ramunepapple.png",
		}
	},

	["grilledbeef"] = {
		label = "Grilled Beef",
		weight = 100,
		stack = true,
		close = false,
		description = "Hmm",
		client = {
			image = "grilledbeef.png",
		}
	},

	["predwinebottle"] = {
		label = " Regular Red Wine Bottle",
		weight = 1000,
		stack = true,
		close = true,
		description = "Regular Red Wine",
		client = {
			image = "predwinebottle.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["meth_sharp"] = {
		label = "Tray with smashed meth",
		weight = 1000,
		stack = true,
		close = false,
		description = "Can be packed",
		client = {
			image = "meth_sharp.png",
		}
	},

	["taco-beef"] = {
		label = "Beef Taco",
		weight = 350,
		stack = true,
		close = true,
		description = "Beef Taco!",
		client = {
			image = "beef-taco.png",
		}
	},

	["badge"] = {
		label = "Badge",
		weight = 100,
		stack = true,
		close = true,
		description = "Badge",
		client = {
			image = "badge.png",
		}
	},

	["ppinkwinebottle"] = {
		label = "Pink Wine Bottle",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pink Wine Bottle",
		client = {
			image = "ppinkwinebottle.png",
		}
	},

	["atmblue"] = {
		label = "Blue Atm",
		weight = 2000,
		stack = false,
		close = true,
		description = "A console of an ATM",
		client = {
			image = "atmblue.png",
		}
	},

	["burger_bread"] = {
		label = "Burger Bread",
		weight = 100,
		stack = true,
		close = false,
		description = "Hmm",
		client = {
			image = "burger_bread.png",
		}
	},

	["ducttape"] = {
		label = "Duct Tape",
		weight = 0,
		stack = false,
		close = true,
		description = "Good for quick fixes",
		client = {
			image = "bodyrepair.png",
		}
	},

	["versaceboxers"] = {
		label = "Versace boxers",
		weight = 0,
		stack = true,
		close = false,
		description = "Versace boxers",
		client = {
			image = "versaceboxers.png",
		}
	},

	["glass_mountaindew"] = {
		label = "Glass of Mountain Dew",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of mountain dew!",
		client = {
			image = "glass_mountaindew.png",
		}
	},

	["pregularpasta"] = {
		label = "Regular Pasta",
		weight = 1000,
		stack = true,
		close = true,
		description = "Regular Pasta",
		client = {
			image = "pregularpasta.png",
		}
	},

	["taco-asada"] = {
		label = "Taco Asada",
		weight = 350,
		stack = true,
		close = true,
		description = "Taco Asada..",
		client = {
			image = "taco-asada.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["customplate"] = {
		label = "Customized Plates",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "plate.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["coke_box"] = {
		label = "Box with Coke",
		weight = 2000,
		stack = true,
		close = false,
		description = "Be careful not to spill it on the ground",
		client = {
			image = "coke_box.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["fakemoneybag"] = {
		label = "Fake Money",
		weight = 5000,
		stack = false,
		close = false,
		description = "Fake Money",
		client = {
			image = "fakemoneybag.png",
		}
	},

	["lsd5"] = {
		label = "LSD",
		weight = 10,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "lsd5.png",
		}
	},

	["clean_glass"] = {
		label = "Clean Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A clean glass!",
		client = {
			image = "clean_glass.png",
		}
	},

	["meth_pipe"] = {
		label = "Meth Pipe",
		weight = 880,
		stack = true,
		close = false,
		description = "Enjoy your new crystal clear stuff!",
		client = {
			image = "meth_pipe.png",
		}
	},

	["pwhiskey"] = {
		label = "Whiskey",
		weight = 1000,
		stack = true,
		close = true,
		description = "Whiskey",
		client = {
			image = "pwhiskey.png",
		}
	},

	["purebeef"] = {
		label = "Beef",
		weight = 100,
		stack = true,
		close = false,
		description = "Hmm",
		client = {
			image = "purebeef.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["ptomatoes"] = {
		label = "Fresh Tomatoes",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fresh Tomatoes",
		client = {
			image = "ptomatoes.png",
		}
	},

	["fishinglootbig"] = {
		label = "Treasure Chest",
		weight = 500,
		stack = false,
		close = true,
		description = "The lock seems to be intact, Might need a key",
		client = {
			image = "fishinglootbig.png",
		}
	},

	["treasuroldwatch"] = {
		label = "Treasur oldwatch",
		weight = 0,
		stack = true,
		close = false,
		description = "Treasur oldwatch",
		client = {
			image = "treasuroldwatch.png",
		}
	},

	["pwhiskeybottle"] = {
		label = "Whiskey Bottle",
		weight = 1000,
		stack = true,
		close = true,
		description = "Whiskey Bottle",
		client = {
			image = "pwhiskeybottle.png",
		}
	},

	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster",
		client = {
			image = "crack_baggy.png",
		}
	},

	["skirts"] = {
		label = "Vehicle Skirts",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "skirts.png",
		}
	},

	["mountaindew"] = {
		label = "Mountain Dew",
		weight = 330,
		stack = true,
		close = true,
		description = "Do the DEW!",
		client = {
			image = "mountaindew.png",
		}
	},

	["weed_wrap"] = {
		label = "Blunt Wraps",
		weight = 75,
		stack = true,
		close = false,
		description = "Get Weed Bag and roll blunt!",
		client = {
			image = "weed_wrap.png",
		}
	},

	["meth_emptysacid"] = {
		label = "Empty Canister",
		weight = 2000,
		stack = true,
		close = false,
		description = "Material: Plastic, Good for Sodium Benzoate",
		client = {
			image = "meth_emptysacid.png",
		}
	},

	["tomato"] = {
		label = "Tomato",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tomato.png",
		}
	},

	["taiyakipan"] = {
		label = "Taiyaki Pan",
		weight = 250,
		stack = true,
		close = false,
		description = "A taiyaki frying pan.",
		client = {
			image = "taiyakipan.png",
		}
	},

	["pbbqsouce"] = {
		label = "BBQ Souce",
		weight = 1000,
		stack = true,
		close = true,
		description = "BBQ Souce",
		client = {
			image = "pbbqsouce.png",
		}
	},

	["adzukibeans"] = {
		label = "Adzuki Beans",
		weight = 10,
		stack = true,
		close = false,
		description = "Adzuki Beans..",
		client = {
			image = "adzukibeans.png",
		}
	},

	["weaponrepairkit"] = {
		label = "Weapon Repair kit",
		weight = 2000,
		stack = false,
		close = true,
		description = "A repair kit for your weapon. Not meant for permanent repairs.",
		client = {
			image = "weaponrepairkit.png",
		}
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},

	["chair63"] = {
		label = "Blue Chair",
		weight = 0,
		stack = true,
		close = true,
		description = "Blue Chair",
		client = {
			image = "chair63.png",
		}
	},

	["panini-sandwich"] = {
		label = "Panini sandwich",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "panini-sandwich.png",
		}
	},

	["matchabobatea"] = {
		label = "Matcha Boba Tea",
		weight = 200,
		stack = true,
		close = true,
		description = "Matcha Boba tea..",
		client = {
			image = "matchabobatea.png",
		}
	},

	["ppizzabase"] = {
		label = "Pizza Base",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Base",
		client = {
			image = "ppizzabase.png",
		}
	},

	["blacktealeaf"] = {
		label = "Black Tea Leaf",
		weight = 100,
		stack = true,
		close = false,
		description = "Cup of tea guvernor..",
		client = {
			image = "blacktealeaf.png",
		}
	},

	["romantic_book"] = {
		label = "Romantic book",
		weight = 25,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "romantic_book.png",
		}
	},

	["bobateasyrup"] = {
		label = "Boba Tea Syrup",
		weight = 100,
		stack = true,
		close = false,
		description = "Syrupy goodness..",
		client = {
			image = "bobateasyrup.png",
		}
	},

	["fishingrod"] = {
		label = "Fishing Rod",
		weight = 750,
		stack = true,
		close = true,
		description = "A fishing rod for adventures with friends!!",
		client = {
			image = "fishingrod.png",
		}
	},

	["baking_soda"] = {
		label = "Baking Soda",
		weight = 30,
		stack = true,
		close = false,
		description = "Baking Bad!",
		client = {
			image = "baking_soda.png",
		}
	},

	["weed_white-widow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["methtable"] = {
		label = "methtable",
		weight = 1000,
		stack = true,
		close = true,
		description = "Vegi Slice",
		client = {
			image = "methtable.png",
		}
	},

	["atmgreen"] = {
		label = "Green Atm",
		weight = 2000,
		stack = false,
		close = true,
		description = "A console of an ATM",
		client = {
			image = "atmgreen.png",
		}
	},

	["dirty_glass"] = {
		label = "Dirty Glass",
		weight = 50,
		stack = true,
		close = false,
		description = "A dirty glass!",
		client = {
			image = "dirty_glass.png",
		}
	},

	["chair101"] = {
		label = "Gray Chair",
		weight = 0,
		stack = true,
		close = true,
		description = "Grey Chair",
		client = {
			image = "chair101.png",
		}
	},

	["snsmk_blueprint"] = {
		label = "Sns mk Blueprint",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "snsmk_blueprint.png",
		}
	},

	["pmilk"] = {
		label = "Milk",
		weight = 1000,
		stack = true,
		close = true,
		description = "Milk",
		client = {
			image = "pmilk.png",
		}
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["openoyster"] = {
		label = "Opened oyster",
		weight = 0,
		stack = true,
		close = true,
		description = "Opened oyster",
		client = {
			image = "openoyster.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Empty Evidence Bag",
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence.png",
		}
	},

	["10kgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["headlights"] = {
		label = "Xenon Headlights",
		weight = 0,
		stack = false,
		close = true,
		description = "8k HID headlights",
		client = {
			image = "headlights.png",
		}
	},

	["sodiumbicarbonate"] = {
		label = "Baking Soda",
		weight = 1000,
		stack = true,
		close = false,
		description = "Baking soda ey? What you cooking?",
		client = {
			image = "sodiumbicarbonate.png",
		}
	},

	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "cryptostick.png",
		}
	},

	["taco-ice"] = {
		label = "Ice",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "ice.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["sharktiger"] = {
		label = "Shark",
		weight = 5000,
		stack = true,
		close = false,
		description = "Tigershark",
		client = {
			image = "sharktiger.png",
		}
	},

	["jerrycan01"] = {
		label = "FuelCan",
		weight = 1000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "jerrycan01.png",
		}
	},

	["transmission3"] = {
		label = "Tier 3 Transmission",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission3.png",
		}
	},

	["brakes1"] = {
		label = "Tier 1 Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes1.png",
		}
	},

	["dolphin"] = {
		label = "Dolphin",
		weight = 5000,
		stack = true,
		close = false,
		description = "Dolphin",
		client = {
			image = "dolphin.png",
		}
	},

	["pvegpizza"] = {
		label = "Vegetarian Pizza",
		weight = 1000,
		stack = true,
		close = true,
		description = "Vegetarian Pizza",
		client = {
			image = "pvegpizza.png",
		}
	},

	["daimondnick2"] = {
		label = "Diamond Nick",
		weight = 500,
		stack = true,
		close = false,
		description = "Diamond Nick",
		client = {
			image = "daimondnick2.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},

	["engine2"] = {
		label = "Tier 2 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine2.png",
		}
	},

	["perch"] = {
		label = "Perch",
		weight = 520,
		stack = true,
		close = false,
		description = "California Perch, mostly prey for bigger fish!",
		client = {
			image = "perch.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Advanced Repairkit",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},

	["croaker"] = {
		label = "Croaker",
		weight = 500,
		stack = true,
		close = false,
		description = "Yellowfin Croaker, mostly prey for bigger fish!",
		client = {
			image = "croaker.png",
		}
	},

	["prum"] = {
		label = "Rum",
		weight = 1000,
		stack = true,
		close = true,
		description = "Rum",
		client = {
			image = "prum.png",
		}
	},

	["blueprintbag"] = {
		label = "Black Bag",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "blueprintbag.png",
		}
	},

	["hornysdrink"] = {
		label = "Hornys drink",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm",
		client = {
			image = "hornysdrink.png",
		}
	},

	["pepperonipizza"] = {
		label = "Pepperoni pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "Pepperoni pizza",
		client = {
			image = "pepperonipizza.png",
		}
	},

	["pcaramelfrappucino"] = {
		label = "Caramel Frappucino",
		weight = 1000,
		stack = true,
		close = true,
		description = "Caramel Frappucino",
		client = {
			image = "pcaramelfrappucino.png",
		}
	},

	["paperbox"] = {
		label = "Paperbox",
		weight = 0,
		stack = false,
		close = true,
		description = "Paperbox",
		client = {
			image = "paperbox.png",
		}
	},

	["predwine"] = {
		label = "Red Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Red Wine",
		client = {
			image = "predwine.png",
		}
	},

	["glass_drpepper"] = {
		label = "Glass of Dr Pepper",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of dr pepper!",
		client = {
			image = "glass_drpepper.png",
		}
	},

	["noscolour"] = {
		label = "NOS Colour Injector",
		weight = 0,
		stack = true,
		close = true,
		description = "Make that purge spray",
		client = {
			image = "noscolour.png",
		}
	},

	["refined_glass"] = {
		label = "Refined glass",
		weight = 100,
		stack = true,
		close = false,
		description = "Refined glass",
		client = {
			image = "refined_glass.png",
		}
	},

	["seat"] = {
		label = "Seat Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "seat.png",
		}
	},

	["hack_laptop"] = {
		label = "Hacking Laptop",
		weight = 20,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "hack_laptop.png",
		}
	},

	["console"] = {
		label = "Console",
		weight = 85,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "console.png",
		}
	},

	["laserdrill"] = {
		label = "Laser Drill",
		weight = 1000,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "laserdrill.png",
		}
	},

	["lsd3"] = {
		label = "LSD",
		weight = 10,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "lsd3.png",
		}
	},

	["arcadeplush09"] = {
		label = "Master Plushie",
		weight = 350,
		stack = true,
		close = true,
		description = "Collectible Plushie 9; Master Hentai",
		client = {
			image = "arcadeplush09.png",
		}
	},

	["engine1"] = {
		label = "Tier 1 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine1.png",
		}
	},

	["taco"] = {
		label = "Taco",
		weight = 350,
		stack = true,
		close = true,
		description = "Taco..",
		client = {
			image = "taco.png",
		}
	},

	["pcheddarcheese"] = {
		label = "Cheddar Cheese",
		weight = 1000,
		stack = true,
		close = true,
		description = "Cheddar Cheese",
		client = {
			image = "pcheddarcheese.png",
		}
	},

	["mackerel"] = {
		label = "Mackerel",
		weight = 320,
		stack = true,
		close = false,
		description = "Pacfic Mackerel, a small but tasty fish!",
		client = {
			image = "mackerel.png",
		}
	},

	["toolbox"] = {
		label = "Toolbox",
		weight = 0,
		stack = false,
		close = true,
		description = "Needed for Performance part removal",
		client = {
			image = "toolbox.png",
		}
	},

	["clean_bentobox"] = {
		label = "Clean Bento Box",
		weight = 250,
		stack = true,
		close = false,
		description = "A clean bento box.",
		client = {
			image = "clean_bentobox.png",
		}
	},

	["laptop"] = {
		label = "Laptop",
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop",
		client = {
			image = "laptop.png",
		}
	},

	["casino_chips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Chips",
		client = {
			image = "casino_chips.png",
		}
	},

	["blaptop"] = {
		label = "Laptop",
		weight = 0,
		stack = false,
		close = true,
		description = "Laptop",
		client = {
			image = "blaptop.png",
		}
	},

	["bacon"] = {
		label = "Bacon",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bacon.png",
		}
	},

	["chair97"] = {
		label = "Shitty Chair",
		weight = 0,
		stack = true,
		close = true,
		description = "Shitty Chair",
		client = {
			image = "chair97.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["meat_cow"] = {
		label = "Beef Meat",
		weight = 1000,
		stack = true,
		close = false,
		description = "Cow meat!",
		client = {
			image = "meat_cow.png",
		}
	},

	["carbonated-water"] = {
		label = "Oil",
		weight = 125,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "carbonated-water.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},

	["pdough"] = {
		label = "Ready Pizza Dough",
		weight = 1000,
		stack = true,
		close = true,
		description = "Ready Pizza Dough",
		client = {
			image = "pdough.png",
		}
	},

	["fishingboot"] = {
		label = "Fishing Boot",
		weight = 2500,
		stack = true,
		close = false,
		description = "Fishing Boot",
		client = {
			image = "fishingboot.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},

	["gold_watch"] = {
		label = "Gold watch",
		weight = 55,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_watch.png",
		}
	},

	["glass_cocacola"] = {
		label = "Glass of CocaCola",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of cocacola!",
		client = {
			image = "glass_cocacola.png",
		}
	},

	["pbeermug"] = {
		label = "Beer Empty Mug",
		weight = 1000,
		stack = true,
		close = true,
		description = "Beer Empty Mug",
		client = {
			image = "pbeermug.png",
		}
	},

	["ecstasy3"] = {
		label = "Ectasy",
		weight = 10,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "ecstasy3.png",
		}
	},

	["atmpanel"] = {
		label = "Atm Panel",
		weight = 5000,
		stack = false,
		close = true,
		description = "A back panel for an ATM",
		client = {
			image = "atmpanel.png",
		}
	},

	["web_proxy"] = {
		label = "Web Proxy",
		weight = 0,
		stack = true,
		close = true,
		description = "Web Proxy",
		client = {
			image = "web_proxy.png",
		}
	},

	["wedding-ring"] = {
		label = "Wedding ring",
		weight = 100,
		stack = true,
		close = false,
		description = "Wedding ring",
		client = {
			image = "wedding-ring.png",
		}
	},

	["xphone"] = {
		label = "xphone",
		weight = 0,
		stack = false,
		close = true,
		description = "Needed for vehicle repairs",
		client = {
			image = "hackingtool.png",
		}
	},

	["dirty_bowl"] = {
		label = "Dirty Bowl",
		weight = 50,
		stack = true,
		close = false,
		description = "A dirty bowl!",
		client = {
			image = "dirty_bowl.png",
		}
	},

	["oxy-box"] = {
		label = "Suspicious Package",
		weight = 1,
		stack = true,
		close = false,
		description = "What is in it?",
		client = {
			image = "oxy-box.png",
		}
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},

	["mizuyokan"] = {
		label = "Mizu Yokan",
		weight = 120,
		stack = true,
		close = true,
		description = "Mizu yokan..",
		client = {
			image = "mizuyokan.png",
		}
	},

	["pchampagne"] = {
		label = "Champagne Bottle",
		weight = 1000,
		stack = true,
		close = true,
		description = "Champagne Bottle",
		client = {
			image = "pchampagne.png",
		}
	},

	["daimondnick3"] = {
		label = "Diamond Nick",
		weight = 500,
		stack = true,
		close = false,
		description = "Diamond Nick",
		client = {
			image = "daimondnick3.png",
		}
	},

	["beefsashimi"] = {
		label = "Beef Sashimi",
		weight = 350,
		stack = true,
		close = true,
		description = "Beef sashimi..",
		client = {
			image = "beefsashimi.png",
		}
	},

	["poil"] = {
		label = "Oil",
		weight = 1000,
		stack = true,
		close = true,
		description = "Oil",
		client = {
			image = "poil.png",
		}
	},

	["syringe"] = {
		label = "Syringe",
		weight = 300,
		stack = true,
		close = false,
		description = "Enjoy your new crystal clear stuff!",
		client = {
			image = "syringe.png",
		}
	},

	["ramuneapple"] = {
		label = "Ramune Apple",
		weight = 275,
		stack = true,
		close = true,
		description = "Ramune soda, apple flavoured.",
		client = {
			image = "ramuneapple.png",
		}
	},

	["ecstasy1"] = {
		label = "Ectasy",
		weight = 10,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "ecstasy1.png",
		}
	},

	["soap"] = {
		label = "Soap",
		weight = 25,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "soap.png",
		}
	},

	["goldash"] = {
		label = "Gold ash",
		weight = 100,
		stack = true,
		close = false,
		description = "Gold ash 1 gram",
		client = {
			image = "goldash.png",
		}
	},

	["firstaid"] = {
		label = "First Aid",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
	},

	["coke_figureempty"] = {
		label = "Action Figure",
		weight = 150,
		stack = true,
		close = false,
		description = "Action Figure of the cartoon superhero Impotent Rage",
		client = {
			image = "coke_figureempty.png",
		}
	},

	["pcream"] = {
		label = "Whipped Cream",
		weight = 1000,
		stack = true,
		close = true,
		description = "Whipped Cream",
		client = {
			image = "pcream.png",
		}
	},

	["weed_blunt"] = {
		label = "Blunt",
		weight = 90,
		stack = true,
		close = false,
		description = "Enjoy your weed!",
		client = {
			image = "weed_blunt.png",
		}
	},

	["flounder"] = {
		label = "Flounder",
		weight = 2500,
		stack = true,
		close = false,
		description = "Flounder",
		client = {
			image = "flounder.png",
		}
	},

	["pseafoodslice"] = {
		label = "Seafood Slice",
		weight = 1000,
		stack = true,
		close = true,
		description = "Seafood Slice",
		client = {
			image = "ppizzaslice.png",
		}
	},

	["sunglasses"] = {
		label = "Sun glasses",
		weight = 100,
		stack = true,
		close = false,
		description = "Sun glasses",
		client = {
			image = "sunglasses.png",
		}
	},

	["woodplanks"] = {
		label = "Wood planks",
		weight = 100,
		stack = true,
		close = false,
		description = "Wood planks",
		client = {
			image = "woodplanks.png",
		}
	},

	["one-bill"] = {
		label = "Money",
		weight = 1,
		stack = true,
		close = false,
		description = "Hmm money?",
		client = {
			image = "one-bill.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["pespressocoffeecup"] = {
		label = "Espresso Coffee Cup",
		weight = 1000,
		stack = true,
		close = true,
		description = "Espresso Coffee Cup",
		client = {
			image = "pespressocoffeecup.png",
		}
	},

	["wnutela"] = {
		label = "Wnutela",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wnutela.png",
		}
	},

	["chashubento"] = {
		label = "Chashu Bento",
		weight = 350,
		stack = true,
		close = true,
		description = "Chashu pork bento box..",
		client = {
			image = "chashubento.png",
		}
	},

	["ichigobobatea"] = {
		label = "Ichigo Boba Tea",
		weight = 200,
		stack = true,
		close = true,
		description = "Ichigo Boba tea..",
		client = {
			image = "strawbbobatea.png",
		}
	},

	["pwhitewinebottle"] = {
		label = "White Wine Bottle",
		weight = 1000,
		stack = true,
		close = true,
		description = "White Wine Bottle",
		client = {
			image = "pwhitewinebottle.png",
		}
	},

	["50_blueprint"] = {
		label = "Pistol 50 blueprint",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "50_blueprint.png",
		}
	},

	["rice"] = {
		label = "Rice",
		weight = 100,
		stack = true,
		close = false,
		description = "Rice, rice, baby..",
		client = {
			image = "rice.png",
		}
	},

	["carbattery"] = {
		label = "Car Battery",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "carbattery.png",
		}
	},

	["losttreasure"] = {
		label = "Lost Treasure",
		weight = 100,
		stack = true,
		close = false,
		description = "Lost Treasure",
		client = {
			image = "losttreasure.png",
		}
	},

	["gold_bracelet"] = {
		label = "Gold bracelet",
		weight = 45,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "gold_bracelet.png",
		}
	},

	["ajiramen"] = {
		label = "Aji Ramen",
		weight = 350,
		stack = true,
		close = true,
		description = "Aji ramen bowl..",
		client = {
			image = "ajiramen.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},

	["camera"] = {
		label = "Camera",
		weight = 300,
		stack = false,
		close = true,
		description = "Camera",
		client = {
			image = "camera.png",
		}
	},

	["peyote"] = {
		label = "Peyote",
		weight = 30,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "peyote.png",
		}
	},

	["laptop-jewellery"] = {
		label = "Laptop",
		weight = 1500,
		stack = true,
		close = true,
		description = "..",
		client = {
			image = "laptopbbb.png",
		}
	},

	["arcadeplush05"] = {
		label = "Smokey Plushie",
		weight = 350,
		stack = true,
		close = true,
		description = "Collectible Plushie 5; Smokey",
		client = {
			image = "arcadeplush05.png",
		}
	},

	["var_usb4"] = {
		label = "Master Key (25%)",
		weight = 1000,
		stack = false,
		close = true,
		description = "Combine multiple USBs to create a master encryption key.",
		client = {
			image = "var_usb.png",
		}
	},

	["weed_budclean"] = {
		label = "Weed Bud",
		weight = 35,
		stack = true,
		close = false,
		description = "You can pack this at the table",
		client = {
			image = "weed_budclean.png",
		}
	},

	["pcastellobrolio"] = {
		label = "Castello Brolio Red Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Castello Brolio Red Wine",
		client = {
			image = "pcastellobrolio.png",
		}
	},

	["heroin"] = {
		label = "Heroin",
		weight = 30,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "heroin.png",
		}
	},

	["coffe-taco"] = {
		label = "iced Coffe",
		weight = 200,
		stack = true,
		close = true,
		description = "A cup of Iced Coffe.",
		client = {
			image = "dicedcoffe.png",
		}
	},

	["transmission2"] = {
		label = "Tier 2 Transmission",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission2.png",
		}
	},

	["smallgoldbar"] = {
		label = "Small gold bar",
		weight = 100,
		stack = true,
		close = false,
		description = "Small gold bar",
		client = {
			image = "smallgoldbar.png",
		}
	},

	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["pbanana"] = {
		label = "Banana",
		weight = 1000,
		stack = true,
		close = true,
		description = "Banana",
		client = {
			image = "pbanana.png",
		}
	},

	["pepsi"] = {
		label = "Pepsi",
		weight = 330,
		stack = true,
		close = true,
		description = "Every Pepsi Refreshes The World!",
		client = {
			image = "pepsi.png",
		}
	},

	["pfresca"] = {
		label = "Pasta Fresca",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pasta Fresca",
		client = {
			image = "pfresca.png",
		}
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	["meth_access"] = {
		label = "Access Card",
		weight = 50,
		stack = true,
		close = false,
		description = "Access Card for Meth Lab",
		client = {
			image = "meth_access.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["phonecredit"] = {
		label = "50$ Phone Credit",
		weight = 100,
		stack = true,
		close = true,
		description = "Recharge Your Phone Credit With 50$",
		client = {
			image = "phonecredit.png",
		}
	},

	["starterbag"] = {
		label = "Starter Bag",
		weight = 1,
		stack = false,
		close = true,
		description = "Pew Pew ;)",
		client = {
			image = "starterbag.png",
		}
	},

	["handcuffs"] = {
		label = "Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "handcuffs.png",
		}
	},

	["drill"] = {
		label = "Drill",
		weight = 20000,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "drill.png",
		}
	},

	["lemonbobatea"] = {
		label = "Lemon Boba Tea",
		weight = 200,
		stack = true,
		close = true,
		description = "Lemon Boba tea..",
		client = {
			image = "lemonbobatea.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["food-goods"] = {
		label = "Food goods",
		weight = 100,
		stack = true,
		close = true,
		description = "Food goods",
		client = {
			image = "food-goods.png",
		}
	},

	["pstrawberryvanillaoatlatte"] = {
		label = "Strawberry Vanilla Oat Latte",
		weight = 1000,
		stack = true,
		close = true,
		description = "Strawberry Vanilla Oat Latte",
		client = {
			image = "pstrawberryvanillaoatlatte.png",
		}
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_02.png",
		}
	},

	["margheritapizza"] = {
		label = "Margherita pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "Margherita pizza",
		client = {
			image = "margheritapizza.png",
		}
	},

	["var_usb1"] = {
		label = "Master Key (25%)",
		weight = 1000,
		stack = false,
		close = true,
		description = "Combine multiple USBs to create a master encryption key.",
		client = {
			image = "var_usb.png",
		}
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1000,
		stack = true,
		close = true,
		description = "A diamond seems like the jackpot to me!",
		client = {
			image = "diamond.png",
		}
	},

	["pseafoodmix"] = {
		label = "Seafood Mix",
		weight = 1000,
		stack = true,
		close = true,
		description = "Seafood Mix",
		client = {
			image = "pseafoodmix.png",
		}
	},

	["pbeermugfull"] = {
		label = "Beer Mug",
		weight = 1000,
		stack = true,
		close = true,
		description = "Beer Mug",
		client = {
			image = "pbeermugfull.png",
		}
	},

	["flour"] = {
		label = "Flour",
		weight = 100,
		stack = true,
		close = false,
		description = "The worlds second favorite white powder..",
		client = {
			image = "flour.png",
		}
	},

	["pbigdough"] = {
		label = "Pizza Dough",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Dough",
		client = {
			image = "pbigdough.png",
		}
	},

	["blueberry"] = {
		label = "Blueberry",
		weight = 150,
		stack = true,
		close = false,
		description = "All those antioxidants.. mmmmm..",
		client = {
			image = "blueberry.png",
		}
	},

	["spoiler"] = {
		label = "Vehicle Spoiler",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spoiler.png",
		}
	},

	["akoudaisushi"] = {
		label = "Akou-dai Sushi",
		weight = 320,
		stack = true,
		close = true,
		description = "Akou-Dai sushi..",
		client = {
			image = "akoudaisushi.png",
		}
	},

	["poppyplant"] = {
		label = "Poppy Plant",
		weight = 30,
		stack = true,
		close = false,
		description = "Very nice plant!",
		client = {
			image = "poppyplant.png",
		}
	},

	["vintag_blueprint"] = {
		label = "Vintag blueprint",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "vintag_blueprint.png",
		}
	},

	["nos"] = {
		label = "NOS Bottle",
		weight = 0,
		stack = false,
		close = true,
		description = "A full bottle of NOS",
		client = {
			image = "nos.png",
		}
	},

	["treasurefabergeegg"] = {
		label = "Treasure faberge egg",
		weight = 0,
		stack = true,
		close = false,
		description = "Treasure faberge egg",
		client = {
			image = "treasurefabergeegg.png",
		}
	},

	["turbo"] = {
		label = "Supercharger Turbo",
		weight = 0,
		stack = false,
		close = true,
		description = "Who doesn't need a 65mm Turbo??",
		client = {
			image = "turbo.png",
		}
	},

	["gps_jammer"] = {
		label = "Gps Jammer",
		weight = 0,
		stack = true,
		close = true,
		description = "Gps Jammer",
		client = {
			image = "gps_jammer.png",
		}
	},

	["dirty_bentobox"] = {
		label = "Dirty Bento Box",
		weight = 250,
		stack = true,
		close = false,
		description = "A dirty bento box.",
		client = {
			image = "dirty_bentobox.png",
		}
	},

	["pearl5"] = {
		label = "Colored pearl",
		weight = 0,
		stack = true,
		close = false,
		description = "Colored pearl",
		client = {
			image = "pearl5.png",
		}
	},

	["atomsdrink"] = {
		label = "Atoms Drink",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm",
		client = {
			image = "atomsdrink.png",
		}
	},

	["diamondred"] = {
		label = "Red diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "Red diamond",
		client = {
			image = "diamondred.png",
		}
	},

	["pwater"] = {
		label = "Water",
		weight = 1000,
		stack = true,
		close = true,
		description = "Water",
		client = {
			image = "pwater.png",
		}
	},

	["pearl3"] = {
		label = "Gold pearl",
		weight = 0,
		stack = true,
		close = false,
		description = "Gold pearl",
		client = {
			image = "pearl3.png",
		}
	},

	["dj_deck"] = {
		label = "DJ Deck",
		weight = 95,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "dj_deck.png",
		}
	},

	["bubbleteapink"] = {
		label = "Bubble teapink",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bubbleteapink.png",
		}
	},

	["coke_pure"] = {
		label = "Pure Coke",
		weight = 70,
		stack = true,
		close = true,
		description = "Coke without any dirty particles",
		client = {
			image = "coke_pure.png",
		}
	},

	["treasuregoldcoins"] = {
		label = "Treasure gold coins",
		weight = 0,
		stack = false,
		close = false,
		description = "Treasure gold coins",
		client = {
			image = "treasuregoldcoins.png",
		}
	},

	["kurodaifuku"] = {
		label = "Kuromame Daifuku",
		weight = 150,
		stack = true,
		close = true,
		description = "Kuromame daifuku..",
		client = {
			image = "kurodaifuku.png",
		}
	},

	["pearl4"] = {
		label = "Black pearl",
		weight = 0,
		stack = true,
		close = false,
		description = "Black pearl",
		client = {
			image = "pearl4.png",
		}
	},

	["ramunecoconut"] = {
		label = "Ramune Coconut",
		weight = 275,
		stack = true,
		close = true,
		description = "Ramune soda, coconut flavoured.",
		client = {
			image = "ramunecoconut.png",
		}
	},

	["chair62"] = {
		label = "Green Chair",
		weight = 0,
		stack = true,
		close = true,
		description = "Green Chair",
		client = {
			image = "chair62.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["pmozzarella"] = {
		label = "Fresh Mozzarella",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fresh Mozzarella",
		client = {
			image = "pmozzarella.png",
		}
	},

	["psparklingwine"] = {
		label = "Sparkling Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sparkling Wine",
		client = {
			image = "psparklingwine.png",
		}
	},

	["engine4"] = {
		label = "Tier 4 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine4.png",
		}
	},

	["cheddar-cheese"] = {
		label = "Cheddar Cheese",
		weight = 125,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "cheddar-cheese.png",
		}
	},

	["pmargharitaslice"] = {
		label = "Margharita Slice",
		weight = 1000,
		stack = true,
		close = true,
		description = "Margharita Slice",
		client = {
			image = "ppizzaslice.png",
		}
	},

	["lemon"] = {
		label = "Lemon",
		weight = 40,
		stack = true,
		close = false,
		description = "Lemon!",
		client = {
			image = "lemon.png",
		}
	},

	["pickaxe"] = {
		label = "Pick axe",
		weight = 100,
		stack = false,
		close = true,
		description = "Pick axe",
		client = {
			image = "pickaxe.png",
		}
	},

	["rolex"] = {
		label = "Golden Watch",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex.png",
		}
	},

	["dirty_plate"] = {
		label = "Dirty Plate",
		weight = 50,
		stack = true,
		close = false,
		description = "A dirty dinner plate!",
		client = {
			image = "dirty_plate.png",
		}
	},

	["pespressomacchiato"] = {
		label = "Espresso Macchiato",
		weight = 1000,
		stack = true,
		close = true,
		description = "Espresso Macchiato",
		client = {
			image = "pespressomacchiato.png",
		}
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},

	["internals"] = {
		label = "Internal Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "internals.png",
		}
	},

	["ramunecherry"] = {
		label = "Ramune Cherry",
		weight = 275,
		stack = true,
		close = true,
		description = "Ramune soda, cherry flavoured.",
		client = {
			image = "ramunecherry.png",
		}
	},

	["sparetire"] = {
		label = "Spare Tire",
		weight = 0,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "sparetire.png",
		}
	},

	["treasurwatch"] = {
		label = "Treasur watch",
		weight = 0,
		stack = true,
		close = false,
		description = "Treasur watch",
		client = {
			image = "treasurwatch.png",
		}
	},

	["emptyplasticcup"] = {
		label = "Empty Plastic Cup",
		weight = 50,
		stack = true,
		close = false,
		description = "A scrap plastic cup..",
		client = {
			image = "emptyplasticcup.png",
		}
	},

	["acetone"] = {
		label = "Acetone",
		weight = 5000,
		stack = true,
		close = false,
		description = "It is a colourless, highly volatile and flammable liquid with a characteristic pungent odour.",
		client = {
			image = "acetone.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["goldbar"] = {
		label = "Gold Bar",
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
		client = {
			image = "goldbar.png",
		}
	},

	["lettuce"] = {
		label = "Lettuce",
		weight = 150,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "lettuce.png",
		}
	},

	["refined_aluminium"] = {
		label = "Refined aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Refined aluminium",
		client = {
			image = "refined_aluminium.png",
		}
	},

	["pvegicheese"] = {
		label = "Vegetarian Cheese",
		weight = 1000,
		stack = true,
		close = true,
		description = "Vegetarian Cheese",
		client = {
			image = "pvegicheese.png",
		}
	},

	["mechboard"] = {
		label = "Mechanic Sheet",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mechboard.png",
		}
	},

	["loot_bag"] = {
		label = "Duffle bag",
		weight = 50,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "loot_bag.png",
		}
	},

	["ramuneorange"] = {
		label = "Ramune Orange",
		weight = 275,
		stack = true,
		close = true,
		description = "Ramune soda, orange flavoured.",
		client = {
			image = "ramuneorange.png",
		}
	},

	["glass_water"] = {
		label = "Glass of Water",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of water!",
		client = {
			image = "glass_water.png",
		}
	},

	["var_usb2"] = {
		label = "Master Key (25%)",
		weight = 1000,
		stack = false,
		close = true,
		description = "Combine multiple USBs to create a master encryption key.",
		client = {
			image = "var_usb.png",
		}
	},

	["brakes2"] = {
		label = "Tier 2 Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes2.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["pvegpizzaslice"] = {
		label = "Vegi Slice",
		weight = 1000,
		stack = true,
		close = true,
		description = "Vegi Slice",
		client = {
			image = "ppizzaslice.png",
		}
	},

	["blowtorch"] = {
		label = "Blow Torch",
		weight = 1000,
		stack = false,
		close = true,
		description = "Ooo hot..",
		client = {
			image = "blowtorch.png",
		}
	},

	["rockfish"] = {
		label = "Rockfish",
		weight = 800,
		stack = true,
		close = false,
		description = "California Rockfish, a stingrays favourite meal!",
		client = {
			image = "rockfish.png",
		}
	},

	["pwhitewine"] = {
		label = "White Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "White Wine",
		client = {
			image = "pwhitewine.png",
		}
	},

	["arcadeplush06"] = {
		label = "Grindy Plushie",
		weight = 350,
		stack = true,
		close = true,
		description = "Collectible Plushie 6; Grindy",
		client = {
			image = "arcadeplush06.png",
		}
	},

	["tracker"] = {
		label = "Phone Tracker",
		weight = 100,
		stack = true,
		close = true,
		description = "Phone Tracker",
		client = {
			image = "tracker.png",
		}
	},

	["pineapple"] = {
		label = "Pineapple",
		weight = 60,
		stack = true,
		close = false,
		description = "Lemon!",
		client = {
			image = "pineapple.png",
		}
	},

	["rollcage"] = {
		label = "Roll Cage",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rollcage.png",
		}
	},

	["atomstburger"] = {
		label = "Triple Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm",
		client = {
			image = "atomstburger.png",
		}
	},

	["matchacrepe"] = {
		label = "Matcha Mille",
		weight = 200,
		stack = true,
		close = true,
		description = "Matcha mille crepe..",
		client = {
			image = "matchacrepe.png",
		}
	},

	["dataflash"] = {
		label = "Data Flash",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dataflash.png",
		}
	},

	["glass"] = {
		label = "Glass",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},

	["daimondearring"] = {
		label = "Daimond Earring",
		weight = 100,
		stack = true,
		close = false,
		description = "Daimond Earring",
		client = {
			image = "daimondearring.png",
		}
	},

	["cdonut"] = {
		label = "Donut",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cdonut.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "casinochips.png",
		}
	},

	["weed_access"] = {
		label = "Access Card",
		weight = 50,
		stack = true,
		close = false,
		description = "Access Card for Weed Lab",
		client = {
			image = "weed_access.png",
		}
	},

	["npc_phone"] = {
		label = "Phone",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "npc_phone.png",
		}
	},

	["arcadeplush02"] = {
		label = "Muffy Plushie",
		weight = 350,
		stack = true,
		close = true,
		description = "Collectible Plushie 2; Muffy",
		client = {
			image = "arcadeplush02.png",
		}
	},

	["arcadeplush07"] = {
		label = "PRB Plushie",
		weight = 350,
		stack = true,
		close = true,
		description = "Collectible Plushie 7; Princess Robot Bubblegum",
		client = {
			image = "arcadeplush07.png",
		}
	},

	["pam"] = {
		label = "AM Beer",
		weight = 1000,
		stack = true,
		close = true,
		description = "AM Beer",
		client = {
			image = "pam.png",
		}
	},

	["stingray"] = {
		label = "Stingray",
		weight = 2500,
		stack = true,
		close = false,
		description = "Stingray",
		client = {
			image = "stingray.png",
		}
	},

	["hourse"] = {
		label = "Hourse",
		weight = 0,
		stack = true,
		close = false,
		description = "Hourse",
		client = {
			image = "hourse.png",
		}
	},

	["ramunestrawberry"] = {
		label = "Ramune Strawberry",
		weight = 275,
		stack = true,
		close = true,
		description = "Ramune soda, strawberry flavoured.",
		client = {
			image = "ramunestrawberry.png",
		}
	},

	["salad2"] = {
		label = "Salad",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "salad2.png",
		}
	},

	["trap_phone"] = {
		label = "Burner Phone",
		weight = 700,
		stack = false,
		close = false,
		description = "cheap pay as you go phone",
		client = {
			image = "burner_phone.png",
		}
	},

	["boombox"] = {
		label = "Boombox",
		weight = 85,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "boombox.png",
		}
	},

	["coke_figure"] = {
		label = "Action Figure",
		weight = 150,
		stack = true,
		close = false,
		description = "Action Figure of the cartoon superhero Impotent Rage",
		client = {
			image = "coke_figure.png",
		}
	},

	["fishingloot"] = {
		label = "Metal Box",
		weight = 500,
		stack = false,
		close = true,
		description = "Seems to be a corroded from the salt water, Should be easy to open",
		client = {
			image = "fishingloot.png",
		}
	},

	["pgoldsake"] = {
		label = "Gold Sake",
		weight = 1000,
		stack = true,
		close = true,
		description = "Gold Sake",
		client = {
			image = "pgoldsake.png",
		}
	},

	["bigdiamond"] = {
		label = "Red Diamond",
		weight = 100,
		stack = true,
		close = true,
		description = "Red Diamond",
		client = {
			image = "bigdiamond.png",
		}
	},

	["lemonade"] = {
		label = "Lemonade",
		weight = 330,
		stack = true,
		close = true,
		description = "The Secret Lemonade Drinker!",
		client = {
			image = "lemonade.png",
		}
	},

	["goldengphone"] = {
		label = "Golden phone",
		weight = 1,
		stack = true,
		close = false,
		description = "Golden phone",
		client = {
			image = "goldengphone.png",
		}
	},

	["xanaxplate"] = {
		label = "Xanax Plate",
		weight = 30,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "xanaxplate.png",
		}
	},

	["pnapollitanoslice"] = {
		label = "Napollitano Slice",
		weight = 1000,
		stack = true,
		close = true,
		description = "Napollitano Slice",
		client = {
			image = "ppizzaslice.png",
		}
	},

	["ciggypack"] = {
		label = "Ciggy pack",
		weight = 100,
		stack = false,
		close = true,
		description = "Ciggy pack",
		client = {
			image = "ciggypack.png",
		}
	},

	["ecstasy4"] = {
		label = "Ectasy",
		weight = 10,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "ecstasy4.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "copper.png",
		}
	},

	["daimondnick1"] = {
		label = "Diamond Nick",
		weight = 500,
		stack = true,
		close = false,
		description = "Diamond Nick",
		client = {
			image = "daimondnick1.png",
		}
	},

	["suspension3"] = {
		label = "Tier 3 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension3.png",
		}
	},

	["papple"] = {
		label = "Apple",
		weight = 1000,
		stack = true,
		close = true,
		description = "Apple",
		client = {
			image = "papple.png",
		}
	},

	["sardinebait"] = {
		label = "Fish net",
		weight = 0,
		stack = false,
		close = true,
		description = "Fish net",
		client = {
			image = "sardinebait.png",
		}
	},

	["cocacola-taco"] = {
		label = "Coke Soda",
		weight = 200,
		stack = true,
		close = true,
		description = "A cup of CocaCola.",
		client = {
			image = "cocacola-taco.png",
		}
	},

	["megaphone"] = {
		label = "Megaphone",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "megaphone.png",
		}
	},

	["pbasil"] = {
		label = "Basil",
		weight = 1000,
		stack = true,
		close = true,
		description = "Basil",
		client = {
			image = "pbasil.png",
		}
	},

	["watch"] = {
		label = "Watch",
		weight = 35,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "watch.png",
		}
	},

	["bodycam"] = {
		label = "Body Cam",
		weight = 100,
		stack = true,
		close = true,
		description = "Body Cam",
		client = {
			image = "bodycam.png",
		}
	},

	["skull"] = {
		label = "Skull Art with diamonds",
		weight = 95,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "skull.png",
		}
	},

	["tortillas"] = {
		label = "Tortillas",
		weight = 150,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "tortillas.png",
		}
	},

	["ohyousashimi"] = {
		label = "O-hyou Sashimi",
		weight = 320,
		stack = true,
		close = true,
		description = "O-hyou sashimi..",
		client = {
			image = "ohyousashimi.png",
		}
	},

	["printer"] = {
		label = "Printer",
		weight = 190,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "printer.png",
		}
	},

	["notepad"] = {
		label = "Notepad",
		weight = 5,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "notepad.png",
		}
	},

	["bubbleteablue"] = {
		label = "Bubble teablue",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bubbleteablue.png",
		}
	},

	["sparkplugs"] = {
		label = "Spark Plugs",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sparkplugs.png",
		}
	},

	["killerwhale"] = {
		label = "Whale",
		weight = 15000,
		stack = true,
		close = false,
		description = "Killer Whale",
		client = {
			image = "killerwhale.png",
		}
	},

	["uwuknife"] = {
		label = "Knife",
		weight = 1,
		stack = true,
		close = true,
		description = "tiny knife for Shadoo (^_^)",
		client = {
			image = "uwuknife.png",
		}
	},

	["flat_television"] = {
		label = "Flat TV",
		weight = 155,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "flat_television.png",
		}
	},

	["atomsdburger"] = {
		label = "Double Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm",
		client = {
			image = "atomsdburger.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},

	["transmission4"] = {
		label = "Tier 4 Transmission",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission4.png",
		}
	},

	["pmushroomspizza"] = {
		label = "Mushrooms Pizza",
		weight = 1000,
		stack = true,
		close = true,
		description = "Mushrooms Pizza",
		client = {
			image = "pmushroomspizza.png",
		}
	},

	["taco-fava"] = {
		label = "Fava Beans",
		weight = 350,
		stack = true,
		close = true,
		description = "Fava Beans!",
		client = {
			image = "fava-taco.png",
		}
	},

	["armor"] = {
		label = "Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["lsd4"] = {
		label = "LSD",
		weight = 10,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "lsd4.png",
		}
	},

	["moneypaper"] = {
		label = "Money Paper",
		weight = 1000,
		stack = true,
		close = false,
		description = "Money Paper",
		client = {
			image = "moneypaper.png",
		}
	},

	["dashcam"] = {
		label = "Dash Cam",
		weight = 100,
		stack = true,
		close = true,
		description = "Dash Cam",
		client = {
			image = "dashcam.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach",
		client = {
			image = "sandwich.png",
		}
	},

	["glass_pepsi"] = {
		label = "Glass of Pepsi",
		weight = 200,
		stack = true,
		close = true,
		description = "A refreshing glass of pepsi!",
		client = {
			image = "glass_pepsi.png",
		}
	},

	["pseafood"] = {
		label = "Seafood Pizza",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Seafood",
		client = {
			image = "pseafood.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["transmission1"] = {
		label = "Tier 1 Transmission",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission1.png",
		}
	},

	["drone_lspd"] = {
		label = "LSPD Drone",
		weight = 100,
		stack = true,
		close = true,
		description = "LSPD Drone",
		client = {
			image = "drone_lspd.png",
		}
	},

	["refined_scrap"] = {
		label = "Refined scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "Refined scrap",
		client = {
			image = "refined_scrap.png",
		}
	},

	["adrenaline"] = {
		label = "Adrenaline syringe",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "adrenaline.png",
		}
	},

	["var_usb3"] = {
		label = "Master Key (25%)",
		weight = 1000,
		stack = false,
		close = true,
		description = "Combine multiple USBs to create a master encryption key.",
		client = {
			image = "var_usb.png",
		}
	},

	["pcaramelsyrup"] = {
		label = "Caramel Syrup",
		weight = 1000,
		stack = true,
		close = true,
		description = "Caramel Syrup",
		client = {
			image = "pcaramelsyrup.png",
		}
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["plastic_bag"] = {
		label = "Plastic Bag",
		weight = 8,
		stack = true,
		close = false,
		description = "You can pack a lot of stuff here!",
		client = {
			image = "plastic_bag.png",
		}
	},

	["atomsfries"] = {
		label = "Atoms Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm",
		client = {
			image = "atomsfries.png",
		}
	},

	["ptomatosouce"] = {
		label = "Tomato Souce",
		weight = 1000,
		stack = true,
		close = true,
		description = "Tomato Souce",
		client = {
			image = "ptomatosouce.png",
		}
	},

	["casino_psqs"] = {
		label = "Casino Ps & Qs",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Ps & Qs",
		client = {
			image = "casino_psqs.png",
		}
	},

	["pporkmeat"] = {
		label = "Pork Meat",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pork Meat",
		client = {
			image = "pporkmeat.png",
		}
	},

	["coke_leaf"] = {
		label = "Coca leaves",
		weight = 15,
		stack = true,
		close = false,
		description = "Leaf from amazing plant",
		client = {
			image = "coke_leaf.png",
		}
	},

	["oysteropener"] = {
		label = "Oyster opener",
		weight = 0,
		stack = true,
		close = true,
		description = "Oyster opener",
		client = {
			image = "oysteropener.png",
		}
	},

	["pwatercup"] = {
		label = "Water Cup",
		weight = 1000,
		stack = true,
		close = true,
		description = "Water Cup",
		client = {
			image = "pwatercup.png",
		}
	},

	["lsd2"] = {
		label = "LSD",
		weight = 10,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "lsd2.png",
		}
	},

	["casino_coffee"] = {
		label = "Casino Coffee",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Coffee",
		client = {
			image = "casino_coffee.png",
		}
	},

	["bighousecas"] = {
		label = "Brief Case",
		weight = 1000,
		stack = false,
		close = false,
		description = "Brief Case",
		client = {
			image = "bighousecas.png",
		}
	},

	["carplay"] = {
		label = "Carplay",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "carplay.png",
		}
	},

	["meth_glass"] = {
		label = "Tray with meth",
		weight = 1000,
		stack = true,
		close = false,
		description = "Needs to be smashed with hammer",
		client = {
			image = "meth_glass.png",
		}
	},

	["breaker"] = {
		label = "Breaker",
		weight = 100,
		stack = false,
		close = false,
		description = "Breaker",
		client = {
			image = "breaker.png",
		}
	},

	["steel"] = {
		label = "Steel",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "steel.png",
		}
	},

	["defibrillator"] = {
		label = "Defibrillator",
		weight = 100,
		stack = false,
		close = true,
		description = "Used to emit a electric shock to stabilize the heart beat",
		client = {
			image = "defibrillator.png",
		}
	},

	["refined_steel"] = {
		label = "Refined steel",
		weight = 100,
		stack = true,
		close = false,
		description = "Refined steel",
		client = {
			image = "refined_steel.png",
		}
	},

	["ppepper"] = {
		label = "DR.Pepper",
		weight = 1000,
		stack = true,
		close = true,
		description = "DR.Pepper",
		client = {
			image = "ppepper.png",
		}
	},

	["french_bread"] = {
		label = "French bread",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "french_bread.png",
		}
	},

	["pearl1"] = {
		label = "White pearl",
		weight = 0,
		stack = true,
		close = false,
		description = "White pearl",
		client = {
			image = "pearl1.png",
		}
	},

	["meth_bag"] = {
		label = "Meth Bag",
		weight = 1000,
		stack = true,
		close = false,
		description = "Plastic bag with magic stuff!",
		client = {
			image = "meth_bag.png",
		}
	},

	["iron"] = {
		label = "Iron",
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something",
		client = {
			image = "iron.png",
		}
	},

	["toothpaste"] = {
		label = "Toothpaste",
		weight = 15,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "toothpaste.png",
		}
	},

	["money-roll"] = {
		label = "Money Stack",
		weight = 1,
		stack = false,
		close = false,
		description = "Hmm money?",
		client = {
			image = "money-roll.png",
		}
	},

	["arcadeplush08"] = {
		label = "SWK Plushie",
		weight = 350,
		stack = true,
		close = true,
		description = "Collectible Plushie 8; Shiny Wasabi Kitty",
		client = {
			image = "arcadeplush08.png",
		}
	},

	["refined_copper"] = {
		label = "Refined copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Refined copper",
		client = {
			image = "refined_copper.png",
		}
	},

	["clean_plate"] = {
		label = "Clean Plate",
		weight = 50,
		stack = true,
		close = false,
		description = "A clean dinner plate!",
		client = {
			image = "clean_plate.png",
		}
	},

	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?",
		client = {
			image = "markedbills.png",
		}
	},

	["anchor"] = {
		label = "Boat Anchor",
		weight = 2500,
		stack = true,
		close = true,
		description = "Boat Anchor",
		client = {
			image = "anchor.png",
		}
	},

	["arcadeplush04"] = {
		label = "Poopy Plushie",
		weight = 350,
		stack = true,
		close = true,
		description = "Collectible Plushie 4; Poopy",
		client = {
			image = "arcadeplush04.png",
		}
	},

	["plogger"] = {
		label = "Logger Beer",
		weight = 1000,
		stack = true,
		close = true,
		description = "Logger Beer",
		client = {
			image = "plogger.png",
		}
	},

	["lsd1"] = {
		label = "LSD",
		weight = 10,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "lsd1.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["iwashisushi"] = {
		label = "Iwashi Sushi",
		weight = 320,
		stack = true,
		close = true,
		description = "Iwashi sushi..",
		client = {
			image = "iwashisushi.png",
		}
	},

	["grapejuice"] = {
		label = "Grape Juice",
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy",
		client = {
			image = "grapejuice.png",
		}
	},

	["fishbait"] = {
		label = "Fish Bait",
		weight = 400,
		stack = true,
		close = true,
		description = "Fishing bait",
		client = {
			image = "fishbait.png",
		}
	},

	["taco-tomato"] = {
		label = "Tomatoes",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "taco-tomato.png",
		}
	},

	["driver_license"] = {
		label = "Drivers License",
		weight = 0,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle",
		client = {
			image = "driver_license.png",
		}
	},

	["psprite"] = {
		label = "Sprite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sprite",
		client = {
			image = "psprite.png",
		}
	},

	["casino_ego_chaser"] = {
		label = "Casino Ego Chaser",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Ego Chaser",
		client = {
			image = "casino_ego_chaser.png",
		}
	},

	["hotdogsausage"] = {
		label = "Hotdog Sausage",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm",
		client = {
			image = "hotdogsausage.png",
		}
	},

	["keycard1"] = {
		label = "Key card",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "keycard1.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["chair64"] = {
		label = "White Chair",
		weight = 0,
		stack = true,
		close = true,
		description = "White Chair",
		client = {
			image = "chair64.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
	},

	["silverdiamond"] = {
		label = "Silver diamond",
		weight = 100,
		stack = true,
		close = false,
		description = "Silver diamond",
		client = {
			image = "silverdiamond.png",
		}
	},

	["coffeebeans"] = {
		label = "coffee beans",
		weight = 100,
		stack = true,
		close = false,
		description = "coffee beans",
		client = {
			image = "coffeebeans.png",
		}
	},

	["halibut"] = {
		label = "Halibut",
		weight = 850,
		stack = true,
		close = false,
		description = "California Halibut, a stingrays favourite meal!",
		client = {
			image = "halibut.png",
		}
	},

	["cupchocolate"] = {
		label = "Cup chocolate",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cupchocolate.png",
		}
	},

	["keycard2"] = {
		label = "Key card",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "keycard2.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["pistolammo_blueprint"] = {
		label = "Pistolammo blueprint",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "pistolammo_blueprint.png",
		}
	},

	["paintcan"] = {
		label = "Vehicle Spray Can",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spraycan.png",
		}
	},

	["bracelet"] = {
		label = "Bracelet",
		weight = 25,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "bracelet.png",
		}
	},

	["matchatea"] = {
		label = "Matcha tea",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "matchatea.png",
		}
	},

	["plate"] = {
		label = "Plate",
		weight = 1000,
		stack = false,
		close = true,
		description = "Plate",
		client = {
			image = "plate.png",
		}
	},

	["golding_ring1"] = {
		label = "Golding Widding Ring",
		weight = 100,
		stack = true,
		close = false,
		description = "Golding Widding Ring",
		client = {
			image = "golding_ring1.png",
		}
	},

	["earings"] = {
		label = "Earings",
		weight = 25,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "earings.png",
		}
	},

	["pencil"] = {
		label = "Pencil",
		weight = 25,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pencil.png",
		}
	},

	["suspension1"] = {
		label = "Tier 1 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension1.png",
		}
	},

	["golding_ring"] = {
		label = "Golding Ring",
		weight = 100,
		stack = true,
		close = false,
		description = "Golding Ring",
		client = {
			image = "golding_ring.png",
		}
	},

	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover.",
		client = {
			image = "ifaks.png",
		}
	},

	["counter_uav"] = {
		label = "Counter UAV System",
		weight = 500,
		stack = true,
		close = true,
		description = "Enemy detection jamming",
		client = {
			image = "counter_uav.png",
		}
	},

	["meth_syringe"] = {
		label = "Syringe",
		weight = 320,
		stack = true,
		close = false,
		description = "Enjoy your new crystal clear stuff!",
		client = {
			image = "meth_syringe.png",
		}
	},

	["meat_chicken"] = {
		label = "Chicken Meat",
		weight = 700,
		stack = true,
		close = false,
		description = "Chicken meat!",
		client = {
			image = "meat_chicken.png",
		}
	},

	["darkchoco"] = {
		label = "Dark choco",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "darkchoco.png",
		}
	},

	["goldchain"] = {
		label = "Golden Chain",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!",
		client = {
			image = "goldchain.png",
		}
	},

	["taco-teabeans"] = {
		label = "Tea Beans",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "tea-beans.png",
		}
	},

	["weed_purple-haze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["lithium"] = {
		label = "Lithium",
		weight = 1000,
		stack = true,
		close = false,
		description = "Lithium, something you can make Meth with!",
		client = {
			image = "lithium.png",
		}
	},

	["uwumenu"] = {
		label = "UwU Cafe Menu",
		weight = 250,
		stack = true,
		close = true,
		description = "UwU Cafe food menu.",
		client = {
			image = "uwumenu.png",
		}
	},

	["greentealeaf"] = {
		label = "Green Tea Leaf",
		weight = 100,
		stack = true,
		close = false,
		description = "Cup of tea guvernor..",
		client = {
			image = "greentealeaf.png",
		}
	},

	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["key1"] = {
		label = "House key",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "key1.png",
		}
	},

	["ziptie"] = {
		label = "Tie bar",
		weight = 100,
		stack = true,
		close = true,
		description = "Tie bar",
		client = {
			image = "ziptie.png",
		}
	},

	["a4sheets"] = {
		label = "A4Sheets Pack",
		weight = 2000,
		stack = true,
		close = true,
		description = "A bundle of 20 A4 Sheets",
		client = {
			image = "a4sheets.png",
		}
	},

	["tires"] = {
		label = "Drift Smoke Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tires.png",
		}
	},

	["blackpanther"] = {
		label = "Black Panther",
		weight = 500,
		stack = true,
		close = false,
		description = "Black Panther",
		client = {
			image = "blackpanther.png",
		}
	},

	["livery"] = {
		label = "Livery Roll",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "livery.png",
		}
	},

	["fishingkey"] = {
		label = "Corroded Key",
		weight = 100,
		stack = true,
		close = true,
		description = "A weathered key that looks usefull",
		client = {
			image = "fishingkey.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["engine5"] = {
		label = "Tier 5 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine5.png",
		}
	},

	["id_card"] = {
		label = "ID Card",
		weight = 0,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself",
		client = {
			image = "id_card.png",
		}
	},

	["moneybox"] = {
		label = "Money Box",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money Box",
		client = {
			image = "moneybox.png",
		}
	},

	["fishingtin"] = {
		label = "Fishing Tin",
		weight = 2500,
		stack = true,
		close = false,
		description = "Fishing Tin",
		client = {
			image = "fishingtin.png",
		}
	},

	["pelbowmacaroni"] = {
		label = "Elbow Macaroni",
		weight = 1000,
		stack = true,
		close = true,
		description = "Elbow Macaroni",
		client = {
			image = "pelbowmacaroni.png",
		}
	},

	["chair81"] = {
		label = "Cyan Chair",
		weight = 0,
		stack = true,
		close = true,
		description = "Cyan Chair",
		client = {
			image = "chair81.png",
		}
	},

	["coconut"] = {
		label = "Coconut",
		weight = 80,
		stack = true,
		close = false,
		description = "Coconut!",
		client = {
			image = "coconut.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!",
		client = {
			image = "diamond_ring.png",
		}
	},

	["coffeebean"] = {
		label = "Coffee Beans",
		weight = 20,
		stack = true,
		close = false,
		description = "Fresh coffee beans!",
		client = {
			image = "coffeebean.png",
		}
	},

	["sugar-cubes"] = {
		label = "Sugar Cubes",
		weight = 100,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "sugar-cubes.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["egg"] = {
		label = "Egg",
		weight = 10,
		stack = true,
		close = false,
		description = "Eggs-actly what you needed..",
		client = {
			image = "egg.png",
		}
	},

	["dirty_cup"] = {
		label = "Dirty Bowl",
		weight = 50,
		stack = true,
		close = false,
		description = "A dirty cup!",
		client = {
			image = "dirty_cup.png",
		}
	},

	["plastic"] = {
		label = "Plastic",
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["photo"] = {
		label = "Photo",
		weight = 0,
		stack = false,
		close = true,
		description = "Photo",
		client = {
			image = "photo.png",
		}
	},

	["deersashimi"] = {
		label = "Venison Sashimi",
		weight = 350,
		stack = true,
		close = true,
		description = "Venison sashimi..",
		client = {
			image = "deersashimi.png",
		}
	},

	["magicmushroom"] = {
		label = "Magic Mushroom",
		weight = 30,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "magicmushroom.png",
		}
	},

	["fan"] = {
		label = "Fan",
		weight = 20,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "fan.png",
		}
	},

	["repairkit"] = {
		label = "Repairkit",
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "repairkit.png",
		}
	},

	["dslrcamera"] = {
		label = "Camera",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "dslrcamera.png",
		}
	},

	["pcoffeebeans"] = {
		label = "Coffee Beans",
		weight = 1000,
		stack = true,
		close = true,
		description = "Coffee Beans",
		client = {
			image = "pcoffeebeans.png",
		}
	},

	["thermitecharge"] = {
		label = "Thermite Charge",
		weight = 3000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "thermite_charge.png",
		}
	},

	["casino_donut"] = {
		label = "Casino Donut",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Donut",
		client = {
			image = "casino_donut.png",
		}
	},

	["clean_cup"] = {
		label = "Clean Cup",
		weight = 50,
		stack = true,
		close = false,
		description = "A clean cup!",
		client = {
			image = "clean_cup.png",
		}
	},

	["portablecopier"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "If you have this machine you will be able to duplicate documents.",
		client = {
			image = "printer_documents.png",
		}
	},

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
		}
	},

	["axleparts"] = {
		label = "Axle Parts",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "axleparts.png",
		}
	},

	["coffee"] = {
		label = "Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine",
		client = {
			image = "coffee.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["backpackgirl"] = {
		label = "Pink Back Pack",
		weight = 15000,
		stack = false,
		close = true,
		description = "Pink Back Pack",
		client = {
			image = "backpackgirl.png",
		}
	},

	["papers"] = {
		label = "Papers",
		weight = 0,
		stack = true,
		close = true,
		description = "Papers",
		client = {
			image = "papers.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["phighcoffeeglasscup"] = {
		label = "High Coffee Glass",
		weight = 1000,
		stack = true,
		close = true,
		description = "Empty High Coffee Glass",
		client = {
			image = "phighcoffeeglasscup.png",
		}
	},

	["iwashiramen"] = {
		label = "Iwashi Ramen",
		weight = 350,
		stack = true,
		close = true,
		description = "Iwashi ramen bowl..",
		client = {
			image = "iwashiramen.png",
		}
	},

	["psalt"] = {
		label = "Salt",
		weight = 1000,
		stack = true,
		close = true,
		description = "Salt",
		client = {
			image = "psalt.png",
		}
	},

	["mechanic_tools"] = {
		label = "Mechanic tools",
		weight = 0,
		stack = false,
		close = true,
		description = "Needed for vehicle repairs",
		client = {
			image = "mechanic_tools.png",
		}
	},

	["weed_package"] = {
		label = "Weed Bag",
		weight = 500,
		stack = true,
		close = false,
		description = "Plastic bag with magic stuff!",
		client = {
			image = "weed_package.png",
		}
	},

	["slaptable"] = {
		label = "Slap Table",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "slaptable.png",
		}
	},

	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["cherry"] = {
		label = "Cherry",
		weight = 20,
		stack = true,
		close = false,
		description = "Cherry!",
		client = {
			image = "cherry.png",
		}
	},

	["atmred"] = {
		label = "Red Atm",
		weight = 2000,
		stack = false,
		close = true,
		description = "A console of an ATM",
		client = {
			image = "atmred.png",
		}
	},

	["cup_tea"] = {
		label = "Cup of Tea",
		weight = 200,
		stack = true,
		close = true,
		description = "A cup of tea.",
		client = {
			image = "cup_tea.png",
		}
	},

	["atomsbaconburger"] = {
		label = "Bacon Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm",
		client = {
			image = "atomsbaconburger.png",
		}
	},

	["exhaust"] = {
		label = "Vehicle Exhaust",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "exhaust.png",
		}
	},

	["pmushroomspizzaslice"] = {
		label = "Fungi slice",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fungi Slice",
		client = {
			image = "ppizzaslice.png",
		}
	},

	["sculpture"] = {
		label = "Sculpture",
		weight = 55,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sculpture.png",
		}
	},

	["gameboy"] = {
		label = "Gameboy",
		weight = 100,
		stack = true,
		close = false,
		description = "Gameboy",
		client = {
			image = "gameboy.png",
		}
	},

	["evidencebox"] = {
		label = "Evidence Box",
		weight = 300,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "evidencebox.png",
		}
	},

	["nylonrope"] = {
		label = "Nylon Rope",
		weight = 500,
		stack = true,
		close = true,
		description = "The strongest rope material..",
		client = {
			image = "nylonrope.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "vodka.png",
		}
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
		}
	},

	["cash_roll"] = {
		label = "cashroll",
		weight = 0,
		stack = false,
		close = true,
		description = "A cashroll of dirty money",
		client = {
			image = "cash-roll.png",
		}
	},

	["pmenu"] = {
		label = "Pizza This Menu",
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza This Menu",
		client = {
			image = "pmenu.png",
		}
	},

	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "tosti.png",
		}
	},

	["atmmotherboard"] = {
		label = "Atm Motherboard",
		weight = 2000,
		stack = false,
		close = true,
		description = "A motherboard for an ATM",
		client = {
			image = "atmmotherboard.png",
		}
	},

	["sns_blueprint"] = {
		label = "Sns Blueprint",
		weight = 1,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "sns_blueprint.png",
		}
	},

	["bong"] = {
		label = "Bong",
		weight = 25,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "bong.png",
		}
	},

	["glue"] = {
		label = "Glue",
		weight = 30,
		stack = true,
		close = false,
		description = "Good for repairing things!",
		client = {
			image = "glue.png",
		}
	},

	["arcadeplush01"] = {
		label = "Humpy Plushie",
		weight = 350,
		stack = true,
		close = true,
		description = "Collectible Plushie 1; Humpy",
		client = {
			image = "arcadeplush01.png",
		}
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},

	["hammer"] = {
		label = "Hammer",
		weight = 500,
		stack = true,
		close = false,
		description = "Good for smashing things!",
		client = {
			image = "hammer.png",
		}
	},

	["oldwatch"] = {
		label = "Old watch",
		weight = 1,
		stack = true,
		close = false,
		description = "Old watch",
		client = {
			image = "oldwatch.png",
		}
	},

	["refined_plastic"] = {
		label = "Refined plastic",
		weight = 100,
		stack = true,
		close = false,
		description = "Refined plastic",
		client = {
			image = "refined_plastic.png",
		}
	},

	["externals"] = {
		label = "Exterior Cosmetics",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mirror.png",
		}
	},

	["rubber"] = {
		label = "Rubber",
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},

	["rims"] = {
		label = "Custom Wheel Rims",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rims.png",
		}
	},

	["xanaxpill"] = {
		label = "Xanax Pill",
		weight = 2,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "xanaxpill.png",
		}
	},

	["honey_hazelnut_oat_latte"] = {
		label = "Honey hazelnut oat latte",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "honey_hazelnut_oat_latte.png",
		}
	},

	["daimondnick4"] = {
		label = "Diamond Nick",
		weight = 500,
		stack = true,
		close = false,
		description = "Diamond Nick",
		client = {
			image = "daimondnick4.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["crack"] = {
		label = "Crack",
		weight = 30,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "crack.png",
		}
	},

	["harness"] = {
		label = "Race Harness",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
		client = {
			image = "harness.png",
		}
	},

	["bprooftires"] = {
		label = "Bulletproof Tires",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bprooftires.png",
		}
	},

	["inadasushi"] = {
		label = "Inada Sushi",
		weight = 320,
		stack = true,
		close = true,
		description = "Inada sushi..",
		client = {
			image = "inadasushi.png",
		}
	},

	["toiletry"] = {
		label = "Toiletry",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "toiletry.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["fishicebox"] = {
		label = "Fishing Ice Chest",
		weight = 2500,
		stack = false,
		close = true,
		description = "Ice Box to store all of your fish",
		client = {
			image = "fishicebox.png",
		}
	},

	["pmargharita"] = {
		label = "Margharita Pizza",
		weight = 1000,
		stack = true,
		close = true,
		description = "Margharita Pizza",
		client = {
			image = "pmargharita.png",
		}
	},

	["meat_deer"] = {
		label = "Venison",
		weight = 850,
		stack = true,
		close = false,
		description = "Deer meat!",
		client = {
			image = "meat_deer.png",
		}
	},

	["document"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "This is a custom document which has been made.",
		client = {
			image = "document.png",
		}
	},

	["ohyousushi"] = {
		label = "O-hyou Sushi",
		weight = 320,
		stack = true,
		close = true,
		description = "O-hyou sushi..",
		client = {
			image = "ohyousushi.png",
		}
	},

	["meth_amoniak"] = {
		label = "Ammonia",
		weight = 1000,
		stack = true,
		close = false,
		description = "Warning! Dangerous Chemicals!",
		client = {
			image = "meth_amoniak.png",
		}
	},

	["glasscutter"] = {
		label = "Glass Cutter",
		weight = 100,
		stack = true,
		close = true,
		description = "Glass Cutter",
		client = {
			image = "glasscutter.png",
		}
	},

	["faberge-egg"] = {
		label = "Faberge Egg",
		weight = 500,
		stack = true,
		close = false,
		description = "Faberge Egg",
		client = {
			image = "faberge-egg.png",
		}
	},

	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash",
		client = {
			image = "moneybag.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["shoebox"] = {
		label = "Shoe box",
		weight = 45,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "shoebox.png",
		}
	},

	["printedmoney"] = {
		label = "Printed Money",
		weight = 5000,
		stack = true,
		close = false,
		description = "Printed Money",
		client = {
			image = "printedmoney.png",
		}
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "thermite.png",
		}
	},

	["prutherfordhill"] = {
		label = "Rutherford Hill Red Wine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Rutherford Hill Red Wine",
		client = {
			image = "prutherfordhill.png",
		}
	},

	["bobatea"] = {
		label = "Boba Tea",
		weight = 200,
		stack = true,
		close = true,
		description = "Boba tea..",
		client = {
			image = "bobatea.png",
		}
	},

	["roof"] = {
		label = "Vehicle Roof",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "roof.png",
		}
	},

	["nishdaifuki"] = {
		label = "Nishigashi Daifuku",
		weight = 150,
		stack = true,
		close = true,
		description = "Nishigashi daifuki..",
		client = {
			image = "nishdaifuki.png",
		}
	},

	["heroin_syringe"] = {
		label = "Syringe",
		weight = 320,
		stack = true,
		close = false,
		description = "Enjoy your new crystal clear stuff!",
		client = {
			image = "heroin_syringe.png",
		}
	},

	["methlab"] = {
		label = "Lab",
		weight = 15000,
		stack = true,
		close = false,
		description = "A portable Meth Lab",
		client = {
			image = "lab.png",
		}
	},

	["butter"] = {
		label = "Butter",
		weight = 125,
		stack = true,
		close = true,
		description = "Smooth like butter, like a criminal undercover~",
		client = {
			image = "butter.png",
		}
	},

	["arcadeplush03"] = {
		label = "Saki Plushie",
		weight = 350,
		stack = true,
		close = true,
		description = "Collectible Plushie 3; Saki",
		client = {
			image = "arcadeplush03.png",
		}
	},

	["goldcoins"] = {
		label = "Gold Coin",
		weight = 1,
		stack = true,
		close = false,
		description = "Gold Coin",
		client = {
			image = "goldcoins.png",
		}
	},

	["tapeplayer"] = {
		label = "Tape Player",
		weight = 55,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "tapeplayer.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["sardine"] = {
		label = "Sardine",
		weight = 300,
		stack = true,
		close = false,
		description = "Pacific Sardine, a small but tasty fish!",
		client = {
			image = "sardine.png",
		}
	},

	["hairdryer"] = {
		label = "Hairdryer",
		weight = 55,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "hairdryer.png",
		}
	},

	["brakes3"] = {
		label = "Tier 3 Brakes",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes3.png",
		}
	},

	["veggiepizza"] = {
		label = "Veggie pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "Veggie pizza",
		client = {
			image = "veggiepizza.png",
		}
	},

	["suspension5"] = {
		label = "Tier 5 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension5.png",
		}
	},

	["beer"] = {
		label = "Beer",
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!",
		client = {
			image = "beer.png",
		}
	},

	["atmcables"] = {
		label = "Atm Cables",
		weight = 2000,
		stack = false,
		close = true,
		description = "Cables..",
		client = {
			image = "atmcables.png",
		}
	},

	["necklace"] = {
		label = "Necklace",
		weight = 55,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "necklace.png",
		}
	},

	["ramennoodles"] = {
		label = "Ramen Noodles",
		weight = 100,
		stack = true,
		close = false,
		description = "Ramen noodles.",
		client = {
			image = "ramennoodles.png",
		}
	},

	["suspension2"] = {
		label = "Tier 2 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension2.png",
		}
	},

	["pmushrooms"] = {
		label = "Mushrooms",
		weight = 1000,
		stack = true,
		close = true,
		description = "Mushrooms",
		client = {
			image = "pmushrooms.png",
		}
	},

	["clean_bowl"] = {
		label = "Clean Bowl",
		weight = 50,
		stack = true,
		close = false,
		description = "A clean bowl!",
		client = {
			image = "clean_bowl.png",
		}
	},

	["jewekey"] = {
		label = "Door Key",
		weight = 100,
		stack = true,
		close = true,
		description = "Door Key",
		client = {
			image = "jewekey.png",
		}
	},

	["pbbqporkmac"] = {
		label = "BBQ Pork Mac",
		weight = 1000,
		stack = true,
		close = true,
		description = "BBQ Pork Mac N Cheese",
		client = {
			image = "pbbqporkmac.png",
		}
	},

	["codfish"] = {
		label = "Cod",
		weight = 2500,
		stack = true,
		close = false,
		description = "Cod",
		client = {
			image = "codfish.png",
		}
	},

	["inadabento"] = {
		label = "Inada Bento",
		weight = 350,
		stack = true,
		close = true,
		description = "Inada bento box..",
		client = {
			image = "inadabento.png",
		}
	},

	["ajisashimi"] = {
		label = "Aji Sashimi",
		weight = 320,
		stack = true,
		close = true,
		description = "Aji sashimi..",
		client = {
			image = "ajisashimi.png",
		}
	},

	["weed_og-kush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["emptyglassbottle"] = {
		label = "Empty Glass Bottle",
		weight = 750,
		stack = true,
		close = false,
		description = "A scrap glass bottle..",
		client = {
			image = "emptyglassbottle.png",
		}
	},

	["backpack"] = {
		label = "Back Pack",
		weight = 15000,
		stack = false,
		close = true,
		description = "Back Pack",
		client = {
			image = "backpack.png",
		}
	},

	["fishtacklebox"] = {
		label = "Tackle Box",
		weight = 1000,
		stack = true,
		close = true,
		description = "Seems to be left over tackle box from another fisherman",
		client = {
			image = "fishtacklebox.png",
		}
	},

	["television"] = {
		label = "TV",
		weight = 155,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "television.png",
		}
	},

	["j_phone"] = {
		label = "Phone",
		weight = 55,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "j_phone.png",
		}
	},

	["jewellery-battery"] = {
		label = "Battery",
		weight = 2500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "battery.png",
		}
	},

	["silvercoins"] = {
		label = "Silver Coins",
		weight = 1,
		stack = true,
		close = false,
		description = "Silver Coins",
		client = {
			image = "silvercoins.png",
		}
	},

	["ramunelemon"] = {
		label = "Ramune Lemon",
		weight = 275,
		stack = true,
		close = true,
		description = "Ramune soda, lemon flavoured.",
		client = {
			image = "ramunelemon.png",
		}
	},

	["tea-taco"] = {
		label = "Tea",
		weight = 200,
		stack = true,
		close = true,
		description = "A cup of Tea.",
		client = {
			image = "tea.png",
		}
	},

	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["blue-usb"] = {
		label = "Blue Usb",
		weight = 1500,
		stack = true,
		close = true,
		description = "..",
		client = {
			image = "blue-usb.png",
		}
	},

	["suspension4"] = {
		label = "Tier 4 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension4.png",
		}
	},

	["casino_sprite"] = {
		label = "Casino Sprite",
		weight = 0,
		stack = false,
		close = false,
		description = "Casino Sprite",
		client = {
			image = "casino_sprite.png",
		}
	},

	["seaweed"] = {
		label = "Seaweed",
		weight = 10,
		stack = true,
		close = false,
		description = "Oh no! The seaweed.. Get it?",
		client = {
			image = "seaweed.png",
		}
	},

	["powder"] = {
		label = "Bag with powder",
		weight = 50,
		stack = true,
		close = false,
		description = "Good for discovering lasers that are not visible",
		client = {
			image = "powder.png",
		}
	},

	["prizebox"] = {
		label = "Mystery box",
		weight = 1,
		stack = false,
		close = false,
		description = "Hmmm what is that ??",
		client = {
			image = "prizebox.png",
		}
	},

	["hornysheartstopper"] = {
		label = "Heart stopper",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm",
		client = {
			image = "hornysheartstopper.png",
		}
	},

	["pwineglass"] = {
		label = "Wine Glass",
		weight = 1000,
		stack = true,
		close = true,
		description = "Wine Glass",
		client = {
			image = "pwineglass.png",
		}
	},

	["apple"] = {
		label = "Apple",
		weight = 150,
		stack = true,
		close = false,
		description = "An apple a day keeps the dr away.",
		client = {
			image = "apple.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_01.png",
		}
	},

	["weed_papers"] = {
		label = "Weed Papers",
		weight = 15,
		stack = true,
		close = false,
		description = "Get Weed Bag and roll joint!",
		client = {
			image = "weed_papers.png",
		}
	},

	["chicken"] = {
		label = "Chicken",
		weight = 180,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "chicken.png",
		}
	},

	["ecstasy5"] = {
		label = "Ectasy",
		weight = 10,
		stack = true,
		close = false,
		description = "Explore a new universe!",
		client = {
			image = "ecstasy5.png",
		}
	},

	["pearlscard"] = {
		label = "Pearls Seafood",
		weight = 100,
		stack = true,
		close = true,
		description = "A special member of Pearl's Seafood Restaurant",
		client = {
			image = "pearlscard.png",
		}
	},

	["drpepper"] = {
		label = "Dr Pepper",
		weight = 330,
		stack = true,
		close = true,
		description = "Dr Pepper, whats the worst that can happen!",
		client = {
			image = "drpepper.png",
		}
	},

	["hornyskpatates"] = {
		label = "Hornys Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "Hmm",
		client = {
			image = "hornyskpatates.png",
		}
	},

	["ground-beef"] = {
		label = "Ground Beef",
		weight = 210,
		stack = true,
		close = true,
		description = "Ingredient",
		client = {
			image = "ground-beef.png",
		}
	},

	["alive_chicken"] = {
		label = "Living chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["black_phone"] = {
		label = "Black Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["blowpipe"] = {
		label = "Blowtorch",
		weight = 2,
		stack = true,
		close = true,
	},

	["blue_phone"] = {
		label = "Blue Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["bread"] = {
		label = "Bread",
		weight = 1,
		stack = true,
		close = true,
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
	},

	["carokit"] = {
		label = "Body Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["carotool"] = {
		label = "Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["classic_phone"] = {
		label = "Classic Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["clothe"] = {
		label = "Cloth",
		weight = 1,
		stack = true,
		close = true,
	},

	["cutted_wood"] = {
		label = "Cut wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["essence"] = {
		label = "Gas",
		weight = 1,
		stack = true,
		close = true,
	},

	["fabric"] = {
		label = "Fabric",
		weight = 1,
		stack = true,
		close = true,
	},

	["fish"] = {
		label = "Fish",
		weight = 1,
		stack = true,
		close = true,
	},

	["fixkit"] = {
		label = "Repair Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["fixtool"] = {
		label = "Repair Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["gazbottle"] = {
		label = "Gas Bottle",
		weight = 2,
		stack = true,
		close = true,
	},

	["gold"] = {
		label = "Gold",
		weight = 1,
		stack = true,
		close = true,
	},

	["gold_phone"] = {
		label = "Gold Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["greenlight_phone"] = {
		label = "Green Light Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["green_phone"] = {
		label = "Green Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 2,
		stack = true,
		close = true,
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		label = "Chicken fillet",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_plank"] = {
		label = "Packaged wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol"] = {
		label = "Oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol_raffin"] = {
		label = "Processed oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_hack"] = {
		label = "Phone Hack",
		weight = 10,
		stack = true,
		close = true,
	},

	["phone_module"] = {
		label = "Phone Module",
		weight = 10,
		stack = true,
		close = true,
	},

	["pink_phone"] = {
		label = "Pink Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["powerbank"] = {
		label = "Power Bank",
		weight = 10,
		stack = true,
		close = true,
	},

	["red_phone"] = {
		label = "Red Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		label = "Slaughtered chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["stone"] = {
		label = "Stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["washed_stone"] = {
		label = "Washed stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["wet_black_phone"] = {
		label = "Wet Black Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_blue_phone"] = {
		label = "Wet Blue Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_classic_phone"] = {
		label = "Wet Classic Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_gold_phone"] = {
		label = "Wet Gold Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_greenlight_phone"] = {
		label = "Wet Green Light Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_green_phone"] = {
		label = "Wet Green Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_phone"] = {
		label = "Wet Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_pink_phone"] = {
		label = "Wet Pink Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_red_phone"] = {
		label = "Wet Red Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_white_phone"] = {
		label = "Wet White Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["white_phone"] = {
		label = "White Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wood"] = {
		label = "Wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["wool"] = {
		label = "Wool",
		weight = 1,
		stack = true,
		close = true,
	},

	["veh_plates"] = {
		label = "Plates",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle plates",
		client = {
			image = "veh_plates.png",
		}
	},

	["suppressor_attachment"] = {
		label = "Suppressor",
		weight = 1000,
		stack = true,
		close = true,
		description = "A suppressor for a weapon",
		client = {
			image = "suppressor_attachment.png",
		}
	},

	["medscope_attachment"] = {
		label = "Medium Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A medium scope for a weapon",
		client = {
			image = "medscope_attachment.png",
		}
	},

	["digicamo_attachment"] = {
		label = "Digital Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A digital camo for a weapon",
		client = {
			image = "digicamo_attachment.png",
		}
	},

	["flashlight_attachment"] = {
		label = "Flashlight",
		weight = 1000,
		stack = true,
		close = true,
		description = "A flashlight for a weapon",
		client = {
			image = "flashlight_attachment.png",
		}
	},

	["advscope_attachment"] = {
		label = "Advanced Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "An advanced scope for a weapon",
		client = {
			image = "advscope_attachment.png",
		}
	},

	["veh_exterior"] = {
		label = "Exterior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle exterior",
		client = {
			image = "veh_exterior.png",
		}
	},

	["veh_xenons"] = {
		label = "Xenons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle xenons",
		client = {
			image = "veh_xenons.png",
		}
	},

	["weed_ogkush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["smallscope_attachment"] = {
		label = "Small Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A small scope for a weapon",
		client = {
			image = "smallscope_attachment.png",
		}
	},

	["weed_ogkush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["weed_whitewidow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["veh_engine"] = {
		label = "Engine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle engine",
		client = {
			image = "veh_engine.png",
		}
	},

	["tenkgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["weed_whitewidow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["boomcamo_attachment"] = {
		label = "Boom Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A boom camo for a weapon",
		client = {
			image = "boomcamo_attachment.png",
		}
	},

	["drum_attachment"] = {
		label = "Drum",
		weight = 1000,
		stack = true,
		close = true,
		description = "A drum for a weapon",
		client = {
			image = "drum_attachment.png",
		}
	},

	["flat_muzzle_brake"] = {
		label = "Flat Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "flat_muzzle_brake.png",
		}
	},

	["heavy_duty_muzzle_brake"] = {
		label = "HD Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "heavy_duty_muzzle_brake.png",
		}
	},

	["clip_attachment"] = {
		label = "Clip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A clip for a weapon",
		client = {
			image = "clip_attachment.png",
		}
	},

	["veh_neons"] = {
		label = "Neons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle neons",
		client = {
			image = "veh_neons.png",
		}
	},

	["newscam"] = {
		label = "News Camera",
		weight = 100,
		stack = false,
		close = true,
		description = "A camera for the news",
		client = {
			image = "newscam.png",
		}
	},

	["bellend_muzzle_brake"] = {
		label = "Bellend Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "bellend_muzzle_brake.png",
		}
	},

	["split_end_muzzle_brake"] = {
		label = "Split End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "split_end_muzzle_brake.png",
		}
	},

	["veh_toolbox"] = {
		label = "Toolbox",
		weight = 1000,
		stack = true,
		close = true,
		description = "Check vehicle status",
		client = {
			image = "veh_toolbox.png",
		}
	},

	["veh_interior"] = {
		label = "Interior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle interior",
		client = {
			image = "veh_interior.png",
		}
	},

	["sessantacamo_attachment"] = {
		label = "Sessanta Nove Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A sessanta nove camo for a weapon",
		client = {
			image = "sessantacamo_attachment.png",
		}
	},

	["newsbmic"] = {
		label = "Boom Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A Useable BoomMic",
		client = {
			image = "newsbmic.png",
		}
	},

	["veh_tint"] = {
		label = "Tints",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle tint",
		client = {
			image = "veh_tint.png",
		}
	},

	["veh_turbo"] = {
		label = "Turbo",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle turbo",
		client = {
			image = "veh_turbo.png",
		}
	},

	["precision_muzzle_brake"] = {
		label = "Precision Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "precision_muzzle_brake.png",
		}
	},

	["newsmic"] = {
		label = "News Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A microphone for the news",
		client = {
			image = "newsmic.png",
		}
	},

	["leopardcamo_attachment"] = {
		label = "Leopard Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A leopard camo for a weapon",
		client = {
			image = "leopardcamo_attachment.png",
		}
	},

	["bank_card"] = {
		label = "Bank Card",
		weight = 0,
		stack = false,
		close = true,
		description = "Used to access ATM",
		client = {
			image = "bank_card.png",
		}
	},

	["veh_armor"] = {
		label = "Armor",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle armor",
		client = {
			image = "veh_armor.png",
		}
	},

	["veh_brakes"] = {
		label = "Brakes",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle brakes",
		client = {
			image = "veh_brakes.png",
		}
	},

	["comp_attachment"] = {
		label = "Compensator",
		weight = 1000,
		stack = true,
		close = true,
		description = "A compensator for a weapon",
		client = {
			image = "comp_attachment.png",
		}
	},

	["tirerepairkit"] = {
		label = "Tire Repair Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "A kit to repair your tires",
		client = {
			image = "tirerepairkit.png",
		}
	},

	["perseuscamo_attachment"] = {
		label = "Perseus Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A perseus camo for a weapon",
		client = {
			image = "perseuscamo_attachment.png",
		}
	},

	["brushcamo_attachment"] = {
		label = "Brushstroke Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A brushstroke camo for a weapon",
		client = {
			image = "brushcamo_attachment.png",
		}
	},

	["veh_suspension"] = {
		label = "Suspension",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle suspension",
		client = {
			image = "veh_suspension.png",
		}
	},

	["skullcamo_attachment"] = {
		label = "Skull Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A skull camo for a weapon",
		client = {
			image = "skullcamo_attachment.png",
		}
	},

	["weed_purplehaze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["largescope_attachment"] = {
		label = "Large Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A large scope for a weapon",
		client = {
			image = "largescope_attachment.png",
		}
	},

	["nvscope_attachment"] = {
		label = "Night Vision Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A night vision scope for a weapon",
		client = {
			image = "nvscope_attachment.png",
		}
	},

	["grip_attachment"] = {
		label = "Grip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A grip for a weapon",
		client = {
			image = "grip_attachment.png",
		}
	},

	["thermalscope_attachment"] = {
		label = "Thermal Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A thermal scope for a weapon",
		client = {
			image = "thermalscope_attachment.png",
		}
	},

	["woodcamo_attachment"] = {
		label = "Woodland Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A woodland camo for a weapon",
		client = {
			image = "woodcamo_attachment.png",
		}
	},

	["weed_purplehaze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["veh_wheels"] = {
		label = "Wheels",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle wheels",
		client = {
			image = "veh_wheels.png",
		}
	},

	["luxuryfinish_attachment"] = {
		label = "Luxury Finish",
		weight = 1000,
		stack = true,
		close = true,
		description = "A luxury finish for a weapon",
		client = {
			image = "luxuryfinish_attachment.png",
		}
	},

	["fat_end_muzzle_brake"] = {
		label = "Fat End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "fat_end_muzzle_brake.png",
		}
	},

	["veh_transmission"] = {
		label = "Transmission",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle transmission",
		client = {
			image = "veh_transmission.png",
		}
	},

	["slanted_muzzle_brake"] = {
		label = "Slanted Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "slanted_muzzle_brake.png",
		}
	},

	["tactical_muzzle_brake"] = {
		label = "Tactical Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brakee for a weapon",
		client = {
			image = "tactical_muzzle_brake.png",
		}
	},

	["geocamo_attachment"] = {
		label = "Geometric Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A geometric camo for a weapon",
		client = {
			image = "geocamo_attachment.png",
		}
	},

	["squared_muzzle_brake"] = {
		label = "Squared Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "squared_muzzle_brake.png",
		}
	},

	["holoscope_attachment"] = {
		label = "Holo Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A holo scope for a weapon",
		client = {
			image = "holoscope_attachment.png",
		}
	},

	["patriotcamo_attachment"] = {
		label = "Patriot Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A patriot camo for a weapon",
		client = {
			image = "patriotcamo_attachment.png",
		}
	},

	["barrel_attachment"] = {
		label = "Barrel",
		weight = 1000,
		stack = true,
		close = true,
		description = "A barrel for a weapon",
		client = {
			image = "barrel_attachment.png",
		}
	},

	["zebracamo_attachment"] = {
		label = "Zebra Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A zebra camo for a weapon",
		client = {
			image = "zebracamo_attachment.png",
		}
	},
}