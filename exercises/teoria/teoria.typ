#import "@preview/tutor:0.7.0": points, checkbox
#import "@preview/suiji:0.3.0": *
#import "../utils.typ": *
#import "esercizi_teoria_lista.typ": theory_exercises

#let exercise(cfg) = [
  #show math.equation: eq => {
    show sym.not: math.class("unary", sym.tilde)
    eq
}
#linebreak()

  #let numberex = cfg.level
#heading(level:cfg.level, [(#points(15)pt )])

#par(justify: true)[
  #text(12pt)[
  *_Teoria (1)._* #theory_exercises.at(0) \ 
  *_Teoria (2)._* #theory_exercises.at(1) \ 
  *_Teoria (3)._* #theory_exercises.at(2) \ 
  *_Teoria (4)._* #theory_exercises.at(3) \
  *_Teoria (5)._* #theory_exercises.at(4) \
]
  
]



]
