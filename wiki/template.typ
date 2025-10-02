#let template(doc) = {
  set text(size: 10pt)
  set page(margin: 15pt, height: auto, width: 40em, header: context {
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

  show heading.where(level: 1): none
  show heading.where(level: 2): none

  show table.cell: it => {
    if it.y == 0 {
      align(center, strong(it))
    } else {
      it
    }
  }
  doc
  pagebreak()
  include "graph.typ"
}
