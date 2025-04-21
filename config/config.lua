Config = {}

Config.Global = {
    Framework = "legacy", -- esx ou legacy 
    SharedObject = "esx:getSharedObject", -- Pas touche..
}

Config.Locale = 'fr'

Config.Boss = vector3(-521.264, -170.3851, 42.64588)
Config.Confidence = vector3(-537.1738, -179.5186, 42.63583)

-- Confidence 

Config.Societies = {
    { society = 'society_gouvernement', label = 'Gouvernement' },
    { society = 'society_police', label = 'LSPD' },
    -- Ajoutez d'autres sociétés ici si nécessaire
}


Config.Job  = {
	JobName = 'gouv',
	JobLabel = 'Gouvernement',
	Society = 'society_gouvernement'
}

Config.ActionGouv  = {
	ActionEmployer = vector3(-561.5583, -210.6097, 38.16888)
}

-- Garage

Config.PedGarageGouv = { -- Le PNJ (Personnage Non-Joueur) pour ouvrir le menu
    Model = "mp_m_waremech_01", -- https://docs.fivem.net/docs/game-references/ped-models/
    Coords = {x = -563.15618896484, y = -169.43641662598, z = 37.250839233398, heading = 15.34561443328857} -- Si le ped vole, retire un 1 dans le Z exemple : z = 20.169269561768 -> z = 19.169269561768
}

Config.GarageGouv  = {
	Target = vector3(-563.1562, -169.4364, 38.25084),
	SpawnCarCoords = vector4(-566.2939, -164.232, 38.06998, 293.7527465820313)
}

Config.VehiclesGouv = {
    { name = "blista", label = "Blista" },
    { name = "baller4", label = "Baller" }
}

-- Acceuil 

Config.PedAcceuilGouv = { -- Le PNJ (Personnage Non-Joueur) pour ouvrir le menu
    Model = "a_f_m_bevhills_02", -- https://docs.fivem.net/docs/game-references/ped-models/
    Coords = {x = -555.75268554688, y = -185.85005187988, z = 37.221069335938, heading = 210.88400268554688} -- Si le ped vole, retire un 1 dans le Z exemple : z = 20.169269561768 -> z = 19.169269561768
}

Config.Acceuil  = {
	Target = vector3(-555.75268554688, -185.85005187988, 38.221069335938)
}

-- Tenue


Config.TenuesGouv = {
    {
        title = 'Reprends la tenue de base',
        description = 'Equiper la tenue',
        skin = 'default'
    },
    {
        title = 'S\'équiper de la tenue : Garde du corps',
        description = 'Equiper la tenue',
        male = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 0,   ['torso_2'] = 2,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 9,   ['pants_2'] = 7,
            ['shoes_1'] = 7,   ['shoes_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['bags_1'] = 0,     ['bags_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['helmet_1'] = -1, ['helmet_2'] = 0,
            ['mask_1'] = -1, ['mask_2'] = 0,
            ['glasses_1'] = -1, ['glasses_2'] = 0,
            ['gloves_1'] = -1, ['gloves_2'] = 0,
        },
        female = {
            ['tshirt_1'] = 245,  ['tshirt_2'] = 0,
            ['torso_1'] = 419,   ['torso_2'] = 1,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 1,
            ['pants_1'] = 150,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['chain_1'] = 183,    ['chain_2'] = 0,
            ['bags_1'] = 0,     ['bags_2'] = 0,
            ['bproof_1'] = 81,  ['bproof_2'] = 0,
            ['helmet_1'] = -1, ['helmet_2'] = 0,
            ['mask_1'] = -1, ['mask_2'] = 0,
            ['glasses_1'] = -1, ['glasses_2'] = 0,
            ['gloves_1'] = -1, ['gloves_2'] = 0,
        }
    },
    {
        title = 'S\'équiper de la tenue : Chef sécurité',
        description = 'Equiper la tenue',
        male = {
            ['tshirt_1'] = 113,  ['tshirt_2'] = 0,
            ['torso_1'] = 259,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 179,   ['pants_2'] = 2,
            ['shoes_1'] = 136,   ['shoes_2'] = 2,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['bags_1'] = 0,     ['bags_2'] = 0,
            ['bproof_1'] = 0,  ['bproof_2'] = 0,
            ['helmet_1'] = -1, ['helmet_2'] = 0,
            ['mask_1'] = -1, ['mask_2'] = 0,
            ['glasses_1'] = -1, ['glasses_2'] = 0,
            ['gloves_1'] = -1, ['gloves_2'] = 0,
        },
        female = {
            ['tshirt_1'] = 245,  ['tshirt_2'] = 0,
            ['torso_1'] = 419,   ['torso_2'] = 1,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 1,
            ['pants_1'] = 150,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['chain_1'] = 183,    ['chain_2'] = 0,
            ['bags_1'] = 0,     ['bags_2'] = 0,
            ['bproof_1'] = 81,  ['bproof_2'] = 0,
            ['helmet_1'] = -1, ['helmet_2'] = 0,
            ['mask_1'] = -1, ['mask_2'] = 0,
            ['glasses_1'] = -1, ['glasses_2'] = 0,
            ['gloves_1'] = -1, ['gloves_2'] = 0,
        }
    }
}

-- Blips

Config.BlipGouv = {
	Pos     = {x = -548.72595214844, y = -196.91247558594, z = 38.221111297607},
	Sprite  = 419,
	Display = 4,
	Scale   = 0.8,
	Colour  = 0,
}