look_for_shinies = true
shiny_species = 25
search_length = 300000

generate_wild_mon_addr = 0x080829fc
standard_wild_after_good_header_id_addr = 0x08082ce4
g_wild_mon_headers_addr = 0x083c9cb8
encounter_rate_buff_addr = 0x020386d6
encounter_rng_addr = 0x020386d0
global_dice_roll_addr = 0x08082c98
rng_addr = 0x03005000
try_generate_wild_mon_addr = 0x08082aec
opp_pv_addr = 0x0202402c
save_ptr_addr = 0x0300500c
script_give_mon_addr = 0x080a011c
seed_rng_addr = 0x08044ee8
init_trainer_id_addr = 0x08054928
player_party_addr = 0x02024284

wild_mon_header_idx = nil

pkmn = {'bulbasaur', 'ivysaur', 'venusaur', 'charmander', 'charmeleon', 'charizard', 'squirtle', 'wartortle', 'blastoise', 'caterpie', 'metapod', 'butterfree', 'weedle', 'kakuna', 'beedrill', 'pidgey', 'pidgeotto', 'pidgeot', 'rattata', 'raticate', 'spearow', 'fearow', 'ekans', 'arbok', 'pikachu', 'raichu', 'sandshrew', 'sandslash', 'nidoran-f', 'nidorina', 'nidoqueen', 'nidoran-m', 'nidorino', 'nidoking', 'clefairy', 'clefable', 'vulpix', 'ninetales', 'jigglypuff', 'wigglytuff', 'zubat', 'golbat', 'oddish', 'gloom', 'vileplume', 'paras', 'parasect', 'venonat', 'venomoth', 'diglett', 'dugtrio', 'meowth', 'persian', 'psyduck', 'golduck', 'mankey', 'primeape', 'growlithe', 'arcanine', 'poliwag', 'poliwhirl', 'poliwrath', 'abra', 'kadabra', 'alakazam', 'machop', 'machoke', 'machamp', 'bellsprout', 'weepinbell', 'victreebel', 'tentacool', 'tentacruel', 'geodude', 'graveler', 'golem', 'ponyta', 'rapidash', 'slowpoke', 'slowbro', 'magnemite', 'magneton', 'farfetchd', 'doduo', 'dodrio', 'seel', 'dewgong', 'grimer', 'muk', 'shellder', 'cloyster', 'gastly', 'haunter', 'gengar', 'onix', 'drowzee', 'hypno', 'krabby', 'kingler', 'voltorb', 'electrode', 'exeggcute', 'exeggutor', 'cubone', 'marowak', 'hitmonlee', 'hitmonchan', 'lickitung', 'koffing', 'weezing', 'rhyhorn', 'rhydon', 'chansey', 'tangela', 'kangaskhan', 'horsea', 'seadra', 'goldeen', 'seaking', 'staryu', 'starmie', 'mr-mime', 'scyther', 'jynx', 'electabuzz', 'magmar', 'pinsir', 'tauros', 'magikarp', 'gyarados', 'lapras', 'ditto', 'eevee', 'vaporeon', 'jolteon', 'flareon', 'porygon', 'omanyte', 'omastar', 'kabuto', 'kabutops', 'aerodactyl', 'snorlax', 'articuno', 'zapdos', 'moltres', 'dratini', 'dragonair', 'dragonite', 'mewtwo', 'mew', 'chikorita', 'bayleef', 'meganium', 'cyndaquil', 'quilava', 'typhlosion', 'totodile', 'croconaw', 'feraligatr', 'sentret', 'furret', 'hoothoot', 'noctowl', 'ledyba', 'ledian', 'spinarak', 'ariados', 'crobat', 'chinchou', 'lanturn', 'pichu', 'cleffa', 'igglybuff', 'togepi', 'togetic', 'natu', 'xatu', 'mareep', 'flaaffy', 'ampharos', 'bellossom', 'marill', 'azumarill', 'sudowoodo', 'politoed', 'hoppip', 'skiploom', 'jumpluff', 'aipom', 'sunkern', 'sunflora', 'yanma', 'wooper', 'quagsire', 'espeon', 'umbreon', 'murkrow', 'slowking', 'misdreavus', 'unown', 'wobbuffet', 'girafarig', 'pineco', 'forretress', 'dunsparce', 'gligar', 'steelix', 'snubbull', 'granbull', 'qwilfish', 'scizor', 'shuckle', 'heracross', 'sneasel', 'teddiursa', 'ursaring', 'slugma', 'magcargo', 'swinub', 'piloswine', 'corsola', 'remoraid', 'octillery', 'delibird', 'mantine', 'skarmory', 'houndour', 'houndoom', 'kingdra', 'phanpy', 'donphan', 'porygon2', 'stantler', 'smeargle', 'tyrogue', 'hitmontop', 'smoochum', 'elekid', 'magby', 'miltank', 'blissey', 'raikou', 'entei', 'suicune', 'larvitar', 'pupitar', 'tyranitar', 'lugia', 'ho-oh', 'celebi', 'treecko', 'grovyle', 'sceptile', 'torchic', 'combusken', 'blaziken', 'mudkip', 'marshtomp', 'swampert', 'poochyena', 'mightyena', 'zigzagoon', 'linoone', 'wurmple', 'silcoon', 'beautifly', 'cascoon', 'dustox', 'lotad', 'lombre', 'ludicolo', 'seedot', 'nuzleaf', 'shiftry', 'taillow', 'swellow', 'wingull', 'pelipper', 'ralts', 'kirlia', 'gardevoir', 'surskit', 'masquerain', 'shroomish', 'breloom', 'slakoth', 'vigoroth', 'slaking', 'nincada', 'ninjask', 'shedinja', 'whismur', 'loudred', 'exploud', 'makuhita', 'hariyama', 'azurill', 'nosepass', 'skitty', 'delcatty', 'sableye', 'mawile', 'aron', 'lairon', 'aggron', 'meditite', 'medicham', 'electrike', 'manectric', 'plusle', 'minun', 'volbeat', 'illumise', 'roselia', 'gulpin', 'swalot', 'carvanha', 'sharpedo', 'wailmer', 'wailord', 'numel', 'camerupt', 'torkoal', 'spoink', 'grumpig', 'spinda', 'trapinch', 'vibrava', 'flygon', 'cacnea', 'cacturne', 'swablu', 'altaria', 'zangoose', 'seviper', 'lunatone', 'solrock', 'barboach', 'whiscash',
    'corphish', 'crawdaunt', 'baltoy', 'claydol', 'lileep', 'cradily', 'anorith', 'armaldo', 'feebas', 'milotic', 'castform', 'kecleon', 'shuppet', 'banette', 'duskull', 'dusclops', 'tropius', 'chimecho', 'absol', 'wynaut', 'snorunt', 'glalie', 'spheal', 'sealeo', 'walrein', 'clamperl', 'huntail', 'gorebyss', 'relicanth', 'luvdisc', 'bagon', 'shelgon', 'salamence', 'beldum', 'metang', 'metagross', 'regirock', 'regice', 'registeel', 'latias', 'latios', 'kyogre', 'groudon', 'rayquaza', 'jirachi', 'deoxys-normal'}

nature = {
    'Hardy',
    'Lonely',
    'Brave',
    'Adamant',
    'Naughty',
    'Bold',
    'Docile',
    'Relaxed',
    'Impish',
    'Lax',
    'Timid',
    'Hasty',
    'Serious',
    'Jolly',
    'Naive',
    'Modest',
    'Mild',
    'Quiet',
    'Bashful',
    'Rash',
    'Calm',
    'Gentle',
    'Sassy',
    'Careful',
    'Quirky'
}

land_array = {20, 40, 50, 60, 70, 80, 85, 90, 94, 98, 99, 100}
a = {}
c = {}

function mult32(a, b)
    local c = SHIFT(a, 16)
    local d = AND(a, 0xFFFF)
    local e = SHIFT(b, 16)
    local f = AND(b, 0xFFFF)
    local g = AND(c*f+d*e, 0xFFFF)
    local h = d*f
    return AND(SHIFT(g,-16) + h,0xFFFFFFFF)
end

function init_lcg_params()
    table.insert(a, 0x41C64E6D)
    table.insert(c, 0x6073)
    for i=1,31 do
        local last_a = a[#a]
        local last_c = c[#c]
        next_a = mult32(last_a, last_a)
        next_c = AND(mult32(last_a, last_c)+last_c, 0xFFFFFFFF)
        table.insert(a, next_a)
        table.insert(c, next_c)
    end
end

function next_seed(seed)
    return AND(mult32(0x41C64E6D, seed) + 0x6073, 0xFFFFFFFF)
end

function prev_seed(seed)
    return mult32(AND(seed-0x6073, 0xFFFFFFFF),4005161829)
end

function get_pos(seed)
    local val = 0
    local pos = 0
    for i=1,31 do
        local mask = SHIFT(1, -i) - 1
        if AND(val, mask) ~= AND(seed, mask) then
            val = AND(mult32(a[i], val) + c[i], 0xFFFFFFFF)
            pos = OR(pos,SHIFT(1,1-i))
        end
    end
    if AND(val,0xFFFFFFFF) ~= AND(seed,0xFFFFFFFF) then
        pos = OR(pos,0x80000000)
    end
    return pos
end

function get_number(seed)
    return AND(SHIFT(seed, 16),0xFFFF)
end

function get_personality(seed)
    local new_seed = next_seed(seed)
    local a = get_number(new_seed)
    local b = get_number(next_seed(new_seed))
    return OR(a, SHIFT(b,-16))
end

function nature_from_personality(p)
    local ans = p % 25
    if p < 0 then
        ans = (ans + 21) % 25
    end
    return ans
end

function hihalf(num)
    return SHIFT(num, 16)
end

function lohalf(num)
    return AND(num, 0xFFFF)
end

function is_shiny(personality, trainer_id)
    local a = XOR(hihalf(trainer_id), lohalf(trainer_id))
    local b = XOR(hihalf(personality), lohalf(personality))
    return XOR(a, b) < 8
end

function get_land_slot(seed)
    local slot = get_number(seed) % 100
    for i=0,11 do
        if slot < land_array[i+1] then
            return i
        end
    end
end

function gen_slot_personality(seed)
    seed = next_seed(seed)
    local slot = get_land_slot(seed)
    seed = next_seed(next_seed(seed))
    local nat_id = get_number(seed) % 25
    local personality = 0
    local id = -1
    repeat
        personality = get_personality(seed)
        seed = next_seed(next_seed(seed))
    until nature_from_personality(personality) == nat_id
    return slot, personality
end

function search_shiny(wild_table_addr, first_seed, trainer_id, num)
    local seed = first_seed
    local wild_pokemon_addr = memory.readdword(wild_table_addr+4)
    for i=1,num do
        local slot, pid = gen_slot_personality(seed)
        if is_shiny(pid, trainer_id) then
            local base = wild_pokemon_addr + 4*slot
            local species = memory.readword(base+2)
            if shiny_species < 0 or (shiny_species > 0 and shiny_species == species) then
                print(string.format('Shiny %s (slot %d) at %u', pkmn[species], slot, get_pos(seed)))
                break
            end
        end
        seed = next_seed(seed)
    end
end

function log_exec()
    wild_mon_header_idx = memory.getregister('r4')
    local encounter_rate_buff = memory.readword(encounter_rate_buff_addr)
    print(string.format('rate buff: %d', encounter_rate_buff))
end

function log_gen()
    local wild_table_addr = memory.getregister('r4')
    local wild_pokemon_addr = memory.readdword(wild_table_addr+4)
    local rng = memory.readdword(rng_addr)
    local seed = next_seed(rng)
    local slot = get_land_slot(seed)
    local base = wild_pokemon_addr + 4*slot
    local species = memory.readword(base+2)
    local minlv = memory.readbyte(base)
    local maxlv = memory.readbyte(base+1)
    local mod = maxlv - minlv + 1
    seed = next_seed(seed)
    local res = get_number(seed) % mod
    local lv = minlv + res
    seed = next_seed(seed)
    local nat_id = get_number(seed) % 25
    local personality = 0
    local id = -1
    repeat
        personality = get_personality(seed)
        seed = next_seed(next_seed(seed))
    until nature_from_personality(personality) == nat_id
    print(string.format('seed: %08x, pos: %u -> %s L%d %s, PV: %08x', rng, get_pos(rng), nature[nat_id+1], lv, pkmn[species], personality))
    local trainer_id_addr = memory.readdword(save_ptr_addr) + 0xa
    local trainer_id = memory.readdword(trainer_id_addr)
    if is_shiny(personality, trainer_id) then
        print('SHINY')
    elseif look_for_shinies then
        search_shiny(wild_table_addr, rng, trainer_id, search_length)
    end
end

function hud()
    --local encounter_rng = memory.readdword(encounter_rng_addr)
    --gui.text(10, 10, string.format('Enc seed: %08x',encounter_rng))
    --[[if wild_mon_header_idx ~= nil then
        local wild_table_addr = memory.readdword(g_wild_mon_headers_addr+20*wild_mon_header_idx+4)
        local wild_pokemon_addr = memory.readdword(wild_table_addr+4)

        local table_str = ''
        for i=0,11 do
            local base = wild_pokemon_addr + 4*i
            local species = memory.readword(base+2)
            local minlv = memory.readbyte(base)
            local maxlv = memory.readbyte(base+1)
            table_str = table_str .. string.format('%d: %s L%d-%d\n', i, pkmn[species], minlv, maxlv)
        end
        gui.text(5,5,table_str)
    end]]
    local rng = memory.readdword(rng_addr)
    local opp_pv = memory.readdword(opp_pv_addr)
    local trainer_id_addr = memory.readdword(save_ptr_addr) + 0xa
    local trainer_id = memory.readdword(trainer_id_addr)
    local party_mon_pv = memory.readdword(player_party_addr)
    gui.text(5, 5, string.format('Opp. PID: %08X\nLead PID: %08X', opp_pv, party_mon_pv))
    gui.text(170, 5, string.format('RNG: %08X\nPos: %u\nTID: %08X', rng, get_pos(rng), trainer_id))
end

function log_script_mon()
    local seed = memory.readdword(rng_addr)
    print(string.format('Pokemon generated at seed %08x, pos %u', seed, get_pos(seed)))
end

function log_id_gen()
    local seed = memory.readdword(rng_addr)
    print(string.format('Generated Trained ID at seed %08x, pos %u', seed, get_pos(seed)))
end

function log_seed_rng()
    local seed = memory.getregister('r4')
    print(string.format('seeded RNG with %08x, pos %u', seed, get_pos(seed)))
end

init_lcg_params()

--memory.registerexec(standard_wild_after_good_header_id_addr, log_exec)
memory.registerexec(try_generate_wild_mon_addr, log_gen)
memory.registerexec(script_give_mon_addr, log_script_mon)
memory.registerexec(seed_rng_addr, log_seed_rng)
memory.registerexec(init_trainer_id_addr, log_id_gen)
gui.register(hud)

function advance_seed(seed, steps)
    for i=0,31 do
        if AND(steps, SHIFT(1,-i)) > 0 then
            seed = AND(mult32(a[i+1], seed) + c[i+1], 0xFFFFFFFF)
        end
    end
    return seed
end

seeds = {0xdde7, 0x2537, 0x6349, 0xb4c4, 0x2f93, 0x6e6f, 0xb8b4, 0x01fb, 0x226a, 0xa8c7,
         0xb8c7, 0x2e3f, 0x714a, 0xb8ba, 0x0f0b, 0x4d0a, 0x980a, 0xdb13, 0x28c9, 0x9097,
         0xc015, 0xe5ab, 0x2c17, 0x778e, 0xc1ff, 0x0973, 0x54dc, 0x9863, 0xdc06, 0x3673,
         0x7637, 0xbf53, 0x0529, 0x5119, 0xc557, 0x0997, 0x4f96, 0x9c47, 0xdb89, 0x1d0e,
         0x52b8, 0x9925, 0x1064, 0x5724, 0xa48c}

for idx, seed in ipairs(seeds) do
    tid_seed = advance_seed(seed, 871)
    mon_seed = advance_seed(tid_seed, 2727)

    for i=1,200 do
        mon_seed = next_seed(mon_seed)
        local pv = get_personality(mon_seed)
        local test_seed = tid_seed
        local found_shiny = false
        for j=0,i do
            if j>0 then
                test_seed = next_seed(test_seed)
            end
            local tid = OR(seed, SHIFT(get_number(next_seed(test_seed)),-16))
            if is_shiny(pv, tid) then
                found_shiny = true
                print(i, j) -- 143 31
                print(string.format('seed: %08x', seed))
                print(string.format('pv: %08x tid: %08x', pv, tid))
                print(string.format('mon_seed: %08x pos: %u', mon_seed, get_pos(mon_seed)))
                break
            end
        end
        if found_shiny then
            break
        end
    end
end
