rng_addr = 0x020213CC
world_deck_addr = 0x0201E85A

dofile 'card-table.lua'

function show_rng()
    local rng = memory.read_u32_le(rng_addr)
    gui.text(10, 40, string.format('RNG: %08X', rng))
    deck_cards = ''
    for i=0,19 do
        local card_id = memory.read_u16_le(world_deck_addr + 2*i)
        deck_cards = deck_cards .. string.format('%s\n', cardlist[card_id])
    end
    gui.text(170, 50, deck_cards)
    deck_cards = ''
    for i=20,39 do
        local card_id = memory.read_u16_le(world_deck_addr + 2*i)
        deck_cards = deck_cards .. string.format('%s\n', cardlist[card_id])
    end
    gui.text(400, 50, deck_cards)
end

event.onframeend(show_rng)
