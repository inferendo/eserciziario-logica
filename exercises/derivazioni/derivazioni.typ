#import "@preview/tutor:0.7.0": points, checkbox
#import "@preview/suiji:0.3.0": *
#import "../utils.typ": *
#import "derivazioni-lista.typ": derivations_list

#let exercise(cfg) = [
  #show math.equation: eq => {
    show sym.not: math.class("unary", sym.tilde)
    eq
}

  #let numberex = cfg.level
#heading(level:cfg.level, [(#points(9)pt )])

#let rng = gen-rng(seed)
#let triple = choice(rng, shuffle(rng, derivations_list).at(1), size: 5, replacement: true).at(1);

#text(12pt)[
*a.* #triple.at(1)

*b.* #triple.at(2)

*c.* #triple.at(3)

  
]

#linebreak()
]
