# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# All information taken from the Monster Hunter World Wiki. 

# Monsters
# -------------------------------------------------------------------------------------------------------------------------------
monster1 = Monster.create!(
	name: "Anjanath",
	description: "The Anjanath patrols the Ancient Forest looking for its favorite meal, Aptonoth. This belligerent monster will attack anything without the slightest provocation.",
	monster_type: "Brute",
	weaknesses: ["Water"],
	element: "Fire",
	rank: 4,
	tail_severable: true
)
monster1.picture.attach(io: File.open("app/assets/images/monsters/mhw-anjanath_icon.png"), filename: "mhw-anjanath_icon.png")

monster2 = Monster.create!(
	name: "Barroth",
	description: "Barroths seek out ants, their favorite snack, and mark their territory with mud. They attack potential rivals with their devastating charging attack.",
	monster_type: "Brute",
	weaknesses: ["Water", "Fire"],
	element: nil,
	rank: 3,
	tail_severable: true
)
monster2.picture.attach(io: File.open("app/assets/images/monsters/mhw-barroth_icon.png"), filename: "mhw-barroth_icon.png")

monster3 = Monster.create!(
	name: "Bazelgeuse",
	description: "A nefarious flying wyvern that travels the New World in search of prey. It scatters explosive scales over a wide area to prey on whatever gets caught in the blast.",
	monster_type: "Flying",
	weaknesses: ["Thunder"],
	element: "Fire",
	rank: 7,
	tail_severable: true
)
monster3.picture.attach(io: File.open("app/assets/images/monsters/mhw-bazelgeuse_icon.png"), filename: "mhw-bazelgeuse_icon.png")

monster4 = Monster.create!(
	name: "Behemoth",
	description: "A powerful beast from another world. Its large horns and muscular frame defy nature. Unique strategies are required to battle it.",
	monster_type: "Elder",
	weaknesses: ["Dragon"],
	element: "Fire",
	rank: 9,
	tail_severable: true
)
monster4.picture.attach(io: File.open("app/assets/images/monsters/mhw-behemoth_icon.png"), filename: "mhw-behemoth_icon.png")

monster5 = Monster.create!(
	name: "Deviljho",
	description: "A monster that must feed constantly and will devour anything in its path, even feeding on the largest of monsters with its massive jowls.",
	monster_type: "Brute",
	weaknesses: ["Thunder", "Dragon"],
	element: "Dragon",
	rank: 7,
	tail_severable: true
)
monster5.picture.attach(io: File.open("app/assets/images/monsters/mhw-deviljho_icon.png"), filename: "mhw-deviljho_icon.png")

monster6 = Monster.create!(
	name: "Diablos",
	description: "The apex monster of the Wildspire Waste. A menacing, territorial beast that lurks underground. Loud noises will cause it to lunge out of the sand in search of prey.",
	monster_type: "Flying",
	weaknesses: ["Ice"],
	element: nil,
	rank: 5,
	tail_severable: true
)
monster6.picture.attach(io: File.open("app/assets/images/monsters/mhw-diablos_icon.png"), filename: "mhw-diablos_icon.png")

monster7 = Monster.create!(
	name: "Black Diablos",
	description: "These black-shelled Diablos are actually female Diablos. The color signals their aggressiveness and heightened hostility to other creatures in their habitat.",
	monster_type: "Flying",
	weaknesses: ["Ice"],
	element: nil,
	rank: 7,
	tail_severable: true
)
monster7.picture.attach(io: File.open("app/assets/images/monsters/mhw-black_diablos_icon.png"), filename: "mhw-black_diablos_icon.png")

monster8 = Monster.create!(
	name: "Dodogama",
	description: "A monster that devours rock as its primary diet. The Crystals it devours mix with its saliva to produce explosive minerals that it can spit at its enemies.",
	monster_type: "Fanged",
	weaknesses: ["Thunder"],
	element: "Fire",
	rank: 6,
	tail_severable: true
)
monster8.picture.attach(io: File.open("app/assets/images/monsters/mhw-dodogama_icon.png"), filename: "mhw-dodogama_icon.png")

monster9 = Monster.create!(
	name: "Great Girros",
	description: "A monster that scavenges for meals dropped from the Coral Highlands. It acts as the alpha leader of a Girros pack, and sports giant fangs that paralyze its prey.",
	monster_type: "Fanged",
	weaknesses: ["Water"],
	element: nil,
	rank: 4,
	tail_severable: true
)
monster9.picture.attach(io: File.open("app/assets/images/monsters/mhw-great_girros_icon.png"), filename: "mhw-great_girros_icon.png")

monster10 = Monster.create!(
	name: "Great Jagras",
	description: "The pack leader of the Jagras. When hungry, Great Jagras are known to attack monsters even stronger than themselves. It balloons to unbelievable proportions after swallowing prey.",
	monster_type: "Fanged",
	weaknesses: ["Fire"],
	element: nil,
	rank: 2,
	tail_severable: false
)
monster10.picture.attach(io: File.open("app/assets/images/monsters/mhw-great_jagras_icon.png"), filename: "mhw-great_jagras_icon.png")

monster11 = Monster.create!(
	name: "Jyuratodus",
	description: "A large piscine wyvern that inhabits the swamps of the Wildspire Waste. It uses mud to capture prey, and it's known to battle other monsters over territory.",
	monster_type: "Piscine",
	weaknesses: ["Thunder", "Water"],
	element: "Water",
	rank: 3,
	tail_severable: false
)
monster11.picture.attach(io: File.open("app/assets/images/monsters/mhw-jyuratodus_icon.png"), filename: "mhw-jyuratodus_icon.png")

monster12 = Monster.create!(
	name: "Kirin",
	description: "Kirin are so rarely sighted that little is known of their ecology. It's been said they envelop themselves in pure electricity when they are provoked.",
	monster_type: "Elder",
	weaknesses: ["Fire"],
	element: "Thunder",
	rank: 5,
	tail_severable: false
)
monster12.picture.attach(io: File.open("app/assets/images/monsters/mhw-kirin_icon.png"), filename: "mhw-kirin_icon.png")

monster13 = Monster.create!(
	name: "Kulu-Ya-Ku",
	description: "An odd bird wyvern that has developed limbs capable of carrying weapons. It's been spotted stealing eggs from nests found in the Ancient Forest and Wildspire Waste.",
	monster_type: "Bird",
	weaknesses: ["Water"],
	element: nil,
	rank: 2,
	tail_severable: false
)
monster13.picture.attach(io: File.open("app/assets/images/monsters/mhw-kulu-ya-ku_icon.png"), filename: "mhw-kulu-ya-ku_icon.png")

monster14 = Monster.create!(
	name: "Kulve Taroth",
	description: "An Elder Dragon that protects itself with a glittering coat of metal.",
	monster_type: "Elder",
	weaknesses: ["Thunder"],
	element: "Fire",
	rank: 9,
	tail_severable: false
)
monster14.picture.attach(io: File.open("app/assets/images/monsters/mhw-kulve_taroth_icon.png"), filename: "mhw-kulve_taroth_icon.png")

monster15 = Monster.create!(
	name: "Kushala Daora",
	description: "An elder dragon that shields itself with fierce winds, preventing anyone from approaching it. Its skin consists of hard, metallic scales.",
	monster_type: "Elder",
	weaknesses: ["Thunder"],
	element: nil,
	rank: 8,
	tail_severable: true
)
monster15.picture.attach(io: File.open("app/assets/images/monsters/mhw-kushala_daora_icon.png"), filename: "mhw-kushala_daora_icon.png")

monster16 = Monster.create!(
	name: "Lavasioth",
	description: "Lavasioth utilizes molten lava as armor. They are extremely aggressive and will attack without prejudice until the threat has been eliminated.",
	monster_type: "Piscine",
	weaknesses: ["Water"],
	element: "Fire",
	rank: 7,
	tail_severable: false
)
monster16.picture.attach(io: File.open("app/assets/images/monsters/mhw-lavasioth_icon.png"), filename: "mhw-lavasioth_icon.png")

monster17 = Monster.create!(
	name: "Legiana",
	description: "The apex monster of the Coral Highlands, whose diet primarily consists of Raphinos. It emits a chilling wind from its body, which dulls its prey's ability to escape.",
	monster_type: "Flying",
	weaknesses: ["Thunder"],
	element: "Ice",
	rank: 5,
	tail_severable: false
)
monster17.picture.attach(io: File.open("app/assets/images/monsters/mhw-legiana_icon.png"), filename: "mhw-legiana_icon.png")

monster18 = Monster.create!(
	name: "Lunastra",
	description: "A rare female Elder Dragon that litters the air with hot blue dust. Reports of it traveling with her mate, Teostra, are still unconfirmed.",
	monster_type: "Elder",
	weaknesses: ["Ice"],
	element: "Fire",
	rank: 8,
	tail_severable: true
)
monster18.picture.attach(io: File.open("app/assets/images/monsters/mhw-lunastra_icon.png"), filename: "mhw-lunastra_icon.png")

monster19 = Monster.create!(
	name: "Nergigante",
	description: "A terrible elder dragon that appears when other elders are in the vicinity. Its penchant for destruction is well documented.",
	monster_type: "Elder",
	weaknesses: ["Thunder"],
	element: nil,
	rank: 8,
	tail_severable: true
)
monster19.picture.attach(io: File.open("app/assets/images/monsters/mhw-nergigante_icon.png"), filename: "mhw-nergigante_icon.png")

monster20 = Monster.create!(
	name: "Odogaron",
	description: "A terrifying monster that scours the Rotten Vale for carrion. Its highly aggressive nature means that anything, be it monster or man, is a potential meal.",
	monster_type: "Fanged",
	weaknesses: ["Ice"],
	element: nil,
	rank: 5,
	tail_severable: true
)
monster20.picture.attach(io: File.open("app/assets/images/monsters/mhw-odogaron_icon.png"), filename: "mhw-odogaron_icon.png")

monster21 = Monster.create!(
	name: "Paolumu",
	description: "Paolumu feast on eggs found in the Coral Highlands. They are able to propel through the air using unique sacs in their bodies, and attack with their extremely hard tails.",
	monster_type: "Flying",
	weaknesses: ["Fire"],
	element: nil,
	rank: 4,
	tail_severable: false
)
monster21.picture.attach(io: File.open("app/assets/images/monsters/mhw-paolumu_icon.png"), filename: "mhw-paolumu_icon.png")

monster22 = Monster.create!(
	name: "Pukei-Pukei",
	description: "A bird wyvern known to possess poisonous toxins in its body. It's been spotted storing scatternuts in its mouth or tail, coating them with poison and spitting them out at threats.",
	monster_type: "Bird",
	weaknesses: ["Thunder"],
	element: nil,
	rank: 3,
	tail_severable: true
)
monster22.picture.attach(io: File.open("app/assets/images/monsters/mhw-pukei-pukei_icon.png"), filename: "mhw-pukei-pukei_icon.png")

monster23 = Monster.create!(
	name: "Radobaan",
	description: "A gigantic brute wyvern that eats the bones of carcasses found in the Rotten Vale, using some of it as armor. It also rolls into a ball as a form of attack and transportation.",
	monster_type: "Brute",
	weaknesses: ["Dragon"],
	element: nil,
	rank: 4,
	tail_severable: true
)
monster23.picture.attach(io: File.open("app/assets/images/monsters/mhw-radobaan_icon.png"), filename: "mhw-radobaan_icon.png")

monster24 = Monster.create!(
	name: "Rathalos",
	description: "The apex monster of the Ancient Forest, also known as the 'King of the Skies'. A fierce wyvern that descends upon invaders, attacking with its venomous claws and fiery breath.",
	monster_type: "Flying",
	weaknesses: ["Dragon"],
	element: "Fire",
	rank: 5,
	tail_severable: true
)
monster24.picture.attach(io: File.open("app/assets/images/monsters/mhw-rathalos_icon.png"), filename: "mhw-rathalos_icon.png")

monster25 = Monster.create!(
	name: "Azure Rathalos",
	description: "An azure-colored subspecies of Rathalos. More mobile than their standard cousins, they locate prey from the air and quickly swoop in for the kill.",
	monster_type: "Flying",
	weaknesses: ["Dragon"],
	element: "Fire",
	rank: 7,
	tail_severable: true
)
monster25.picture.attach(io: File.open("app/assets/images/monsters/mhw-azure_rathalos_icon.png"), filename: "mhw-azure_rathalos_icon.png")

monster26 = Monster.create!(
	name: "Rathian",
	description: "A wyvern known as the 'Queen of the Land'. Terrestrial predator, it overpowers its prey with a venomous tail and powerful legs.",
	monster_type: "Flying",
	weaknesses: ["Dragon"],
	element: "Fire",
	rank: 4,
	tail_severable: true
)
monster26.picture.attach(io: File.open("app/assets/images/monsters/mhw-rathian_icon.png"), filename: "mhw-rathian_icon.png")

monster27 = Monster.create!(
	name: "Pink Rathian",
	description: "A subspecies with vibrant pink scales. Pink Rathians wield their toxic tails more deftly than normal Rathians, weakening prey with poison before moving in for the kill.",
	monster_type: "Flying",
	weaknesses: ["Dragon"],
	element: "Fire",
	rank: 7,
	tail_severable: true
)
monster27.picture.attach(io: File.open("app/assets/images/monsters/mhw-pink_rathian_icon.png"), filename: "mhw-pink_rathian_icon.png")

monster28 = Monster.create!(
	name: "Teostra",
	description: "A brutal elder dragon wreathed in flames that spits blazing fire. Teostra are of such a fierce and deadly nature that the Guild closely monitors their movements.",
	monster_type: "Elder",
	weaknesses: ["Water", "Ice"],
	element: "Fire",
	rank: 8,
	tail_severable: true
)
monster28.picture.attach(io: File.open("app/assets/images/monsters/mhw-teostra_icon.png"), filename: "mhw-teostra_icon.png")

monster29 = Monster.create!(
	name: "Tobi-Kadachi",
	description: "A fanged wyvern that flies among the trees of the Ancient Forest. Its penchant to brush against the ground and the trees as it moves around builds up static electricity within its fur.",
	monster_type: "Fanged",
	weaknesses: ["Water"],
	element: "Thunder",
	rank: 3,
	tail_severable: false
)
monster29.picture.attach(io: File.open("app/assets/images/monsters/mhw-tobi-kadachi_icon.png"), filename: "mhw-tobi-kadachi_icon.png")

monster30 = Monster.create!(
	name: "Tzitzi-Ya-Ku",
	description: "This odd monster blinds both prey and enemies with a special pulsing organ near its head. It then uses its strong legs to deliver finishing blows.",
	monster_type: "Bird",
	weaknesses: ["Thunder", "Ice"],
	element: nil,
	rank: 4,
	tail_severable: false
)
monster30.picture.attach(io: File.open("app/assets/images/monsters/mhw-tzitzi-ya-ku_icon.png"), filename: "mhw-tzitzi-ya-ku_icon.png")

monster31 = Monster.create!(
	name: "Uragaan",
	description: "Large Brute Wyverns that feed on ore, using their mighty jaws to crush solid rock to powder. They've been known to confront Lavasioths over territory disputes.",
	monster_type: "Brute",
	weaknesses: ["Water"],
	element: "Fire",
	rank: 7,
	tail_severable: true
)
monster31.picture.attach(io: File.open("app/assets/images/monsters/mhw-uragaan_icon.png"), filename: "mhw-uragaan_icon.png")

monster32 = Monster.create!(
	name: "Vaal Hazak",
	description: "A grotesque Elder Dragon, that inhabits the deepest part of the Rotten Vale. It uses the fatal vapor of the vale in what appears to be a symbiotic relationship.",
	monster_type: "Elder",
	weaknesses: ["Fire", "Dragon"],
	element: nil,
	rank: 8,
	tail_severable: true
)
monster32.picture.attach(io: File.open("app/assets/images/monsters/mhw-vaal_hazak_icon.png"), filename: "mhw-vaal_hazak_icon.png")

monster33 = Monster.create!(
	name: "Xeno'Jiiva",
	description: "A new species discovered in the depths of the Elder’s Recess. Its relationship to the other elder dragons is unclear, as is its ecology.",
	monster_type: "Elder",
	weaknesses: ["Fire", "Water", "Thunder", "Ice", "Dragon"],
	element: "Fire",
	rank: 9,
	tail_severable: true
)
monster33.picture.attach(io: File.open("app/assets/images/monsters/mhw-xeno'jiiva_icon.png"), filename: "mhw-xeno'jiiva_icon.png")

monster34 = Monster.create!(
	name: "Zorah Magdaros",
	description: "An elder dragon that rises from the earth like a volcano. Where it's headed, and why, the Research Commission has yet to figure out.",
	monster_type: "Elder",
	weaknesses: ["Dragon", "Water"],
	element: "Fire",
	rank: 6,
	tail_severable: false
)
monster34.picture.attach(io: File.open("app/assets/images/monsters/mhw-zorah_magdaros_icon.png"), filename: "mhw-zorah_magdaros_icon.png")

monster35 = Monster.create!(
	name: "Leshen",
	description: "Dwelling deep inside the forest, these creatures use their innate magic to control all flora and fauna within their territory.",
	monster_type: "Relict",
	weaknesses: ["Fire"],
	element: nil,
	rank: 9,
	tail_severable: false
)
monster35.picture.attach(io: File.open("app/assets/images/monsters/mhw-leshen_icon.png"), filename: "mhw-leshen_icon.png")

monster36 = Monster.create!(
	name: "Ancient Leshen",
	description: "An old leshen that arrived through a portal to assume control of the Ancient Forest. Sometimes revered as an indigenous deity.",
	monster_type: "Relict",
	weaknesses: ["Fire"],
	element: nil,
	rank: 9,
	tail_severable: false
)
monster36.picture.attach(io: File.open("app/assets/images/monsters/ancient_leshen_icon.png"), filename: "ancient_leshen_icon.png")


# Weapons
# -------------------------------------------------------------------------------------------------------------------------------

weapon1 = Weapon.create!(
	name: "Buster Sword I",
	attack: 384,
	weapon_type: "Greatsword",
	is_elemental: false,
	element: nil,
	element_attack: nil,
	rarity: 1
)

weapon2 = Weapon.create!(
	name: "Bone Kukri III",
	attack: 168,
	weapon_type: "Sword and Shield",
	is_elemental: false,
	element: nil,
	element_attack: nil,
	rarity: 2
)

weapon3 = Weapon.create!(
	name: "Sworn Rapiers",
	attack: 182,
	weapon_type: "Dual Blades",
	is_elemental: true,
	element: "Water",
	element_attack: 90,
	rarity: 3
)

weapon4 = Weapon.create!(
	name: "Iron Grace II",
	attack: 429,
	weapon_type: "Long Sword",
	is_elemental: false,
	element: nil,
	element_attack: nil,
	rarity: 4
)

weapon5 = Weapon.create!(
	name: "Anja Striker I",
	attack: 884,
	weapon_type: "Hammer",
	is_elemental: true,
	element: "Fire",
	element_attack: 330,
	rarity: 5
)

weapon6 = Weapon.create!(
	name: "Thunderbold Horn I",
	attack: 588,
	weapon_type: "Hunting Horn",
	is_elemental: true,
	element: "Thunder",
	element_attack: 480,
	rarity: 6
)

weapon7 = Weapon.create!(
	name: "Blacksteel Lance II",
	attack: 253,
	weapon_type: "Lance",
	is_elemental: true,
	element: "Dragon",
	element_attack: 150,
	rarity: 6
)

weapon8 = Weapon.create!(
	name: "Legiana Cannon II",
	attack: 368,
	weapon_type: "Gunlance",
	is_elemental: true,
	element: "Ice",
	element_attack: 360,
	rarity: 7
)

weapon9 = Weapon.create!(
	name: "Bone Smasher II",
	attack: 525,
	weapon_type: "Switch Axe",
	is_elemental: false,
	element: nil,
	element_attack: nil,
	rarity: 4
)

weapon10 = Weapon.create!(
	name: "Dante's Devil Sword",
	attack: 720,
	weapon_type: "Charge Blade",
	is_elemental: true,
	element: "Thunder",
	element_attack: 150,
	rarity: 8
)

weapon11 = Weapon.create!(
	name: "Tyrannis Glaive II",
	attack: 713,
	weapon_type: "Insect Glaive",
	is_elemental: true,
	element: "Ice",
	element_attack: 180,
	rarity: 7
)

weapon12 = Weapon.create!(
	name: "Rathslinger III",
	attack: 216,
	weapon_type: "Bow",
	is_elemental: true,
	element: "Fire",
	element_attack: 240,
	rarity: 7
)

weapon13 = Weapon.create!(
	name: "Karma",
	attack: 234,
	weapon_type: "Light Bowgun",
	is_elemental: false,
	element: nil,
	element_attack: nil,
	rarity: 8
)

weapon14 = Weapon.create!(
	name: "Teostra's Flames",
	attack: 270,
	weapon_type: "Heavy Bowgun",
	is_elemental: false,
	element: nil,
	element_attack: nil,
	rarity: 8
)
