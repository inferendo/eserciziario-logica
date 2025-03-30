#import "@preview/tutor:0.7.0": points, checkbox
#import "@preview/suiji:0.3.0": *
#import "argomenti-lista.typ": *
#import "../utils.typ": *

#let exercise(cfg) = [
#heading(level:cfg.level, [(#points(3) pt )])

Dato il seguente testo:
1. Esplicitare l'argomento, se esiste.
2. Formalizzare l'argomento, se formalizzabile secondo il linguaggio della logica enunciativa classica.
3. Dimostrare perché l'argomento è valido secondo il linguaggio della logica enunciativa classica, se lo è. 
4. Determinare se l'argomento è fondato.
#let rng = gen-rng(seed)
#let exercise = choice(rng, args_list).at(1)

#par(justify: true)[
  #exercise
]
#linebreak()
]
