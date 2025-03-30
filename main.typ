#import "@preview/tutor:0.7.0": points, totalpoints, lines, checkbox, default-config
#import "exercises/analisi-argomento-enunciati/argomenti.typ" as ex1
#import "exercises/derivazioni/derivazioni.typ" as derivazioniex
#import "exercises/analisi-equivalenze-logiche/analisi-equivalenze-logiche.typ" as coppieanalisiex
#import "exercises/teoria/teoria.typ" as teoriaex
#import "exercises/utils.typ": seed
#set text(lang: "it")
#let cfg = toml("tutor.toml")


#set page(
  header: [
    #align(right)[
      #text(7pt)[
        Seed: #seed. Creato da Edoardo G.
      ]
    ]
  ],
  numbering: (x, ..) => [#x],
  number-align: center + top,

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
  #align(center)[  Simulazione dell'esame di Logica,\
  Università degli Studi di Torino, Filosofia\
  #text(10pt)[Seed: #seed, v.1]
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

#ex1.exercise(cfg)
#coppieanalisiex.exercise(cfg)
#derivazioniex.exercise(cfg)
#teoriaex.exercise(cfg)


//#align(right)[#rotate(180deg)[#text(5pt)[ (inserisci qui consiglio, soluzione ) ]]]
