#import "minecraft.typ": *


#let pot(s1, s2, s3, s4, s5, result: none) = {
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
        item-box(cnt),
    )

    show: align.with(horizon)
    align(left, text([Cooking], font: "Minecraftia", fill: rgb("#373737")))
    stack(
        dir: ltr,
        spacing: 2 * mc-settings.pixel,
        block({
            load-image-scale("icons/pot.png", 134, 29)
            put-icon(22, 11, s1)
            put-icon(40, 11, s1)
            put-icon(58, 11, s1)
            put-icon(76, 11, s1)
            put-icon(94, 11, s1)
        }),
        if (result != none) {
            arrow
        },
        if (result != none) {
            item-box(result, size: 18 * mc-settings.pixel)
        },
    )
}
