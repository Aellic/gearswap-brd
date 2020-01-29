------------------ Simple Gear Swap -------------------

function get_sets()

    send_command('bind !- gs c toggle equipDT')

    sets.precast = {}
    ---- General Fast Cast ----
    sets.precast.fc = {
        main="Legato Dagger",
        sub="Genmei Shield",
        head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body="Inyanga Jubbah +2",
        hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -1%','Song spellcasting time -3%',}},
        legs="Aya. Cosciales +1",
        feet={ name="Telchine Pigaches", augments={'Mag. Acc.+19','Song spellcasting time -6%','Enh. Mag. eff. dur. +7',}},
        neck="Moonbow Whistle",
        waist="Siegel Sash",
        left_ear="Etiolation Earring",
        right_ear="Loquac. Earring",
        left_ring="Kishar Ring",
        right_ring="Defending Ring",
        back="Mesmeric Cape",
    }
    ---- Song Fast Cast ----
    sets.precast.fcsong = set_combine(sets.precast.fc, {range={ name="Linos", augments={'All Songs+2','"Fast Cast"+4','Quadruple Attack +3',}}})
    sets.precast.fcdummy = set_combine(sets.precast.fc, {ranged="Terpander"})
    ---- Nightingale & Troubadour ----
    ---- same set as midcast song ----
    sets.precast.troubadour = {
        main="Legato Dagger",
        sub="Genmei Shield",
        range={ name="Linos", augments={'All Songs+2','"Fast Cast"+4','Quadruple Attack +3',}},
        head="Fili Calot",
        body="Fili Hongreline",
        hands="Fili Manchettes",
        legs="Inyanga Shalwar +1",
        feet="Brioso Slippers",
        neck="Moonbow Whistle",
        waist="Luminary Sash",
        left_ear="Etiolation Earring",
        right_ear="Loquac. Earring",
        left_ring={name="Stikini Ring",priority=1},
        right_ring={name="Stikini Ring",priority=2},
        back="Mesmeric Cape",
    }
    sets.precast.troubdummy = set_combine(sets.precast.troubadour, {ranged="Terpander"})

    sets.midcast = {}
    ---- Midcast set names should be self explanatory ----
    sets.midcast.cure = {
        main="Legato Dagger",
        sub="Genmei Shield",
        head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
        body={ name="Vanya Robe", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
        hands={ name="Telchine Gloves", augments={'Mag. Acc+7', '"Regen"+1', 'Enh. Mag. eff. dur. +8',}},
        legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Conserve MP"+1','MND+10','"Mag.Atk.Bns."+11',}},
        feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -1%','"Cure" potency +6%',}},
        neck="Nodens Gorget",
        waist="Hachirin-no-Obi",
        left_ear="Novia Earring",
        right_ear="Mendi. Earring",
        left_ring={name="Haoma's Ring",priority=1},
        right_ring={name="Haoma's Ring",priority=2},
        back="Mesmeric Cape",
    }
    sets.midcast.song = {
        main="Legato Dagger",
        sub="Genmei Shield",
        head="Fili Calot",
        body="Fili Hongreline",
        hands="Fili Manchettes",
        legs="Inyanga Shalwar +1",
        feet="Brioso Slippers",
        neck="Moonbow Whistle",
        waist="Luminary Sash",
        left_ear="Etiolation Earring",
        right_ear="Loquac. Earring",
        left_ring={name="Stikini Ring",priority=1},
        right_ring={name="Stikini Ring",priority=2},
        back="Mesmeric Cape",
    }
    sets.midcast.ballad = set_combine(sets.midcast.song, {legs="Fili Rhingrave"})
    ---- Midcast dummy song removes song duration gear ----
    sets.midcast.dummysong = set_combine(sets.midcast.song, {legs="Assid. Pants +1", feet="Inyan. Crackows +1", neck="Loricate Torque"})
    sets.midcast.debuffsong = {
        main="Oranyan",
        sub="Niobid Strap",
        head="Inyanga Tiara +1",
        body="Inyanga Jubbah +2",
        hands="Inyan. Dastanas +2",
        legs="Inyanga Shalwar +1",
        feet="Inyan. Crackows +1",
        neck="Moonbow Whistle",
        waist="Luminary Sash",
        left_ear="Lifestorm Earring",
        right_ear="Psystorm Earring",
        left_ring={name="Stikini Ring",priority=1},
        right_ring={name="Stikini Ring",priority=2},
        back="Mesmeric Cape",
    }
    sets.midcast.cursna = {
        main="Legato Dagger",
        sub="Genmei Shield",
        head="Inyanga Tiara +1",
        body={ name="Vanya Robe", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
        hands="Inyan. Dastanas +2",
        legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','"Conserve MP"+1','MND+10','"Mag.Atk.Bns."+11',}},
        feet={ name="Gende. Galosh. +1", augments={'Phys. dmg. taken -1%','"Cure" potency +6%',}},
        neck="Malison Medallion",
        waist="Luminary Sash",
        left_ear="Novia Earring",
        right_ear="Mendi. Earring",
        left_ring={name="Haoma's Ring",priority=1},
        right_ring={name="Haoma's Ring",priority=2},
        back="Mesmeric Cape",
    }
    ---- This is for enhancing magic buffs ----
    sets.midcast.buff = {
        main="Oranyan",
        sub="Niobid Strap",
        head={ name="Telchine Cap", augments={'Mag. Acc.+7','"Conserve MP"+3','Enh. Mag. eff. dur. +9',}},
        body={ name="Telchine Chas.", augments={'Mag. Evasion+9','Enh. Mag. eff. dur. +8',}},
        hands={ name="Telchine Gloves", augments={'Mag. Acc+7', '"Regen"+1', 'Enh. Mag. eff. dur. +8',}},
        legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +8',}},
        feet={ name="Telchine Pigaches", augments={'Mag. Acc.+19','Song spellcasting time -6%','Enh. Mag. eff. dur. +7',}},
        neck="Moonbow Whistle",
        waist="Siegel Sash",
        left_ear="Etiolation Earring",
        right_ear="Loquac. Earring",
        left_ring={name="Stikini Ring",priority=1},
        right_ring={name="Stikini Ring",priority=2},
        back="Mesmeric Cape",
    }

    sets.aftercast = {}
    sets.aftercast.engaged = {}
    sets.aftercast.idle = {
        main="Legato Dagger",
        sub="Genmei Shield",
        range={ name="Linos", augments={'All Songs+2','"Fast Cast"+4','Quadruple Attack +3',}},
        head="Inyanga Tiara +1",
        body="Inyanga Jubbah +2",
        hands="Inyan. Dastanas +2",
        legs="Assid. Pants +1",
        feet="Fili Cothurnes +1",
        neck="Moonbow Whistle",
        waist="Fucho-no-Obi",
        left_ear="Etiolation Earring",
        right_ear="Loquac. Earring",
        left_ring="Inyanga Ring",
        right_ring="Defending Ring",
        back="Mesmeric Cape",
    }
    sets.aftercast.DT = {
        main="Legato Dagger",
        sub="Genmei Shield",
        range={ name="Linos", augments={'All Songs+2','"Fast Cast"+4','Quadruple Attack +3',}},
        head="Inyanga Tiara +1",
        body="Ayanmo Corazza +1",
        hands="Inyan. Dastanas +2",
        legs="Aya. Cosciales +1",
        feet="Inyan. Crackows +1",
        neck="Loricate Torque",
        waist="Flume Belt",
        left_ear="Etiolation Earring",
        right_ear="Odnowa Earring +1",
        left_ring="Gelatinous Ring +1",
        right_ring="Defending Ring",
        back="Mesmeric Cape",
    }

end

-----------------------------------------------------------------------------------

function precast(spell)

    if spell.action_type == 'Magic' then
        ---- Change this to any song for additional slots ----
        if spell.english == "Goblin Gavotte" then
            if buffactive['Troubadour'] then
                equip(sets.precast.troubdummy)
            else
                equip(sets.precast.fcdummy)
            end
        elseif buffactive['Troubadour'] then
            equip(sets.precast.troubadour)
        else
            equip(sets.precast.fcsong)
        end
    end

end

-----------------------------------------------------------------------------------

function midcast(spell)

    if spell.type == "BardSong" then
        if spell.english:startswith("Mage's Ballad") then
            equip(sets.midcast.ballad)
        elseif spell.english == "Goblin Gavotte" then
            equip(sets.midcast.dummysong)
        elseif spell.english:startswith("Foe Requiem") or spell.english:startswith("Foe Lullaby") or spell.english:startswith("Horde Lullaby") or spell.english == "Battlefield Elegy" or spell.english == "Carnage Elegy" or spell.english == "Magic Finale" or spell.english:endswith("Threnody") or spell.english:endswith("Threnody II") or spell.english == "Maiden's Virelai" or spell.english == "Pining Nocturne" then
            equip(sets.midcast.debuffsong)
        else
            equip(sets.midcast.song)
        end
    end

    if spell.skill == "Healing Magic" then
        if spell.name == "'Cursna'" then
            equip(sets.midcast.cursna)
        elseif spell.english:startswith('Cur') then
            equip(sets.midcast.cure)
        end
    end

    if spell.skill == "Enhancing Magic" then
            equip(sets.midcast.buff)
    end

end

-----------------------------------------------------------------------------------

function aftercast(spell)

    if player.status == "Engaged" then
            equip(sets.aftercast.engaged)
    elseif player.status == "Idle" then
            equip(sets.aftercast.idle)
    end

end

-----------------------------------------------------------------------------------

function status_change(new,old)

    if new == 'Idle' then
            equip(sets.aftercast.idle)
    elseif new == 'Engaged' then
            equip(sets.aftercast.engaged)
    end

end

-----------------------------------------------------------------------------------

function self_command(command)

    if command == "toggle equipDT" then
        send_command('@input /echo -- Equip DT --')
        equip(sets.aftercast.DT)
    end
end

-----------------------------------------------------------------------------------