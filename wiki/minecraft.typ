#import "@preview/cetz:0.3.4"

#let pixel = 1.5pt

#let rarity = (
  common: (id: "Common", color: black),
  uncommon: (id: "Uncommon", color: rgb("#FFFF55")),
  rare: (id: "Rare", color: rgb("#55FFFF")),
  epic: (id: "Epic", color: rgb("#FF55FF")),
)

#let inline_item_text(t, item) = text(
  fill: blue,
box(scale(item.img_with_link, x: pixel * 8, y: pixel * 8, reflow: true), baseline:20%) + underline(link(item.url, t))
)

#let inline_item(item) = text(inline_item_text(
  item.name,
  item,
))

#let inline_content(dest, content, custom: false) = text(fill: blue, if (custom == true) {
  underline(link(label(dest), content))
} else { underline(link("https://minecraft.wiki/w/" + dest, content)) })



#let arrow = cetz.canvas(length: pixel, {
  import cetz.draw: *
  line(
    (0, 5),
    (9, 5),
    (9, -.5),
    (16, 6.5),
    (9, 13.5),
    (9, 8),
    (0, 8),
    close: true,
    fill: rgb("#8b8b8b"),
    stroke: none,
  )
})

#let load_image(path, size) = {
  image(
    path,
    width: size * pixel,
    height: size * pixel,
    scaling: "pixelated",
  )
}

#let health(path) = {
  box(baseline: 17%, load_image(path + ".png", 4), inset: 1pt)
}

#let heart = health("health")

#let heart_half = health("health_half")

#let damage(amount) = {
  let full = calc.floor(amount / 2)
  let half = calc.rem-euclid(amount, 2)

  let hearts = heart * full + if half == 1 { heart_half }
  [#amount (#hearts) damage]
}



#let entry(id, name, custom, size, path, type) = {
  let url
  let i = load_image(
    path + "/" + id + ".png",
    size,
  )
  if (custom == true) {
    url = label(id)
  } else { url = "https://minecraft.wiki/w/" + id }

  let grid_image = i
  if (type == "block") {
    grid_image = image(
      path + "/" + id + ".png",
      width: size * 4 * pixel,
      height: size * 4 * pixel,
      scaling: "pixelated",
    )
  }
  return (
    id: id,
    image: i,
    img_with_link: link(url, i),
    name: name,
    custom: custom,
    url: url,
    title_image: box(scale(i, x: pixel * 10, y: pixel * 10, reflow: true), baseline: 20%),
    grid_image: link(url, grid_image),
    header: [#heading(depth: 2, name)#label(id)],
  )
}

#let item(id, name, custom: false) = entry(id, name, custom, 16, "items", "item")
#let block(id, name, custom: false) = entry(id, name, custom, 4, "blocks", "block")

#let item-box(item, size: 16 * pixel) = pad(pixel / 2, box(
  fill: rgb("#8b8b8b"),
  stroke: (
    top: rgb("#373737") + pixel,
    left: rgb("#373737") + pixel,
    bottom: rgb("#ffffff") + pixel,
    right: rgb("#ffffff") + pixel,
  ),
  width: size + pixel,
  height: size + pixel,
  if (item == none) { align(center + horizon, []) } else {
    align(center + horizon, item.grid_image)
  },
))

#let fake-item-box(img, size: 16 * pixel) = pad(pixel / 2, box(
  fill: rgb("#8b8b8b"),
  stroke: (
    top: rgb("#373737") + pixel,
    left: rgb("#373737") + pixel,
    bottom: rgb("#ffffff") + pixel,
    right: rgb("#ffffff") + pixel,
  ),
  width: size + pixel,
  height: size + pixel,

  align(center + horizon, load_image(img, 16)),
))

#let recipe3x3(tl, tm, tr, ml, mm, mr, bl, bm, br, result,shapeless:false) = {
  set align(center)
  show: box.with(
    fill: rgb("#c6c6c6"),
    inset: 8 * pixel,
    radius: 1 * pixel,
  )
  let shaped = none
  if(shapeless == true) {
    shaped = [ (Shapeless)]
  }
  show: align.with(horizon)
  align(left, text([Crafting] + shaped , font: "Minecraftia", fill: rgb("#373737")))
  stack(
    dir: ltr,
    spacing: 2 * pixel,
    grid(
      columns: 3,
      item-box(tl), item-box(tm), item-box(tr),
      item-box(ml), item-box(mm), item-box(mr),
      item-box(bl), item-box(bm), item-box(br),
    ),

    arrow,

    item-box(result, size: 18 * pixel),
  )
}

#let recipe2x2(tl, tr, bl, br, result) = {
  set align(center)
  show: box.with(
    fill: rgb("#c6c6c6"),
    inset: 8 * pixel,
    radius: 1 * pixel,
  )

  show: align.with(horizon)
  align(left, text([Crafting], font: "Minecraftia", fill: rgb("#373737")))
  stack(
    dir: ltr,
    spacing: 2 * pixel,
    grid(
      columns: 2,
      item-box(tl), item-box(tr),
      item-box(bl), item-box(br),
    ),

    arrow,

    item-box(result, size: 18 * pixel),
  )
}

#let item-tooltip(
  item,
  rarity: rarity.common,
  max_stack: 64,
  type: "Material",
  size: 16 * pixel,
  alt: none,
  durability: none,
) = {
  let get_img(alt) = {
    if (alt == none) { none } else {
      fake-item-box(alt)
    }
  }


  set align(center)
  set text(font: "Minecraftia")
  show: box.with(
    fill: rgb("#c6c6c6"),
    inset: 8 * pixel,
    radius: 1 * pixel,
  )

  show: align.with(horizon + center)
  stack(
    dir: ttb,
    [#heading(depth:3, item.name) #label(item.id)],
    pad(pixel / 2, stack(
      dir: ltr,
      pad(pixel / 2, box(
        fill: rgb("#8b8b8b"),
        stroke: (
          top: rgb("#373737") + pixel,
          left: rgb("#373737") + pixel,
          bottom: rgb("#ffffff") + pixel,
          right: rgb("#ffffff") + pixel,
        ),
        width: size + pixel,
        height: size + pixel,
        align(center + horizon, item.grid_image),
      )),
      get_img(alt),
    )),
    v(20pt),
    align(
      left,
      text(
        fill: rgb("#373737"),
        size: 9pt,
        [Rarity: #text(fill: rarity.color, rarity.id)\ Max Stack Size: #text(fill: black, [#max_stack])\ Type: #text(fill: black, type)
          #if (durability != none) {
            [\ Max Durability: #text(fill: black, [#durability])]
          }],
      ),
    ),
  )
}
