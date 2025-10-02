#import "variables.typ": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, edge, node

#let m = "-|>"
#let e(obtaining) = edge(m)[#{
    if (obtaining != none) {
        obtaining.img_with_link
    }
}]

#let n(x, y, item) = node((x * 1, y * 1), item.ib, name: label(item.id))

#diagram(
    edge-stroke: 1pt,
    node-inset: 0pt,
    {
        n(0, 0, wheat_seeds)
        e(crafting_table)
        n(1, 0, pointerpod)
        e(etched_vase)
        n(0, 1, twining_tendril)
                edge(<pointerpod>, <mossy_trail>,m)
        node((2, 1), inline_content("mossy_trail", "Mossy Trail", custom: true), name: <mossy_trail>, outset: 6pt)
        edge(<mossy_trail>, <bloomguard_seed>, m)
        n(1, 1, bloomguard_seed)
        edge(m, etched_vase.img_with_link)
        n(0, 2, bloomguard)

        edge(<mossy_trail>, <protobean>, m)
        n(1, 2, protobean)
        edge(m, etched_vase.img_with_link)
        n(1, 3, bean_pod)

        edge(m)
        n(0, 3, bean)

        edge(<mossy_trail>, <azure_thistle_seeds>, m)
        n(2, 2, azure_thistle_seeds)
        edge(m, etched_vase.img_with_link)
        n(2, 3, azure_thistle)

        edge(<mossy_trail>, <tangleroot>, m,scale(twining_tendril.img_with_link,30%,reflow: true))
        n(3, 2, tangleroot)
        edge(m, etched_vase.img_with_link)
        n(3, 3, rootsplit_sickle)

        n(2, 0, nether_brick)
        e(crafting_table)
        n(3, 0, etched_vase)

        edge(<mossy_trail>, <qm>, m,scale(twining_tendril.img_with_link,30%,reflow: true))
        node((3, 1), [?], name: <qm>)

        node((4, 0), grid(
            inset: 0.5pt,
            columns: 2,
            ghast_tear.ib, beetroot.ib,
            resin_clump.ib, magma_cream.ib,
        ))
        e(crafting_table)
        n(5, 0, sour_kernel)
        edge(m, etched_vase.img_with_link)
        n(5, 1, glutted_log)
        edge(m, scale(bean.img_with_link,30%,reflow: true))
        n(5, 2, murky_crevice)

        edge(m, scale(bean.img_with_link,30%,reflow: true))
        n(4, 1, bloom_bud)
        edge(m, etched_vase.img_with_link)
        n(4, 2, blooming_bulb)

        edge(<murky_crevice>,<scarlet_fang_root>,m, scale(bean.img_with_link,30%,reflow: true))
        n(4, 3, scarlet_fang_root)
        edge(m, etched_vase.img_with_link)
        n(4, 4, scarlet_fang)

        edge(<murky_crevice>,<wildstep_seed>,m, scale(bean.img_with_link,30%,reflow: true))
        n(5, 3, wildstep_seed)
        edge(m, etched_vase.img_with_link)
        n(5, 4, wildstep_pods)


        node((0, 4), grid(
            inset: 0.5pt,
            columns: 2,
            string.ib, wheat.ib,

        ))
        edge(m,crafting_table.img_with_link)
        n(1,4,straw_hat)
    },

)
