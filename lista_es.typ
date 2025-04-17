#import "exercises/analisi-argomento-enunciati/argomenti-lista.typ" as args_list
#import "exercises/analisi-equivalenze-logiche/coppie-enunciati-lista.typ" as ens_list
#import "exercises/teoria/esercizi_teoria_lista.typ" as th_list
#import "exercises/derivazioni/derivazioni-lista.typ" as der_list
#set text(lang: "it")
#text(18pt)[
  #align(center)[  Lista indicativa degli esercizi
]
]
#let derives = $tack.r$



#set heading()
Sviluppato da Edoardo Grandicelli (Università degli Studi di Torino).
#outline()

#pagebreak()


= Analisi dell'argomento

#text(11pt)[
  #for (index, value) in args_list.args_list.enumerate() {
    [*#index.* #value]
    linebreak()
  }
]

#pagebreak()

= Analisi di una coppia di enunciati#footnote([L'ordine degli elementi della coppia è mischiato, quindi la lista è indicativa.])

#text(11pt)[
  #for (index, value) in ens_list.enunciates_tuples_list.at(1).enumerate() {
    [*#index.1. * #value.at(0)]
    linebreak()
    [*#index.2. * #value.at(1)]    
    linebreak()
  }
]



#pagebreak()

= Teoria e dimostrazioni#footnote([C'è della variazione casuale in esercizi dove compaiono relazioni, funzioni, eccetera. Quindi la lista è indicativa.])

#text(11pt)[
  #for (index, value) in th_list.theory_exercises.enumerate() {
    [*#index. * #value]
    linebreak()
  }
]

#pagebreak()

= Derivazioni e dimostrazioni formali
#text(11pt)[
  #for (index, value) in der_list.derivations_list.enumerate() {
    [*#index. * #value]
    linebreak()
  }
]

#pagebreak()



