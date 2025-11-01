#import "utils/variables.typ": *
#import "utils/template.typ": template
#import "utils/radar.typ": *

#let rad(dmg: 0, ctrl: 0, spd: 0, heal: 0, range: 0, def: 0) = align(center, box(width: 100%, canvas({
    radar(
        (0, 0),
        (
            ([Damage], dmg),
            ([Range], range),
            ([Control], ctrl),
            ([Speed], spd),
            ([Healing], heal),
            ([Defense], def),
        ),
        fill: red.transparentize(50%),
        radius: 2,
        stroke: 1.5pt + red,
    )
})))


#rarity.insert("currency", (id: "Currency", color: rgb("#55FF55")))

#let top_grid(col: 2, ..content, pb: true) = {
    grid(
        columns: col,
        align: top,
        gutter: 10pt,
        ..content,
    )
    if (pb) { pagebreak() }
}


#show: template

#align(center, text(22pt)[
    *Burgeon*
])

#outline(title: none)
#pagebreak()

= Items
== Seeds <seeds>
#top_grid(col: 2, item-tooltip(
    bloomguard_seed,
    type: "Item",
))[Found in #inline_content("mossy_trail", "Mossy Trail", custom: true) Vaults. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #dirt.txt. When grown, it can be harvested to obtain #bloomguard.txt and can also drop 1-3 Seeds.]

#top_grid(col: 2, item-tooltip(
    protobean,
    type: "Item",
))[Obtained from #inline_content("mossy_trail", "Mossy Trail", custom: true) loot. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #dirt.txt. When grown, it can be harvested to obtain #(bean_pod.txt-param)[Bean Pods].]

#top_grid(
    col: 2,
    item-tooltip(
        sour_kernel,
        type: "Item",
    ),
    recipe3x3(
        ghast_tear,
        beetroot,
        resin_clump,
        magma_cream,
        none,
        none,
        none,
        none,
        none,
        result: sour_kernel,
        shapeless: true,
    ),
    pb: false,
)
Can be inserted in a #pale_oak_log.txt placed in an #etched_vase.txt. After some time, it will overcome the log, turning it into a #glutted_log.txt.
#pagebreak()

#top_grid(col: 2, item-tooltip(
    tangleroot,
    type: "Item",
))[Found in #inline_content("mossy_trail", "Mossy Trail", custom: true) Vaults. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #moss_block.txt. When grown, it can be harvested to obtain #(rootsplit_sickle.txt-param)[Rootsplit Sickles].]

#top_grid(col: 2, item-tooltip(
    bloom_bud,
    type: "Item",
))[Obtained from #(murky_crevice.txt-param)[Murky Crevices]. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #mud.txt. When grown, it can be harvested to obtain #(blooming_bulb.txt-param)[Blooming Bulbs].]

#top_grid(col: 2, item-tooltip(
    azure_thistle_seeds,
    type: "Item",
))[Found in #inline_content("mossy_trail", "Mossy Trail", custom: true) Vaults. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #moss_block.txt. When grown, it can be harvested to obtain #(azure_thistle.txt-param)[Azure Thistles].]

#top_grid(col: 2, item-tooltip(
    scarlet_fang_root,
    type: "Item",
))[Obtained from #(murky_crevice.txt-param)[Murky Crevices]. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #soul_soil.txt. When grown, it can be harvested to obtain #(scarlet_fang.txt-param)[Scarlet Fangs].]

#top_grid(col: 2, item-tooltip(
    wildstep_seed,
    type: "Item",
))[Obtained from #(murky_crevice.txt-param)[Murky Crevices]. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #moss_block.txt. When grown, it can be harvested to obtain #wildstep_pods.txt.]

#top_grid(col: 2, item-tooltip(
    bursting_bud,
    type: "Item",
))[Obtained from #(murky_crevice.txt-param)[Murky Crevices]. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #mud.txt. When grown, it can be harvested to obtain #bursting_blossom.txt.]

#top_grid(
    col: 2,
    item-tooltip(
        pointerpod,
        type: "Item",
        alt: "item/pointerpod_long.png",
    ),
    recipe2x2(
        wheat_seeds,
        wheat_seeds,
        wheat_seeds,
        wheat_seeds,
        result: pointerpod,
    ),
    pb: false,
)
Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #sand.txt. When grown, it can be harvested to obtain #(twining_tendril.txt-param)[Twining Tendrils].
#pagebreak()

#top_grid(col: 2, item-tooltip(
    baby_cobbler,
    type: "Item",
))[Obtained from #(murky_crevice.txt-param)[Murky Crevices]. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #soul_soil.txt. When grown, it will become a #cobbler.txt.]

== Tools & Weapons

#top_grid(
    col: 2,
    pb: false,
    item-tooltip(
        bloomguard,
        type: "Tool",
        alt: "../resourcepack/assets/brg/textures/item/bloomguard_blocking.png",
    ),
    rad(ctrl: 0.3, def: 0.8, dmg: 0.5, heal: 0, range: 0.9, spd: 0.5),
)

Obtained from grown #(bloomguard_seed.txt-param)[Bloomguard Seeds]. Also drops 1-3 seeds when broken. When in your mainhand, holding and releasing #inputs.use will let you throw the Bloomguard, dealing #damage(5). When in offhand, the Bloomguard opens, so that it can be used as a shield. Blocking an attack will break the Bloomguard, removing one from the item stack used.
#pagebreak()

#top_grid(
    col: 2,
    pb: false,
    item-tooltip(
        rootsplit_sickle,
        type: "Tool",
        max_stack: 1,
        durability: 465,
        alt: "/resourcepack/assets/brg/textures/item/rootsplit_staff_small.png",
    ),
    rad(ctrl: 0.1, def: 0.0, dmg: 0.8, heal: 0, range: 0.2, spd: 0.4),
)
Obtained from grown #(tangleroot.txt-param)[Tangleroots]. The Sickle deals #damage(6), has 2.8 attack speed, and -1 attack range. If you are holding a sickle in both the mainhand and offhand, holding #inputs.use will cause them to fuse into one, becoming a Rootsplit Staff. When fusing the Sickles you gain Speed I for 10 seconds and Hunger II for 20 seconds. The Staff deals #damage(8), has 0.8 attack speed and +1 attack range. The Staff has 20 durability, and will break into two sickles, dealing #health(5)[splinter Damage] to the wielder. The durability will also be split equally between the two Sickles.

#pagebreak()

#top_grid(col: 2, item-tooltip(
    blooming_bulb,
    max_stack: 1,
    type: "Tool",
))[Obtained from grown #(bloom_bud.txt-param)[Bloom Buds]. When in your inventory, taking damage will charge a bar in the bulb. After taking damage 13 times, it will heal the player for #health(6)[health].]

#top_grid(col: 2, item-tooltip(
    azure_thistle,
    type: "Tool",
))[Obtained from grown #azure_thistle_seeds.txt. Also drops 1-2 seeds when broken. Azure Thistles can be used as arrows. Mobs hit will take an additional #damage(2) every time they are hurt for 20 seconds.]

#top_grid(
    col: 2,
    pb: false,
    item-tooltip(
        scarlet_fang,
        type: "Tool",
        max_stack: 1,
        durability: 142,
    ),
    rad(ctrl: 0.1, def: 0.0, dmg: 0.6, heal: 0.3, range: 0.4, spd: 0.8),
)
Obtained from grown #(scarlet_fang_root.txt-param)[Scarlet Fang Roots]. Pressing #inputs.use will drain #health(4)[health] from the player and release a homing Crimson Spore that targets the nearest entity. The spores deal #damage(4) and decay after 1 second. If a spore hits an entity, the owner will be healed for #health(4)[health].

#pagebreak()

#top_grid(col: 2, item-tooltip(
    intertwined_goat_horn,
    type: "Tool",
    max_stack: 1,
))[Obtained from #(cobbler.txt-param)[Cobbler] crafting. Holding #inputs.use will launch the player. There is a 25 second cooldown.]

#top_grid(
    col: 2,
    pb: false,
    item-tooltip(
        intertwined_crossbow,
        type: "Tool",
        max_stack: 1,
    ),
    rad(ctrl: 0.8, def: 0.0, dmg: 0.5, heal: 0, range: 1, spd: 0.2),
)
Obtained from #(cobbler.txt-param)[Cobbler] crafting. Consumes 10 durability to shoot an arrow that binds mobs near the one that it hits together for 2.5 seconds.

#pagebreak()

#top_grid(col: 2, pb: false, item-tooltip(
    intertwined_spear,
    type: "Tool",
    max_stack: 1,
),rad(ctrl: 0.8, def: 0.0, dmg: 0.6, heal: 0, range: 0.3, spd: 0.7))
Obtained from #(cobbler.txt-param)[Cobbler] crafting. When attacking it looses 3 durability to cast a torny vine that deals #damage(2) to entities that come in cotact with it. Can be crafted from any spear.

#pagebreak()

#top_grid(col: 2, item-tooltip(
    twining_tendril,
    type: "Tool",
))[Obtained from grown #(pointerpod.txt-param)[Pointerpods]. Used to open #(vault.txt-param)[Vaults] located in  #inline_content("mossy_trail", "Mossy Trails", custom: true).]

== Equipment
#top_grid(col: 2, item-tooltip(
    wildstep_pods,
    type: "Armor",
    max_stack: 1,
))[Obtained from grown #(wildstep_seed.txt-param)[Wildstep Seeds]. When worn, they will convert underneath #dirt.txt into #(grass_block.txt-param)[Grass], consuming durability in the process.]

#top_grid(
    col: 2,
    item-tooltip(
        straw_hat,
        type: "Equipment",
        max_stack: 1,
    ),
    recipe3x3(
        none,
        wheat,
        none,
        wheat,
        string,
        wheat,
        none,
        none,
        none,
        result: straw_hat,
    ),
    pb: false,
)
Can be dyed. When worn, #link(<seeds>)[Seeds] planted in #(etched_vase.txt-param)[Etched Vases] will grow slightly faster.
#pagebreak()

#top_grid(col: 2, item-tooltip(
    appalling_shinguards,
    type: "Armor",
))[Obtained from #(murky_crevice.txt-param)[Murky Crevices]. When worn, it increases armor by  1.5 for every mob that is currently targeting the wearer. Caps at 8 armor.]

== Other
#top_grid(col: 2, item-tooltip(
    bean_pod,
    type: "Item",
))[Obtained from grown #(protobean.txt-param)[Protobeans]. Can be opened to obtain 3-5 #(bean.txt-param)[Beans].]

#top_grid(col: 2, item-tooltip(
    bean,
    type: "Currency",
))[Obtained from opening #(bean_pod.txt-param)[Bean Pods]. Used as currency by the creature inside the #glutted_log.txt. Cannot be planted.]

#top_grid(col: 2, item-tooltip(
    goop_bottle,
    type: "Item",
))[Obtained from opening #(spile.txt-param)[Spiles]. When used on a seed in an #etched_vase.txt, it will increase its growth stage by 2.]

#top_grid(col: 2, item-tooltip(
    bursting_blossom,
    type: "Item",
))[Obtained from grown #(bursting_bud.txt-param)[Bursting Buds]. Can be replanted in #(etched_vase.txt-param)[Etched Vases] by clicking #inputs.use. If the vase its planted in gets powered by redstone, the blossom will start floating in the air, and will pop after 5 seconds. After it pops, it will shoot 6 homing petals target entities in a 20 block radius. When hitting an entity, the petal deals #damage(6) and has a 5% chance to spawn a #bursting_bud.txt. If hit by a projectile, the blossom will pop and its petals won't target the owner of that projectile.]

#top_grid(
    col: 2,
    item-tooltip(
        seedbook,
        type: "Item",
        max_stack: 1,
    ),
    recipe2x2(
        book,
        wheat_seeds,
        none,
        none,
        result: seedbook,
    ),
    pb: false,
)
When opened, the user can view the soil required by seeds to grown in an #etched_vase.txt. The pages unlock as the user collects the seeds.
#pagebreak()

#top_grid(
    col: 2,
    item-tooltip(
        damp_notes,
        type: "Item",
        max_stack: 1,
    ),
    [These notes are collected from the mouth of a #cobbler.txt. They contain information of all the combinations a Cobbler can do.],
)

#top_grid(col: 2, item-tooltip(
    sugarcoated_bean,
    type: "Item",
))[Obtained from #cobbler.txt crafting. When left in front of a #murky_crevice.txt, it will cause the creature that inhabits the crevice to leave it, dropping a #crackle.txt in the process.]

#top_grid(col: 2, item-tooltip(
    intwine,
    type: "Item",
))[Obtained from #(murky_crevice.txt-param)[Murky Crevices]. Used in #cobbler.txt crafting recipes to make intertwined items. Using a #grindstone.txt will remove the intertwined upgrade.]

= Blocks
== Functional

#top_grid(
    col: 2,
    item-tooltip(
        etched_vase,
        type: "Block",
    ),
    recipe3x3(
        nether_brick,
        none,
        nether_brick,
        nether_brick,
        none,
        nether_brick,
        none,
        nether_brick,
        none,
        result: etched_vase,
    ),
    pb: false,
)

Can be filled up with various "soil" blocks to grow different plants. Press #inputs.use to place soil and seeds. Press #inputs.attack to remove them. Pressing #inputs.attack 4 times quickly when the vase is empty will break it. Vases can be powered with redstone to immediately make them drop the seed/plant they were holding.\
Each second there's a 5% chance for the seeds growth stage to be increased by 1.
#align(center, [*In order for the seeds to to grow, the Vase has to be in direct skylight*])
#align(center, table(
    columns: 4,
    align: horizon,
    inset: 4pt,
    [Soil],
    [Seed],
    [Result],
    [Stages],
    // dirt
    table.cell(rowspan: 2, dirt.txt),
    protobean.txt, bean_pod.txt, [14],
    bloomguard_seed.txt, bloomguard.txt, [17],
    // moss block
    table.cell(rowspan: 3, moss_block.txt),
    azure_thistle_seeds.txt, azure_thistle.txt, [19],
    tangleroot.txt, rootsplit_sickle.txt, [16],
    wildstep_seed.txt, wildstep_pods.txt, [20],
    // pale oak log
    pale_oak_log.txt,
    sour_kernel.txt, glutted_log.txt, [24],
    // mud
    table.cell(rowspan: 2, mud.txt),
    bloom_bud.txt, blooming_bulb.txt, [16],
    bursting_bud.txt, bursting_blossom.txt, [18],

    // soul soil
    table.cell(rowspan: 2, soul_soil.txt),
    scarlet_fang_root.txt, scarlet_fang.txt, [25],
    baby_cobbler.txt, cobbler.txt, [32],
    // sand
    sand.txt,
    pointerpod.txt, twining_tendril.txt, [14],
))
#pagebreak()

#top_grid(col: 2, item-tooltip(
    glutted_log,
    type: "Block",
))[
    A Glutted Log is formed when a #pale_oak_log.txt harboring a #sour_kernel.txt is placed in an #etched_vase.txt. If #(bean.txt-param)[Beans] are left nearby a Glutted Log, they will attract a mysterious creature that is drawn to them. Upon arrival, the entity will steal the beans and make log into its den, turning it into a #murky_crevice.txt.
]

#top_grid(col: 2, item-tooltip(
    murky_crevice,
    type: "Block",
))[
    Created when a mysterious creature takes residence within a #glutted_log.txt. If #(bean.txt-param)[Beans] are left at the entrance, a clawed limb will emerge from the crevice to seize the offering, returning after some time to deposit a reward.
    #table(
        columns: 2,
        [Reward], [Weight],
        wildstep_seed.txt, [2],
        scarlet_fang_root.txt, [2],
        bloom_bud.txt, [2],
        appalling_shinguards.txt, [2],
        baby_cobbler.txt, [3],
        intwine.txt, [4],
        bursting_bud.txt, [2],
    )
]

#top_grid(
    col: 2,
    item-tooltip(
        spile,
        type: "Block",
    ),
    recipe3x3(
        none,
        iron_ingot,
        none,
        iron_ingot,
        iron_ingot,
        iron_ingot,
        iron_ingot,
        none,
        none,
        result: spile,
    ),
    pb: false,
)
Click #inputs.use when holding a #glass_bottle.txt to attach it to the Spile. Click #input with any other item to collect the item attached to the Spile.  When the spile is placed on the side of an #(creaking_heart.txt-param)[Awake Creaking Heart], it will fill the bottle with #(goop_bottle.txt-param)[Goop], with a %5% chance to deplete the Creaking Heart's Goop, converting it into a #pale_oak_log.txt.

If there is no block for the Spile to hold on to, the model will appear on the ground with no knob.
#pagebreak()

#top_grid(
    col: 2,
    item-tooltip(
        cobbler,
        type: "Block",
    ),
    pb: false,
)[
    Obtained from grown #(baby_cobbler.txt-param)[Baby Cobblers] placed in an #etched_vase.txt. When they grow, they will have a #damp_notes.txt in their mouth. Items in the Cobbler's mouth can be removed with #inputs.attack. Cobblers can't be removed from their vase by clicking #inputs.attack, they can only be removed if the vase is broken or powered by redstone. You can feed it items with #inputs.use to combine them into new ones. Cobblers only have 2 slots. Items can be removed by tickling it with a #feather.txt.\
]
If items corresponding to a recipe are in its mouth, it will start combining them.
#align(
    center,
    table(
        columns: 2,
        [Ingredients], [Result],
        [#bean.txt + #sugar.txt], [#sugarcoated_bean.txt],
        [#bean.txt + #gold_block.txt], [#protobean.txt],
        [#goat_horn.txt + #intwine.txt], [#intertwined_goat_horn.txt],
        [#crossbow.txt + #intwine.txt], [#intertwined_crossbow.txt],
        [#(wooden_spear.txt-param)[Any Spear] + #intwine.txt], [#intertwined_spear.txt],
    ),
)

#pagebreak()

#top_grid(col: 2, item-tooltip(
    crackle,
    type: "Block",
    rarity: rarity.uncommon,
    max_stack: 1,
))[
    A Crackle is obtained when a #murky_crevice.txt takes a #sugarcoated_bean.txt, instead of a normal #bean.txt. When placed, pressing #inputs.use will display the held item with its claw. If it's powered by redstone, its claw will spin. A Crackle can be equipped in the head slot, and has no effect whatsoever other than looking cute.
]

= Structures
#let feature_content(columns, title, ..children) = align(center, grid(
    columns: columns,
    align: center,
    inset: 3pt,
    grid.cell(colspan: columns, text(weight: "bold", title)), ..children
))

#table()
== Mossy Trail <mossy_trail>
Found in the #inline_content("plains", "Plains") biome.

#feature_content(
    4,
    [Obtainable Loot],
    protobean.txt,
    bloomguard.txt,
    azure_thistle_seeds.txt,
    etched_vase.txt,
    tangleroot.txt,
)
