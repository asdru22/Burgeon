#import "@preview/cetz:0.3.4"


#let mc-settings = (
    "pixel": 1.5pt,
    "external-resources": "../resourcepack/assets/brg/textures/",
)

#let rarity = (
    common: (id: "Common", color: black),
    uncommon: (id: "Uncommon", color: rgb("#FFFF55")),
    rare: (id: "Rare", color: rgb("#55FFFF")),
    epic: (id: "Epic", color: rgb("#FF55FF")),
)


#let inline_content(dest, content, custom: false) = text(fill: blue, if (custom == true) {
    underline(link(label(dest), content))
} else { underline(link("https://minecraft.wiki/w/" + dest, content)) })


#let load-rp-image(size, id, type) = {
    let root = mc-settings.at("external-resources", default: "textures")
    image(
        root + "/" + type + "/" + id + ".png",
        width: size * mc-settings.pixel,
        height: size * mc-settings.pixel,
        scaling: "pixelated",
    )
}

#let load-image(path, size) = image(
    path,
    width: size * mc-settings.pixel,
    height: size * mc-settings.pixel,
    scaling: "pixelated",
)

#let load-image-scale(path, width, height) = image(
    path,
    width: width * mc-settings.pixel,
    height: height * mc-settings.pixel,
    scaling: "pixelated",
)

#let arrow = load-image("icons/crafting_arrow.png", 22)


#let health(path) = {
    box(baseline: 17%, load-image(path + ".png", 4), inset: 1pt)
}

#let heart = health("icons/health")

#let heart-half = health("icons/health_half")


#let health(amount, content) = {
    let full = calc.floor(amount / 2)
    let half = calc.rem-euclid(amount, 2)

    let hearts = heart * full + if half == 1 { heart-half }
    [#amount (#hearts) #content]
}

#let damage(amount) = health(amount)[damage]

#let item-box-attr(grid-image, size: 16 * mc-settings.pixel) = box(
    fill: rgb("#8b8b8b"),
    stroke: (
        top: rgb("#373737") + mc-settings.pixel,
        left: rgb("#373737") + mc-settings.pixel,
        bottom: rgb("#ffffff") + mc-settings.pixel,
        right: rgb("#ffffff") + mc-settings.pixel,
    ),
    width: size + mc-settings.pixel,
    height: size + mc-settings.pixel,
    align(center + horizon, grid-image)
)

#let entry(id, name, custom, size, path, type, auto-img) = {
    let url
    let i
    if (custom and type == "item" and auto-img) {
        i = load-rp-image(size, id, type)
    } else {
        i = load-image(
            path + "/" + id + ".png",
            size,
        )
    }

    if (custom == true) {
        url = label(id)
    } else { url = "https://minecraft.wiki/w/" + id }

    let grid_image = i
    if (type == "block") {
        grid_image = image(
            path + "/" + id + ".png",
            width: size * 4 * mc-settings.pixel,
            height: size * 4 * mc-settings.pixel,
            scaling: "pixelated",
        )
    }

    let item-text(content) = text(
        fill: blue,
        box(scale(link(url, i), x: mc-settings.pixel * 8, y: mc-settings.pixel * 8, reflow: true), baseline: 20%)
            + underline(link(url, content)),
    )
    return (
        type: type,
        id: id,
        image: i,
        img_with_link: link(url, i),
        name: name,
        custom: custom,
        url: url,
        title_image: box(scale(i, x: mc-settings.pixel * 10, y: mc-settings.pixel * 10, reflow: true), baseline: 20%),
        grid_image: link(url, grid_image),
        header: [#heading(depth: 2, name)#label(id)],
        txt: item-text(name),
        txt-param: item-text,
        ib: item-box-attr(grid_image)
    )
}

#let mc-item(id, name, custom: false,auto-img:true) = entry(id, name, custom, 16, "item", "item", auto-img)
#let mc-block(id, name, custom: false) = entry(id, name, custom, 4, "blocks", "block",false)

#let item-box(item, size: 16 * mc-settings.pixel) = pad(mc-settings.pixel / 2, box(
    fill: rgb("#8b8b8b"),
    stroke: (
        top: rgb("#373737") + mc-settings.pixel,
        left: rgb("#373737") + mc-settings.pixel,
        bottom: rgb("#ffffff") + mc-settings.pixel,
        right: rgb("#ffffff") + mc-settings.pixel,
    ),
    width: size + mc-settings.pixel,
    height: size + mc-settings.pixel,
    if (item == none) { align(center + horizon, []) } else {
        align(center + horizon, item.grid_image)
    },
))

#let img-fake-item-box(item, img, size, alt) = {
    if (item.custom and not alt) {
        return load-rp-image(size, item.id, item.type)
    } else if (alt) {load-image(img,16)} else {
        img
    }
}

#let fake-item-box(item, img, size: 16 * mc-settings.pixel, alt) = pad(mc-settings.pixel / 2, box(
    fill: rgb("#8b8b8b"),
    stroke: (
        top: rgb("#373737") + mc-settings.pixel,
        left: rgb("#373737") + mc-settings.pixel,
        bottom: rgb("#ffffff") + mc-settings.pixel,
        right: rgb("#ffffff") + mc-settings.pixel,
    ),
    width: size + mc-settings.pixel,
    height: size + mc-settings.pixel,

    align(center + horizon, img-fake-item-box(item, img, 16, alt)),
))

#let recipe3x3(tl, tm, tr, ml, mm, mr, bl, bm, br, result: none, shapeless: false) = {
    set align(center)
    show: box.with(
        fill: rgb("#c6c6c6"),
        inset: 8 * mc-settings.pixel,
        radius: 1 * mc-settings.pixel,
    )
    let shaped = none
    if (shapeless == true) {
        shaped = [ (Shapeless)]
    }
    show: align.with(horizon)
    align(left, text([Crafting] + shaped, font: "Minecraftia", fill: rgb("#373737")))
    grid(
        columns: 3,
        gutter: 5 * mc-settings.pixel,
        grid(
            columns: 3,
            item-box(tl), item-box(tm), item-box(tr),
            item-box(ml), item-box(mm), item-box(mr),
            item-box(bl), item-box(bm), item-box(br),
        ),

        if (result != none) {
            arrow
        },
        if (result != none) {
            item-box(result, size: 18 * mc-settings.pixel)
        },
    )
}

#let recipe2x2(tl, tr, bl, br, result: none) = {
    set align(center)
    show: box.with(
        fill: rgb("#c6c6c6"),
        inset: 8 * mc-settings.pixel,
        radius: 1 * mc-settings.pixel,
    )

    show: align.with(horizon)
    align(left, text([Crafting], font: "Minecraftia", fill: rgb("#373737")))
    stack(
        dir: ltr,
        spacing: 2 * mc-settings.pixel,
        grid(
            columns: 2,
            item-box(tl), item-box(tr),
            item-box(bl), item-box(br),
        ),

        if (result != none) {
            arrow
        },
        if (result != none) {
            item-box(result, size: 18 * mc-settings.pixel)
        },
    )
}

#let brewing-stand(fuel, ingredient, bottle, result: none) = {
    set align(center)
    show: box.with(
        fill: rgb("#c6c6c6"),
        inset: 8 * mc-settings.pixel,
        radius: 1 * mc-settings.pixel,
    )

    let put-icon(dx, dy, cnt) = place(
        top + left,
        dx: dx * mc-settings.pixel,
        dy: dy * mc-settings.pixel,
        cnt.grid_image,
    )

    show: align.with(horizon)
    align(left, text([Brewing], font: "Minecraftia", fill: rgb("#373737")))
    stack(
        dir: ltr,
        spacing: 2 * mc-settings.pixel,
        block({
            load-image-scale("icons/brewing_stand.png", 103, 60)
            put-icon(1, 2, fuel)
            put-icon(40, 36, bottle)
            put-icon(63, 43, bottle)
            put-icon(86, 36, bottle)
            put-icon(63, 2, ingredient)
        }),

        if (result != none) {
            arrow
        },
        if (result != none) {
            item-box(result, size: 18 * mc-settings.pixel)
        },
    )
}

#let recipe-furnace(ingredient, fuel, result: none) = {
    set align(center)
    show: box.with(
        fill: rgb("#c6c6c6"),
        inset: 8 * mc-settings.pixel,
        radius: 1 * mc-settings.pixel,
    )
    show: align.with(horizon)
    align(left, text([Furnace], font: "Minecraftia", fill: rgb("#373737")))
    stack(
        dir: ltr,
        spacing: 2 * mc-settings.pixel,
        grid(
            columns: 1,
            inset: 2 * mc-settings.pixel,
            item-box(ingredient),
            load-image("icons/furnace_flames.png", 14),
            item-box(fuel),
        ),
        if (result != none) {
            arrow
        },
        if (result != none) {
            item-box(result, size: 18 * mc-settings.pixel)
        },
    )
}

#let item-tooltip(
    item,
    rarity: rarity.common,
    max_stack: 64,
    type: "Material",
    size: 16 * mc-settings.pixel,
    alt: none,
    durability: none,
) = {
    let get-img(alt) = {
        if (alt == none) { none } else {
            fake-item-box(item, alt, true)
        }
    }


    set align(center)
    set text(font: "Minecraftia")
    show: box.with(
        fill: rgb("#c6c6c6"),
        inset: 8 * mc-settings.pixel,
        radius: 1 * mc-settings.pixel,
    )

    show: align.with(horizon + center)
    stack(
        dir: ttb,
        [#heading(depth: 3, item.name) #label(item.id)],
        pad(mc-settings.pixel / 2, stack(
            dir: ltr,
            pad(mc-settings.pixel / 2, box(
                fill: rgb("#8b8b8b"),
                stroke: (
                    top: rgb("#373737") + mc-settings.pixel,
                    left: rgb("#373737") + mc-settings.pixel,
                    bottom: rgb("#ffffff") + mc-settings.pixel,
                    right: rgb("#ffffff") + mc-settings.pixel,
                ),
                width: size + mc-settings.pixel,
                height: size + mc-settings.pixel,
                align(center + horizon, item.grid_image),
            )),
            get-img(alt),
        )),
        v(20pt),
        align(
            left,
            text(
                fill: rgb("#373737"),
                size: 9pt,
                [Rarity: #text(fill: rarity.color, rarity.id)\ Stack Size: #text(fill: black, [#max_stack])\ Type: #text(fill: black, type)
                    #if (durability != none) {
                        [\ Max Durability: #text(fill: black, [#durability])]
                    }],
            ),
        ),
    )
}


#let input(content) = box(baseline: 25%, fill: rgb("#d7d7d7"), stroke: gray, inset: 2pt, radius: 2pt, text(
    font: "DejaVu Sans Mono",
    content,
    size: 7pt,
))

#let inputs = (
    "use": input[use],
    "sneak": input[sneak],
    "attack": input[attack],
    "jump": input[jump],
    "drop": input[drop],
    "sprint": input[sprint],
    "use-sprint": input[sprint + use],
)
