#import "variables.typ": *


#rarity.insert("currency", (id: "Currency", color: rgb("#55FF55")))

#let top_grid(col: 2, ..content) = [
  #grid(
    columns: 3,
    align: top,
    gutter: 10pt,
    ..content,
  )
  #pagebreak()

]
#set text(font: "Book Antiqua", size: 10pt)
#set page(margin: 15pt, height: auto, header: context {
  let aft-bef(sel) = {
    let before = query(sel.before(here()))
    let in-page = query(sel).find(m => m.location().page() == here().page())

    if in-page != none { in-page } else if before != () { before.last() }
  }

  let h2 = aft-bef(heading.where(level: 2))
  let h1 = aft-bef(heading.where(level: 1))

  set align(right)
  let r = []
  if h1 != none { r += h1.body }
  if h2 != none { r += [\/] + h2.body }
  text(size: 8pt, (rgb("#3a3a3a")), r)
})

#show heading.where(level: 1): none
#show heading.where(level: 2): none

#show table.cell: it => {
  if it.y == 0 {
    align(center, strong(it))
  } else {
    it
  }
}

#align(center, text(22pt)[
  *Burgeon*
])

#outline(title: none)
#pagebreak()



= Items
== Seeds
#top_grid(col: 2, item-tooltip(
  bloomguard_seed,
  type: "Item",
))[Found in #inline_content("mossy_trail", "Mossy Trail", custom: true) Vaults. Can be planted in #inline_item_text("Etched Vases", etched_vase) filled with #inline_item(dirt). When fully grown, it can be harvested to obtain #inline_item_text("Bloomguard", bloomguard) and can also drop 1-3 Seeds.]

#top_grid(col: 2, item-tooltip(
  protobean,
  type: "Item",
))[Obtained from #inline_content("mossy_trail", "Mossy Trail", custom: true) loot. Can be planted in #inline_item_text("Etched Vases", etched_vase) filled with #inline_item(dirt). When fully grown, it can be harvested to obtain #inline_item_text("Bean Pods", bean_pod).]

#top_grid(
  col: 2,
  item-tooltip(
    sour_kernel,
    type: "Item",
  ),
  recipe3x3(ghast_tear, beetroot, resin_clump, magma_cream, none, none, none, none, none, sour_kernel, shapeless: true),
)[Can be inserted in a #inline_item(pale_oak_log) placed in an #inline_item(etched_vase). After some time, it will overcome the log, turning it into a #inline_item(glutted_log).]

#top_grid(col: 2, item-tooltip(
  tangleroot_seed,
  type: "Item",
))[Found in #inline_content("mossy_trail", "Mossy Trail", custom: true) Vaults. Can be planted in #inline_item_text("Etched Vases", etched_vase) filled with #inline_item(moss_block). When fully grown, it can be harvested to obtain #inline_item(rootsplit_sickle).]

== Tools & Weapons

#top_grid(col: 2, item-tooltip(
  sap_bucket,
  max_stack: 1,
  type: "Tool",
))[Obtained from #inline_item_text("Spiles", spile)  attached to #inline_item_text("active Creaking Hearts", creaking_heart).]

#top_grid(col: 2, item-tooltip(
  bloomguard,
  type: "Tool",
  alt: "items/bloomguard_open.png",
))[Obtained from grown #inline_item_text("Bloomguard Seeds", bloomguard_seed). Also drops 1-3 seeds when broken. When in your mainhand, holding and releasing the use button will let you throw the Bloomguard, dealing #damage(5). When in offhand, the Bloomguard opens, so that it can be used as a shield. Blocking an attack will break the Bloomguard, removing one from the item stack used.]

#top_grid(col: 2, item-tooltip(
  rootsplit_sickle,
  type: "Tool",
  durability: 145,
  alt: "items/rootsplit_staff.png",
))[Obtained from grown #inline_item_text("Tangleroot Seeds", tangleroot_seed). The Sickle deals #damage(6) and has 2 attack speed. If you are holding a sickle in both the mainhand and offhand, holding the use button will cause them to fuse into one, becoming a Rootsplit Staff. The Staff deals #damage(8) and has 1 attack speed. The durability of the stuff is the sum of the durability from the two sickles. Holding sprint + use will split the staff back in the two sickles. The durability will also be split equally among the two Sickles.]

== Other
#top_grid(col: 2, item-tooltip(
  bean_pod,
  type: "Item",
))[Obtained from fully grown #inline_item_text("Protobeans", protobean). Can be opened to obtain 1-4 #inline_item_text("Beans", bean).]

#top_grid(col: 2, item-tooltip(
  bean,
  type: "Currency",
))[Obtained from opening #inline_item_text("Bean Pods", bean_pod). Used as currency by the creature inside the #inline_item(glutted_log). Cannot be planted.]

= Blocks

#top_grid(
  col: 2,
  item-tooltip(
    spile,
    type: "Block",
  ),
  recipe3x3(none, iron_ingot, none, iron_ingot, iron_ingot, iron_ingot, iron_ingot, none, none, spile),
)[Used to extract #inline_item_text("Sap", sap_bucket) from #inline_item_text("active Creaking Hearts", creaking_heart). Each time a #inline_item(bucket) is filled, there is a 10% chance to convert the Heart into a #inline_item(pale_oak_log).]

#top_grid(
  col: 3,
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
    etched_vase,
  ),
)[Can be filled up with various blocks to grow different plants.
  #table(
    columns: 3,
    align: horizon,
    inset: 4pt,
    [Block],
    [Seed],
    [Result],
    table.cell(rowspan: 2, inline_item(dirt)),
    inline_item(protobean),
    inline_item(bean_pod),
    inline_item(bloomguard_seed),
    inline_item(bloomguard),
    inline_item(moss_block),
    inline_item(tangleroot_seed),
    inline_item(rootsplit_sickle),
    inline_item(pale_oak_log),
    inline_item(sour_kernel),
    inline_item(glutted_log),
  )]

#top_grid(col: 2, item-tooltip(
  glutted_log,
  type: "Block",
))[
  Formed when a #inline_item(pale_oak_log) harboring a #inline_item(sour_kernel) is placed within an #inline_item(etched_vase). If #inline_item_text("Beans", bean) are left nearby a Glutted Log, they will attract a mysterious creature drawn to the offering. Upon arrival, the entity will steal the beans and take residence within the log, turning it into a #inline_item(murky_crevice).
]

#top_grid(col: 2, item-tooltip(
  murky_crevice,
  type: "Block",
))[
  Created when a mysterious creature takes residence within a #inline_item(glutted_log). If #inline_item_text("Beans", bean) are left at the entrance, a clawed limb will emerge from the crevice to seize the offering, returning after some time to deposit a reward.]

= Structures

== Mossy Trail <mossy_trail>
Found in #inline_content("plains", "Plains") biomes.

= Rituals
Use special type of plant in etched vase. The plant overruns the vase turning it into a wishing well of sorts. Plant found via archaeology? Sniffer in special biome? Crafted?

- More beans when opening pods or convert bean back to protobean
- Summon the thing that accepts beans as Currency
- Summon cat or dog variant
