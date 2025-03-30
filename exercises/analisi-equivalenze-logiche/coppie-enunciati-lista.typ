#let cfg = toml("../../tutor.toml")


#import "@preview/suiji:0.3.0": *
#import "../utils.typ": seed, shuffle-arrays 

#set text(lang: "it")




#let enunciates_tuples_list = shuffle-arrays(seed, (
  


(
[Se butto il fiammifero acceso sulla legna, questa brucia.],
[Se butto il fiammifero acceso e un secchio d’acqua sulla legna, questa brucia.]
),

(
[Se i gatti sono intelligenti lo sono anche i cani.],
[Se i gatti sono intelligenti lo sono anche i cani e i canarini.]
),

(
[Flavio programma.],
[Non è vero che Flavio non programma o che il pc non va.]
),

(
[Flavio mangia la pasta e se la mamma gli prepara un hamburger, mangia pure quello.],
[Flavio mangia la pasta.]
),

(
[Giovanni va a scalare.],
[Federica si allena a meno che Giovanni non vada a scalare.]
),

(
[Non ci sono supereroi.],
[Se Gotham esiste allora non ci sono supereroi.]
),

(
[Piove.],
[Se non piove, allora piove.]
),

(
[Nevica e non nevica.],
[Nevica.]
),

(
[Piove.],
[Se non piove, allora non piove.]
),

(
[Se il computer è rotto, allora non funziona; inoltre il computer non funziona.],
[Il computer è rotto.]
),

(
[Non è vero che o il computer non è rotto oppure non funziona.],
[Il computer è rotto e funziona.]
),

(
[Se corro e fa caldo, allora sudo.],
[Se corro, allora sudo se fa caldo.]
),

(
[Non è vero che non sono attento.],
[È vero che sono attento solo se sono attento.]
),

(
[O esci, oppure non mi disturbi.],
[Se mi disturbi, allora esci.]
),

(
  [
    Il mio diletto è bianco e vermiglio.
  ], 
  
  [
    Il mio diletto non è bianco, ma è vermiglio.
  ]
),
(
  [
    Piove solo se Zeus lo vuole.
  ], 
  
  [
    Non piove, solo se Zeus lo vuole.
  ]
),

(
  [
    Non si può certo dire che piova.
  ], 
  
  [
    Piove.
  ]
),

(
  [
    Il frutto è colorato.
  ], 
  
  [
    Il frutto è acerbo ma non verde.
  ]
),

(
  [
    Le scrivo solo se non mi risponde.
  ], 
  
  [
    Le scrivo e mi risponde.
  ]
),

(
  [
    O fuggo o mi nascondo, oppure faccio finta di niente.
  ], 
  
  [
    Sono e non sono.
  ]
),


)
)