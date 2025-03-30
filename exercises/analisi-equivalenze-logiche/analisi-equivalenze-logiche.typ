#import "@preview/tutor:0.7.0": points, checkbox
#import "@preview/suiji:0.3.0": *
#import "../utils.typ": *
#import "coppie-enunciati-lista.typ": enunciates_tuples_list

#let exercise(cfg) = [


  #let numberex = cfg.level
  #heading(level:cfg.level, [(#points(3)pt )])

  
  #let enunciates_list = enunciates_tuples_list.at(1)

  
  
  
  


  
    Per ogni coppia ordinata $(x_n, x_(n+1))$: 1. formalizzare ogni enunciato 2. determinare se $(x_n, x_(n+1))$ siano contraddittori 3. determinare se formino un insieme coerente 3. determinare se il secondo enunciato sia conseguenza logica del primo tramite "$x_n models x_(n-1)$" oppure "$x_n cancel(models) x_(n-1)$".
      
#par(justify: true)[
  #text(12pt,)[
    *$a_1$.* #enunciates_list.at(1).at(0) \
    
    *$a_2$.* #enunciates_list.at(1).at(1) \
    
    *$b_1$.* #enunciates_list.at(2).at(0) \
    
    *$b_2$.* #enunciates_list.at(2).at(1) \
    
    *$c_1$.* #enunciates_list.at(3).at(0) \
    
    *$c_2$.* #enunciates_list.at(3).at(1)
  ]
]
#linebreak()
]
