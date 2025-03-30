#import "../utils.typ": seed, pick, shuffle
#import "@preview/suiji:0.3.0": *


#let functions_relations_list = shuffle(gen-rng(seed), (

  [
    ${(a, b), (a, c), (d, e), (f, e)}$
  ],
  [
    ${(a, e), (b, g), (c, g), {h, i}}$
  ],

  [
    ${$(_Ciccio_, _Franco_), (_don Camillo_, _Peppone_), (_Bud_, _Terence_), (_Ale_, _Franz_), (_Troisi_, _Benigni_)$}$
  ],

  [${(x, y) | x$ è la mamma di $y}$],
  [${(x, y) | x$ è figlio biologico di $y}$],
  [${(x, y) | x$ è il capoluogo di regione $y}$],
  [${(x, y) | x$ è professore del corso $y}$],
  [${(a, b), (a, c)}$],
  [${(a, e), (b, g), (c, g), (h, i)}$]
  
  )
).at(1)