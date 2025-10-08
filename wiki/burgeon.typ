#import "variables.typ": *
#import "template.typ": template


#rarity.insert("currency", (id: "Currency", color: rgb("#55FF55")))

#let top_grid(col: 2, ..content, pb: true) = {
    grid(
        columns: 3,
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
))[Found in #inline_content("mossy_trail", "Mossy Trail", custom: true) Vaults. Can be planted in #(etched_vase.txt-param)[Etched Vaeses] filled with #dirt.txt. When fully grown, it can be harvested to obtain #bloomguard.txt and can also drop 1-3 Seeds.]

#top_grid(col: 2, item-tooltip(
    protobean,
    type: "Item",
))[Obtained from #inline_content("mossy_trail", "Mossy Trail", custom: true) loot. Can be planted in #(etched_vase.txt-param)[Etched Vaeses] filled with #dirt.txt. When fully grown, it can be harvested to obtain #(bean_pod.txt-param)[Bean Pods].]

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
))[Found in #inline_content("mossy_trail", "Mossy Trail", custom: true) Vaults. Can be planted in #(etched_vase.txt-param)[Etched Vaeses] filled with #moss_block.txt. When fully grown, it can be harvested to obtain #(rootsplit_sickle.txt-param)[Rootsplit Sickles].]

#top_grid(col: 2, item-tooltip(
    bloom_bud,
    type: "Item",
))[Obtained from #(murky_crevice.txt-param)[Murky Crevices]. Can be planted in #(etched_vase.txt-param)[Etched Vaeses] filled with #mud.txt. When fully grown, it can be harvested to obtain #(blooming_bulb.txt-param)[Blooming Bulbs].]

#top_grid(col: 2, item-tooltip(
    azure_thistle_seeds,
    type: "Item",
))[Found in #inline_content("mossy_trail", "Mossy Trail", custom: true) Vaults. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #moss_block.txt. When fully grown, it can be harvested to obtain #(azure_thistle.txt-param)[Azure Thistles].]

#top_grid(col: 2, item-tooltip(
    scarlet_fang_root,
    type: "Item",
))[Obtained from #(murky_crevice.txt-param)[Murky Crevices]. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #soul_soil.txt. When fully grown, it can be harvested to obtain #(scarlet_fang.txt-param)[Scarlet Fangs].]

#top_grid(col: 2, item-tooltip(
    wildstep_seed,
    type: "Item",
))[Obtained from #(murky_crevice.txt-param)[Murky Crevices]. Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #moss_block.txt. When fully grown, it can be harvested to obtain #wildstep_pods.txt.]

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
Can be planted in #(etched_vase.txt-param)[Etched Vases] filled with #sand.txt. When fully grown, it can be harvested to obtain #(twining_tendril.txt-param)[Twining Tendrils].
#pagebreak()

== Tools & Weapons

#top_grid(col: 2, item-tooltip(
    bloomguard,
    type: "Tool",
    alt: "../resourcepack/assets/brg/textures/item/bloomguard_blocking.png",
))[Obtained from grown #(bloomguard_seed.txt-param)[Bloomguard Seeds]. Also drops 1-3 seeds when broken. When in your mainhand, holding and releasing #inputs.use will let you throw the Bloomguard, dealing #damage(5). When in offhand, the Bloomguard opens, so that it can be used as a shield. Blocking an attack will break the Bloomguard, removing one from the item stack used.]

#top_grid(col: 2, item-tooltip(
    rootsplit_sickle,
    type: "Tool",
    max_stack: 1,
    durability: 465,
    alt: "/resourcepack/assets/brg/textures/item/rootsplit_sickle_combined_small.png",
))[Obtained from grown #(tangleroot.txt-param)[Tangleroots]. The Sickle deals #damage(6), has 2.8 attack speed, and -1 attack range. If you are holding a sickle in both the mainhand and offhand, holding #inputs.use will cause them to fuse into one, becoming a Rootsplit Staff. The Staff deals #damage(7), has 0.8 attack speed and +1 attack range. The durability of the Staff is the sum of the durability from the two sickles. Pressing #inputs.use while your offhand is empty will split the Staff back in the two sickles. The durability will also be split equally among the two Sickles.]

#top_grid(col: 2, item-tooltip(
    blooming_bulb,
    max_stack: 1,
    type: "Tool",
))[Obtained from grown #(bloom_bud.txt-param)[Bloom Buds]. When in your inventory, taking damage will charge a bar in the bulb. After taking damage 13 times, it will heal the player for #health(6)[health].]

#top_grid(col: 2, item-tooltip(
    azure_thistle,
    type: "Tool",
))[Obtained from grown #azure_thistle_seeds.txt. Also drops 1-2 seeds when broken. Azure Thistles can be used as arrows. Mobs hit will take an additional #damage(2) every time they are hurt for 20 seconds.]

#top_grid(col: 2, item-tooltip(
    scarlet_fang,
    type: "Tool",
    max_stack: 1,
    durability: 142
))[Obtained from grown #(scarlet_fang_root.txt-param)[Scarlet Fang Roots]. Pressing #inputs.use will drain #health(4)[health] from the player and release a homing Crimson Spore that targets the nearest entity. The spores deal #damage(4) and decay after 1 second. If a spore hits an entity, the owner will be healed for #health(4)[health].]


#top_grid(col: 2, item-tooltip(
    twining_tendril,
    type: "Tool",
))[Obtained from grown #(pointerpod.txt-param)[Pointerpods]. Used to open #(vault.txt-param)[Vaults] located in  #inline_content("mossy_trail", "Mossy Trails", custom: true).]

= Equipment
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

== Other
#top_grid(col: 2, item-tooltip(
    bean_pod,
    type: "Item",
))[Obtained from grown #(protobean.txt-param)[Protobeans]. Can be opened to obtain 3-6 #(bean.txt-param)[Beans].]

#top_grid(col: 2, item-tooltip(
    bean,
    type: "Currency",
))[Obtained from opening #(bean_pod.txt-param)[Bean Pods]. Used as currency by the creature inside the #glutted_log.txt. Cannot be planted.]


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

Can be filled up with various "soil" blocks to grow different plants. Press #inputs.use to place soil and seeds. Press #inputs.attack to remove them. Pressing #inputs.attack 4 times quickly when the vase is empty will break it.
#table(
    columns: 3,
    align: horizon,
    inset: 4pt,
    [Soil],
    [Seed],
    [Result],
    // dirt
    table.cell(rowspan: 2, dirt.txt),
    protobean.txt, bean_pod.txt,
    bloomguard_seed.txt, bloomguard.txt,
    // moss block
    table.cell(rowspan: 3, moss_block.txt),
    azure_thistle_seeds.txt, azure_thistle.txt,
    tangleroot.txt, rootsplit_sickle.txt,
    wildstep_seed.txt, wildstep_pods.txt,
    // pale oak log
    pale_oak_log.txt,
    sour_kernel.txt, glutted_log.txt,
    // mud
    mud.txt,
    bloom_bud.txt, blooming_bulb.txt,
    // soul soil
    soul_soil.txt,
    scarlet_fang_root.txt, scarlet_fang.txt,
    // sand
    sand.txt,
    pointerpod.txt, twining_tendril.txt,
)

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
        wildstep_seed.txt, [3],
        scarlet_fang_root.txt, [3],
        bloom_bud.txt, [3],
        eyeblossom.txt, [2],
    )
]

= Structures

== Mossy Trail <mossy_trail>
Found in the #inline_content("plains", "Plains") biome.
Obtainable loot:
- #protobean.txt
- #bloomguard.txt
- #azure_thistle_seeds.txt
- #etched_vase.txt
- #tangleroot.txt
