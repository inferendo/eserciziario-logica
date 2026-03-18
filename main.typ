#import "@preview/tutor:0.7.0": points, totalpoints, lines, checkbox, default-config
#import "exercises/analisi-argomento-enunciati/argomenti.typ" as ex1
#import "exercises/derivazioni/derivazioni.typ" as derivazioniex
#import "exercises/analisi-equivalenze-logiche/analisi-equivalenze-logiche.typ" as coppieanalisiex
#import "exercises/teoria/teoria.typ" as teoriaex
#import "exercises/utils.typ": seed
#set text(lang: "it")
#let cfg = toml("tutor.toml")
#show math.equation: eq => {
  show sym.not: math.class("unary", sym.tilde)
  eq
}
#set text(font: "New Computer Modern Math")
#set page(
  //header: [
  //  #align(right)[
  //    #text(7pt)[
  //      Seed: #seed. Sviluppato da Edoardo G.
  //    ]
  //  ]
  //],
  numbering: (x, ..) => [#x],
  number-align: center + bottom,
  margin: (
    bottom: 3.6cm, left: 1cm, right: 0.5cm
  )

)

#if "tutor_sol" in sys.inputs {
  if sys.inputs.tutor_sol == "true" {
    (cfg.sol = true)
  } else if sys.inputs.tutor_sol == "false" {
    (cfg.sol = false)
  }
}

#set heading(numbering: "1.1", bookmarked: true)

#text(18pt)[
  #align(center)[  Facsimile dell'esame di Logica,\
  Università degli Studi di Torino, Filosofia\
]
]

#text(14pt)[
  #v(3mm)
  #grid(
    columns: (1fr, 1fr),
    rows: 10mm,
    gutter: 5mm,
    // align: left + horizon,
   [Punti:  $underline(#h(1cm))$ / 30],
   [Tempo: $underline(#h(1.5cm))$],
  )
]

Sia *L* un linguaggio proposizionale (o enunciativo) il cui vocabolario include i connettivi $not$, $and$, $or$, $supset$ e un insieme di variabili $p, q, r...$; *L* è dotato delle relazioni $models$ e $tack.r$. 

(Il sistema formale di *L* è munito delle seguenti regole di inferenza: I$supset$, I$and$, I$or$, I$not$, E$supset$, E$and$, E$or$, E$not not$.)


#ex1.exercise(cfg)
#coppieanalisiex.exercise(cfg)
#derivazioniex.exercise(cfg)
#teoriaex.exercise(cfg)

#place(bottom)[
  Sviluppato da Edoardo Grandicelli. 

  https://github.com/inferendo/eserciziario-logica

  Seed: #seed
]


//#align(right)[#rotate(180deg)[#text(5pt)[ (inserisci qui consiglio, soluzione ) ]]]
