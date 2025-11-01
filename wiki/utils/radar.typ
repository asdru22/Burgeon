#import "@preview/cetz:0.4.1": canvas, draw

#let radar(
    pos,
    data,
    radius: 1,
    ticks: (0.5, 1),
    label-key: 0,
    value-key: 1,
    web-style: (
        stroke: black.lighten(40%),
    ),
    ..style,
) = {
    let angle = 360deg / data.len()
    let pts = ()
    for (i, d) in data.enumerate() {
        let label = d.at(label-key)
        let value = d.at(value-key)
        let axis-name = "axis-" + str(i)
        draw.line(
            pos,
            (
                rel: (-angle * i + 90deg, radius),
                to: (),
            ),
            name: axis-name,
        )
        draw.content(
            (axis-name + ".start", radius * 1.2, axis-name + ".end"),
            label,
        )
        pts.push((axis-name + ".start", radius * value, axis-name + ".end"))
    }
    for tick in ticks {
        let pts2 = ()
        for i in range(data.len()) {
            pts2.push((
                rel: (-angle * i + 90deg, radius * tick),
                to: pos,
            ))
        }
        draw.line(..pts2, close: true, ..web-style)
    }
    draw.line(..pts, close: true, ..style)
}

