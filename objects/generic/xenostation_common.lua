require "/objects/generic/extractor_xeno_common.lua"

-- unit times for the xeno lab tech levels
function getTimer(techLevel)
	return ({ 5.5, 1.2 })[techLevel]
end

-- Format:
--   inputs = list of item=quantity pairs
--   outputs = list of item=quantity pairs
--   timeScale = extraction time scaling value (default 1); may be a list as for quantity
--               e.g. { 1, 2 } gives { 5.5 * 1, 1.2 * 2 } = { 5.5, 2.4 }, but generally a single value should be used
--   reversible = true if the conversion can be reversed
--
--   Each quantity is either a single number or a table containing a value for each extractor tech level
--   Order is basic (1), advanced (2), super-advanced (3)
--
--   Listing order is no guarantee of checking order
--   No checks are made for multi-input recipes being overridden by single-input recipes
function getRecipes()
	return {
	        -- for starbooze
	        { inputs = { soakedwheat = 1 }, outputs = { wheatsprout = 1 } },
	        
	        --everythign else        
	        { inputs = { avikancactusseed = 1 }, outputs = { gene_energy = 1 } },
	        { inputs = { avikanspiceplantseed = 1 }, outputs = { gene_stealth = 1 } },	        
	        { inputs = { bolbohnseed = 1 }, outputs = { gene_insectoid = 1 } },
	        { inputs = { dunestalkseed = 1 }, outputs = { gene_nervebundle = 1 } },
	        { inputs = { shadowrootseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { aenemaflower = 1 }, outputs = { gene_energy = 2 } },
		{ inputs = { algaeseed = 1 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { aquapodseed = 1 }, outputs = { gene_aquacelerity = 1, gene_aquahomeo = 1 } },
		{ inputs = { arkaentree = 1 }, outputs = { gene_harden = 2 } },
		{ inputs = { automatoseed = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { avesmingoseed = 1 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { bambooseed = 1 }, outputs = { gene_reproductive = 1 }, timeScale = { 2 / 11, 5 / 6 } }, -- time=1 for both
		{ inputs = { bananaseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { batterystem = 1 }, outputs = { gene_electric = 2 } },
		{ inputs = { beakseedseed = 1 }, outputs = { gene_avian = 1 } },
		{ inputs = { beeflower = 1 }, outputs = { gene_regen = 1, gene_reproductive = 1 } },
		{ inputs = { beetlesproutseed = 1 }, outputs = { gene_harden = 2, gene_insectoid = 2 } },
		{ inputs = { bellamorte = 1 }, outputs = { gene_poisonous = 2 } },
		{ inputs = { biospore = 4 }, outputs = { gene_bioluminescent = 1 } },
		{ inputs = { biscornseed = 1 }, outputs = { gene_nervebundle = 1 } },
		{ inputs = { blexplantseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { bladetree = 1 }, outputs = { gene_reactive = 2 } },
		{ inputs = { blisterbushplantseed = 1 }, outputs = { gene_bioluminescent = 1 } },
		{ inputs = { blizzberryseed = 1 }, outputs = { gene_cryo = 1 } },
		{ inputs = { bloodrootseed = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { bluemelonseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { boltbulbseed = 1 }, outputs = { gene_reactive = 1 } },
		{ inputs = { bonebooseed = 1 }, outputs = { gene_skeletal = 1 }, { gene_mammal = 1 } },
		{ inputs = { brackentreeseed = 1 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { caprioleplantseed = 1 }, outputs = { gene_muscle = 1 } },
		{ inputs = { carrotseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { cellpodsplant = 1 }, outputs = { gene_insectoid = 5 }, timeScale = { 10 / 11, 25 / 6 } }, -- time=5 for both
		{ inputs = { chiliseed = 1 }, outputs = { gene_pyro = 1 } },
		{ inputs = { cinnamonseed = 1 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { cocoaseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { coffeeseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { coralcreepseed = 1 }, outputs = { gene_aquahomeo = 1 } },
		{ inputs = { cornseed = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { corvexseed = 1 }, outputs = { gene_corrosive = 1 } },
		{ inputs = { cottonseed = 1 }, outputs = { gene_mimetic = 1 } },
		{ inputs = { crystallite = 1 }, outputs = { gene_mimetic = 2 } },
		{ inputs = { crystalplantseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { currentcornseed = 1 }, outputs = { gene_mimetic = 1 } },
		{ inputs = { darklightflower = 1 }, outputs = { gene_immunity = 1 } },
		{ inputs = { deathblossomseed = 1 }, outputs = { gene_poisonous = 2 } },
		{ inputs = { diodiahybridseed = 1 }, outputs = { gene_mimetic = 1 } },
		{ inputs = { diodiaseed = 1 }, outputs = { gene_assimilate = 1 } },
		{ inputs = { dirturchinseed = 1 }, outputs = { gene_muscle = 1 } },
		{ inputs = { dragonsbeardseed = 1 }, outputs = { gene_pyro = 1 } },
		{ inputs = { eggshootseed = 1 }, outputs = { gene_avian = 1 } },
		{ inputs = { energiflowerseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { erithianalgaeseed = 1 }, outputs = { gene_insectoid = 1 } },
		{ inputs = { fayshroomseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { floralytplantseed = 1 }, outputs = { gene_regen = 4 } },
		{ inputs = { feathercrownseed = 1 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { fletchweed = 1 }, outputs = { gene_chloroplast = 2 } },
		{ inputs = { flowerblack = 1 }, outputs = { gene_muscle = 1 } },
		{ inputs = { flowerblue = 1 }, outputs = { gene_nervebundle = 1 } },
		{ inputs = { flowerbrown = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { flowergreen = 1 }, outputs = { gene_skeletal = 1 } },
		{ inputs = { flowergrey = 1 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { flowerorange = 1 }, outputs = { gene_avian = 1 } },
		{ inputs = { flowerorchid = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { flowerorchid2 = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { flowerorchid3 = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { flowerpink = 1 }, outputs = { gene_aquahomeo = 1 } },
		{ inputs = { flowerpurple = 1 }, outputs = { gene_assimilate = 1 } },
		{ inputs = { flowerred = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { flowerspring = 1 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { flowerwhite = 1 }, outputs = { gene_mimetic = 1 } },
		{ inputs = { floweryellow = 1 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { fuavikancactusseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { fuavikanspiceplantseed = 1 }, outputs = { gene_mimetic = 1 } },
		{ inputs = { fubioshroomblue = 1 }, outputs = { biospore = 3 } },
		{ inputs = { fubioshroomgreen = 1 }, outputs = { biospore = 3 } },
		{ inputs = { fubioshroompurple = 1 }, outputs = { biospore = 3 } },
		{ inputs = { fubioshroomred = 1 }, outputs = { biospore = 3 } },
		{ inputs = { fubioshroomyellow = 1 }, outputs = { biospore = 3 } },
		{ inputs = { fusnowberryseed = 1 }, outputs = { gene_cryo = 1 }, timeScale = { 10 / 11, 25 / 6 } },
		{ inputs = { fuspongeweedseed = 1 }, outputs = { gene_fish = 1 }, timeScale = { 10 / 11, 25 / 6 } },
		{ inputs = { garpberryseed = 1 }, outputs = { gene_resist = 1 }, timeScale = { 0.8, 5 / 3 } },
		{ inputs = { garikleaf = 1 }, outputs = { gene_regen = 2 } },
		{ inputs = { gazelemonseed = 1 }, outputs = { gene_ocular = 1 } },
		{ inputs = { gemglowseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { genesiberryseed = 1 }, outputs = { gene_assimilate = 3 } },
		{ inputs = { ghostmushroomseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { ginsengseed = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { glarestalkseed = 1 }, outputs = { gene_ocular = 2 } },
		{ inputs = { goldenglowseed = 1 }, outputs = { gene_bioluminescent = 2 } },
		{ inputs = { goldenrootseed = 1 }, outputs = { gene_mimetic = 1 } },
		{ inputs = { goldenseaspongeplant = 1 }, outputs = { gene_fish = 1 }, timeScale = { 10 / 11, 25 / 6 } },
		{ inputs = { goldshroomseed = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { grapesseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { greenleafseed = 1 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { guamseed = 1 }, outputs = { gene_immunity = 1 } },
		{ inputs = { haleflowerseed = 1 }, outputs = { gene_energy = 4 } },
		{ inputs = { hellfireplantseed = 1 }, outputs = { gene_pyro = 3 } },
		{ inputs = { herrodbush = 1 }, outputs = { gene_agility = 2 } },
		{ inputs = { hopsseed = 1 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { ighantseed = 1 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { ignuschili2seed = 1 }, outputs = { gene_pyro = 2, gene_reactive = 2 } },
		{ inputs = { ignuschiliseed = 1 }, outputs = { gene_pyro = 1, gene_reactive = 1 } },
		{ inputs = { jillyrootseed = 1 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { isn_meatplant = 1 }, outputs = { gene_void = 1 }, { gene_mammal = 1 } },
		{ inputs = { itaseed = 1 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { kamaranpodsplant = 1 }, outputs = { gene_mimetic = 4 }, timeScale = { 10 / 11, 25 / 6 } },
		{ inputs = { kirifruitseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { kiwiseed = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { kramil = 1 }, outputs = { gene_immunity = 2 } },
		{ inputs = { lactariusindigoseed = 1 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { lasherplantseed = 1 }, outputs = { gene_rage = 1 } },
		{ inputs = { littlerascalseed = 1 }, outputs = { gene_defense = 2 } },
		{ inputs = { leafshellseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { littlegoodberryseed = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { lumivineseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { melodistarseed = 1 }, outputs = { gene_energy = 2 } },
		{ inputs = { minkocoapodseed = 1 }, outputs = { gene_mammal = 1 } },
		{ inputs = { miraclegrassseed = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { mintseed = 1 }, outputs = { gene_agility = 1 } },
		{ inputs = { mireurchinseed = 1 }, outputs = { gene_agility = 1 } },
		{ inputs = { mushroomseed = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { mutaviskseed = 1 }, outputs = { gene_agility = 1 } },
		{ inputs = { naileryseed = 1 }, outputs = { gene_reactive = 1 } },
		{ inputs = { nakatiseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { neonmelonseed = 1 }, outputs = { gene_assimilate = 1 } },
		{ inputs = { neuropodseed = 1 }, outputs = { gene_mimetic = 2 } },
		{ inputs = { nissseed = 1 }, outputs = { gene_immunity = 1 } },
		{ inputs = { oculemonseed = 1 }, outputs = { gene_ocular = 1 } },
		{ inputs = { onionseed = 1 }, outputs = { gene_agility = 1 } },
		{ inputs = { oonfortaseed = 1 }, outputs = { gene_bioluminescent = 1 } },
		{ inputs = { pasakavineseed = 1 }, outputs = { gene_insectoid = 1 } },
		{ inputs = { pearlpeaseed = 1 }, outputs = { gene_adaptivecell = 1 } },
		{ inputs = { pekkitseed = 1 }, outputs = { gene_cryo = 1 } },
		{ inputs = { petrifiedrootseed = 1 }, outputs = { gene_void = 1 } },
		{ inputs = { pineappleseed = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { pinkloomseed = 1 }, outputs = { gene_rage = 1 } },
		{ inputs = { piruseed = 1 }, outputs = { gene_agility = 1 } },
		{ inputs = { poetree = 1 }, outputs = { gene_assimilate = 1 } },
		{ inputs = { porphisplantseed = 1 }, outputs = { gene_muscle = 1 } },
		{ inputs = { potatoseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { pussplumseed = 1 }, outputs = { gene_muscle = 1 } },
		{ inputs = { quellstem = 1 }, outputs = { gene_resist = 2 } },
		{ inputs = { reedseed = 1 }, outputs = { gene_assimilate = 1 } },
		{ inputs = { reefpodseed = 1 }, outputs = { gene_aquacelerity = 1 } },
		{ inputs = { rockrootseed = 1 }, outputs = { gene_harden = 4 } },
		{ inputs = { riceseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { sapling = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { shinyacornseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { shockshroomseed = 1 }, outputs = { gene_electric = 2 } },
		{ inputs = { shroomblockglow = 50 }, outputs = { gene_bioluminescent = 1 } },
		{ inputs = { silverleafseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { slimeplantseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { springvaultseed = 1 }, outputs = { gene_muscle = 2 } },
		{ inputs = { stranglevineseed = 1 }, outputs = { gene_reactive = 1 } },
		{ inputs = { sugarcaneseed = 1 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { sweetscoopseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { talonseedseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { teratomatoseed = 1 }, outputs = { gene_regen = 3 } },
		{ inputs = { tentacleplant = 1 }, outputs = { gene_mimetic = 2 } },
		{ inputs = { tetherhookseed = 1 }, outputs = { gene_void = 2 } },
		{ inputs = { thornitoxseed = 1 }, outputs = { gene_corrosive = 1 } },
		{ inputs = { tinselbush = 1 }, outputs = { gene_reactive = 1 } },
		{ inputs = { tomatoseed = 1 }, outputs = { gene_nervebundle = 1 } },
		{ inputs = { toxictopseed = 1 }, outputs = { gene_poisonous = 1 } },
		{ inputs = { tyvokkseed = 1 }, outputs = { gene_immunity = 1 } },
		{ inputs = { vashtaplantseed = 1 }, outputs = { gene_insectoid = 1 } },
		{ inputs = { vanusflowerseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { varanberryseed = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { vextongueseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { victorleaf = 1 }, outputs = { gene_muscle = 2 } },
		{ inputs = { voritseed = 1 }, outputs = { gene_aquacelerity = 2 } },
		{ inputs = { wartweedseed = 1 }, outputs = { gene_corrosive = 1 } },
		{ inputs = { wheatseed = 1 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { wildaenemaflower = 1 }, outputs = { gene_energy = 2 } },
		{ inputs = { whitespine = 1 }, outputs = { gene_immunity = 1 } },
		{ inputs = { wildalgaeseed = 1 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { wildaquapodseed = 1 }, outputs = { gene_aquacelerity = 1, gene_aquahomeo = 1 } },
		{ inputs = { wildarkaentree = 1 }, outputs = { gene_harden = 2 } },
		{ inputs = { wildavesmingoseed = 1 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { wildautomatoseed = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { wildbambooseed = 1 }, outputs = { gene_reproductive = 1 }, timeScale = { 2 / 11, 5 / 6 } },
		{ inputs = { wildbananaseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { wildbatterystem = 1 }, outputs = { gene_electric = 2 } },
		{ inputs = { wildbeetlesproutseed = 1 }, outputs = { gene_harden = 2, gene_insectoid = 2 } },
		{ inputs = { wildbeakseedseed = 1 }, outputs = { gene_avian = 1 } },
		{ inputs = { wildbeeflower = 1 }, outputs = { gene_regen = 1, gene_reproductive = 1 } },
		{ inputs = { wildbellamorte = 1 }, outputs = { gene_poisonous = 2 } },
		{ inputs = { wildbiscornseed = 1 }, outputs = { gene_nervebundle = 1 } },
		{ inputs = { wildbladetree = 1 }, outputs = { gene_reactive = 2 } },
		{ inputs = { wildblizzberryseed = 1 }, outputs = { gene_cryo = 1 } },
		{ inputs = { wildblexplantseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { wildblisterbushplantseed = 1 }, outputs = { gene_bioluminescent = 1 } },
		{ inputs = { wildbloodrootseed = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { wildbluemelonseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { wildboltbulbseed = 1 }, outputs = { gene_reactive = 1 } },
		{ inputs = { wildbrackentreeseed = 1 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { wildbonebooseed = 1 }, outputs = { gene_skeletal = 1 }, { gene_mammal = 1 } },
		{ inputs = { wildcaprioleplantseed = 1 }, outputs = { gene_muscle = 1 } },
		{ inputs = { wildcarrotseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { wildcellpodsplant = 1 }, outputs = { gene_insectoid = 5 }, timeScale = { 10 / 11, 25 / 6 } },
		{ inputs = { wildchiliseed = 1 }, outputs = { gene_pyro = 1 } },
		{ inputs = { wildcinnamonseed = 1 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { wildcocoaseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { wildcoffeeseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { wildcoralcreepseed = 1 }, outputs = { gene_aquahomeo = 1 } },
		{ inputs = { wildcornseed = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { wildcrystallite = 1 }, outputs = { gene_mimetic = 2 } },
		{ inputs = { wildcorvexseed = 1 }, outputs = { gene_corrosive = 1 } },
		{ inputs = { wildcottonseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { wildcrystalplantseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { wildcurrentcornseed = 1 }, outputs = { gene_mimetic = 1 } },
		{ inputs = { wilddarklightflower = 1 }, outputs = { gene_immunity = 1 } },
		{ inputs = { wilddiodiaseed = 1 }, outputs = { gene_assimilate = 1 } },
		{ inputs = { wilddeathblossomseed = 1 }, outputs = { gene_poisonous = 2 } },
		{ inputs = { wilddiodiahybridseed = 1 }, outputs = { gene_mimetic = 1 } },
		{ inputs = { wilddirturchinseed = 1 }, outputs = { gene_muscle = 1 } },
		{ inputs = { wilddragonsbeardseed = 1 }, outputs = { gene_pyro = 1 } },
		{ inputs = { wildeggshootseed = 1 }, outputs = { gene_avian = 1 } },
		{ inputs = { wildenergiflowerseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { wildfayshroomseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { wilderithianalgaeseed = 1 }, outputs = { gene_insectoid = 1 } },
		{ inputs = { wildfeathercrownseed = 1 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { wildfletchweed = 1 }, outputs = { gene_chloroplast = 2 } },
		{ inputs = { wildfloralytplantseed = 1 }, outputs = { gene_regen = 4 } },
		{ inputs = { wildflowerblue = 1 }, outputs = { gene_nervebundle = 1 } },
		{ inputs = { wildflowerred = 1 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { wildflowerspring = 1 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { wildfloweryellow = 1 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { wildfuavikancactusseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { wildfuavikanspiceplantseed = 1 }, outputs = { gene_mimetic = 1 } },
		{ inputs = { wildfubioshroomblue = 1 }, outputs = { biospore = 3 } },
		{ inputs = { wildfubioshroomgreen = 1 }, outputs = { biospore = 3 } },
		{ inputs = { wildfubioshroompurple = 1 }, outputs = { biospore = 3 } },
		{ inputs = { wildfubioshroomred = 1 }, outputs = { biospore = 3 } },
		{ inputs = { wildfubioshroomyellow = 1 }, outputs = { biospore = 3 } },
		{ inputs = { wildfusnowberryseed = 1 }, outputs = { gene_cryo = 1 }, timeScale = { 10 / 11, 25 / 6 } },
		{ inputs = { wildfuspongeweedseed = 1 }, outputs = { gene_fish = 1 }, timeScale = { 10 / 11, 25 / 6 } },
		{ inputs = { wildgarikleaf = 1 }, outputs = { gene_regen = 2 } },
		{ inputs = { wildgazelemonseed = 1 }, outputs = { gene_ocular = 1 } },
		{ inputs = { wildgemglowseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { wildgenesiberryseed = 1 }, outputs = { gene_assimilate = 3 } },
		{ inputs = { wildghostmushroomseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { wildginsengseed = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { wildglarestalkseed = 1 }, outputs = { gene_ocular = 2 } },
		{ inputs = { wildgoldenglowseed = 1 }, outputs = { gene_bioluminescent = 2 } },
		{ inputs = { wildgoldenrootseed = 1 }, outputs = { gene_mimetic = 1 } },
		{ inputs = { wildgoldenseaspongeplant = 1 }, outputs = { gene_fish = 1 }, timeScale = { 10 / 11, 25 / 6 } },
		{ inputs = { wildgoldshroomseed = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { wildgreenleafseed = 1 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { wildgrapesseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { wildguamseed = 1 }, outputs = { gene_immunity = 1 } },
		{ inputs = { wildhaleflowerseed = 1 }, outputs = { gene_energy = 4 } },
		{ inputs = { wildhellfireplantseed = 1 }, outputs = { gene_pyro = 3 } },
		{ inputs = { wildherrodbush = 1 }, outputs = { gene_agility = 2 } },
		{ inputs = { wildhopsseed = 1 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { wildighantseed = 1 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { wildignuschiliseed = 1 }, outputs = { gene_pyro = 2 } },
		{ inputs = { wildignuschili2seed = 1 }, outputs = { gene_pyro = 3 } },
		{ inputs = { wildisn_meatplant = 1 }, outputs = { gene_void = 1 }, { gene_mammal = 1 } },
		{ inputs = { wilditaseed = 1 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { wildjillyrootseed = 1 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { wildkamaranpodsplant = 1 }, outputs = { gene_mimetic = 4 }, timeScale = { 10 / 11, 25 / 6 } },
		{ inputs = { wildkirifruitseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { wildkiwiseed = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { wildkramil = 1 }, outputs = { gene_immunity = 2 } },
		{ inputs = { wildlactariusindigoseed = 1 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { wildlasherplantseed = 1 }, outputs = { gene_rage = 1 } },
		{ inputs = { wildleafshellseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { wildlittlegoodberryseed = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { wildlittlerascalseed = 1 }, outputs = { gene_defense = 2 } },
		{ inputs = { wildlumivineseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { wildminkocoapodseed = 1 }, outputs = { gene_mammal = 1 } },
		{ inputs = { wildmelodistarseed = 1 }, outputs = { gene_energy = 2 } },
		{ inputs = { wildmintseed = 1 }, outputs = { gene_agility = 1 } },
		{ inputs = { wildmiraclegrassseed = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { wildmireurchinseed = 1 }, outputs = { gene_agility = 1 } },
		{ inputs = { wildmutaviskseed = 1 }, outputs = { gene_agility = 1 } },
		{ inputs = { wildnaileryseed = 1 }, outputs = { gene_reactive = 1 } },
		{ inputs = { wildnakatiseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { wildneonmelonseed = 1 }, outputs = { gene_assimilate = 1 } },
		{ inputs = { wildneuropodseed = 1 }, outputs = { gene_mimetic = 2 } },
		{ inputs = { wildnissseed = 1 }, outputs = { gene_immunity = 1 } },
		{ inputs = { wildoculemonseed = 1 }, outputs = { gene_ocular = 1 } },
		{ inputs = { wildonionseed = 1 }, outputs = { gene_agility = 1 } },
		{ inputs = { wildoonfortaseed = 1 }, outputs = { gene_bioluminescent = 1 } },
		{ inputs = { wildpasakavineseed = 1 }, outputs = { gene_insectoid = 1 } },
		{ inputs = { wildpearlpeaseed = 1 }, outputs = { gene_adaptivecell = 1 } },
		{ inputs = { wildpekkitseed = 1 }, outputs = { gene_cryo = 1 } },
		{ inputs = { wildpetrifiedrootseed = 1 }, outputs = { gene_void = 1 } },
		{ inputs = { wildpineappleseed = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { wildpinkloomseed = 1 }, outputs = { gene_rage = 1 } },
		{ inputs = { wildpiruseed = 1 }, outputs = { gene_agility = 1 } },
		{ inputs = { wildpoetree = 1 }, outputs = { gene_assimilate = 1 } },
		{ inputs = { wildporphisplantseed = 1 }, outputs = { gene_muscle = 1 } },
		{ inputs = { wildpotatoseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { wildpussplumseed = 1 }, outputs = { gene_muscle = 1 } },
		{ inputs = { wildquellstem = 1 }, outputs = { gene_resist = 2 } },
		{ inputs = { wildreedseed = 1 }, outputs = { gene_assimilate = 1 } },
		{ inputs = { wildreefpodseed = 1 }, outputs = { gene_aquacelerity = 1 } },
		{ inputs = { wildriceseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { wildrockrootseed = 1 }, outputs = { gene_harden = 4 } },
		{ inputs = { wildsapling = 1 }, outputs = { gene_harden = 1 } },
		{ inputs = { wildshinyacornseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { wildshockshroomseed = 1 }, outputs = { gene_electric = 2 } },
		{ inputs = { wildsilverleafseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { wildslimeplantseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { wildspringvaultseed = 1 }, outputs = { gene_muscle = 2 } },
		{ inputs = { wildstranglevineseed = 1 }, outputs = { gene_reactive = 1 } },
		{ inputs = { wildsugarcaneseed = 1 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { wildsweetscoopseed = 1 }, outputs = { gene_stealth = 1 } },
		{ inputs = { wildtalonseedseed = 1 }, outputs = { gene_resist = 1 } },
		{ inputs = { wildtentacleplant = 1 }, outputs = { gene_mimetic = 2 } },
		{ inputs = { wildthornitoxseed = 1 }, outputs = { gene_corrosive = 1 } },
		{ inputs = { wildteratomatoseed = 1 }, outputs = { gene_regen = 3 } },
		{ inputs = { wildtetherhookseed = 1 }, outputs = { gene_void = 2 } },
		{ inputs = { wildtinselbush = 1 }, outputs = { gene_reactive = 1 } },
		{ inputs = { wildtomatoseed = 1 }, outputs = { gene_nervebundle = 1 } },
		{ inputs = { wildtoxictopseed = 1 }, outputs = { gene_poisonous = 1 } },
		{ inputs = { wildtyvokkseed = 1 }, outputs = { gene_immunity = 1 } },
		{ inputs = { wildvanusflowerseed = 1 }, outputs = { gene_defense = 1 } },
		{ inputs = { wildvaranberryseed = 1 }, outputs = { gene_regen = 1 } },
		{ inputs = { wildvashtaplantseed = 1 }, outputs = { gene_insectoid = 1 } },
		{ inputs = { wildvextongueseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { wildvictorleaf = 1 }, outputs = { gene_muscle = 2 } },
		{ inputs = { wildvoritseed = 1 }, outputs = { gene_aquacelerity = 2 } },
		{ inputs = { wildwartweedseed = 1 }, outputs = { gene_corrosive = 1 } },
		{ inputs = { wildwheatseed = 1 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { wildwhitespine = 1 }, outputs = { gene_immunity = 1 } },
		{ inputs = { wildwretchelseed = 1 }, outputs = { gene_void = 3 } },
		{ inputs = { wildwubstemseed = 1 }, outputs = { gene_adaptivecell = 1 } },
		{ inputs = { wildxaxseed = 1 }, outputs = { gene_avian = 3 } },
		{ inputs = { wildyellowfootseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { wildzathiseed = 1 }, outputs = { gene_avian = 2 } },
		{ inputs = { wretchelseed = 1 }, outputs = { gene_void = 3 } },
		{ inputs = { wubstemseed = 1 }, outputs = { gene_adaptivecell = 1 } },
		{ inputs = { xaxseed = 1 }, outputs = { gene_avian = 3 } },
		{ inputs = { yellowfootseed = 1 }, outputs = { gene_energy = 1 } },
		{ inputs = { zathiseed = 1 }, outputs = { gene_avian = 2 } },

		-- produce
		{ inputs = { alienfruit = 25 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { automato = 25 }, outputs = { gene_harden = 1 } },
		{ inputs = { avesmingo = 25 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { banana = 25 }, outputs = { gene_resist = 1 } },
		{ inputs = { boneboo = 25 }, outputs = { gene_skeletal = 1 } },
		{ inputs = { cacti = 25 }, outputs = { gene_defense = 1 } },
		{ inputs = { carrot = 25 }, outputs = { gene_resist = 1 } },
		{ inputs = { chili = 25 }, outputs = { gene_pyro = 1 } },
		{ inputs = { coconut = 25 }, outputs = { gene_defense = 1 } },
		{ inputs = { coffeebeans = 25 }, outputs = { gene_energy = 1 } },
		{ inputs = { coralcreep = 25 }, outputs = { gene_aquahomeo = 1 } },
		{ inputs = { corn = 25 }, outputs = { gene_harden = 1 } },
		{ inputs = { crystalplant = 25 }, outputs = { gene_stealth = 1 } },
		{ inputs = { currentcorn = 25 }, outputs = { gene_mimetic = 1 } },
		{ inputs = { diodia = 25 }, outputs = { gene_assimilate = 1 } },
		{ inputs = { dirturchin = 25 }, outputs = { gene_muscle = 1 } },
		{ inputs = { eggshoot = 25 }, outputs = { gene_avian = 1 } },
		{ inputs = { feathercrown = 25 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { glowfibre = 25 }, outputs = { gene_bioluminescent = 1 } },
		{ inputs = { grapes = 25 }, outputs = { gene_resist = 1 } },
		{ inputs = { greenapple = 25 }, outputs = { gene_regen = 1 } },
		{ inputs = { kelp = 25 }, outputs = { gene_regen = 1 } },
		{ inputs = { kiwi = 25 }, outputs = { gene_harden = 1 } },
		{ inputs = { neonmelon = 25 }, outputs = { gene_assimilate = 1 } },
		{ inputs = { oculemon = 25 }, outputs = { gene_ocular = 1 } },
		{ inputs = { orange = 25 }, outputs = { gene_regen = 1 } },
		{ inputs = { pearlpea = 25 }, outputs = { gene_adaptivecell = 1 } },
		{ inputs = { pineapple = 25 }, outputs = { gene_harden = 1 } },
		{ inputs = { plantfibre = 25 }, outputs = { gene_reproductive = 1 } },
		{ inputs = { potato = 25 }, outputs = { gene_resist = 1 } },
		{ inputs = { pussplum = 25 }, outputs = { gene_muscle = 1 } },
		{ inputs = { redapple = 25 }, outputs = { gene_muscle = 1 } },
		{ inputs = { reefpod = 25 }, outputs = { gene_aquacelerity = 1 } },
		{ inputs = { rice = 25 }, outputs = { gene_defense = 1 } },
		{ inputs = { shroom = 25 }, outputs = { gene_poisonous = 1 } },
		{ inputs = { sugar = 25 }, outputs = { gene_stimulant = 1 } },
		{ inputs = { thornfruit = 25 }, outputs = { gene_defense = 1 } },
		{ inputs = { tomato = 25 }, outputs = { gene_nervebundle = 1 } },
		{ inputs = { toxictop = 25 }, outputs = { gene_poisonous = 1 } },
		{ inputs = { wartweed = 25 }, outputs = { gene_corrosive = 1 } },
		{ inputs = { wheat = 25 }, outputs = { gene_chloroplast = 1 } },
		{ inputs = { wildvines = 25 }, outputs = { gene_chloroplast = 1 } },
	}
end
