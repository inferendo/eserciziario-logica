#import "funzioni_relazioni.typ": functions_relations_list
#import "../utils.typ": seed, pick, shuffle
#import "@preview/suiji:0.3.0": *

#let derives = $tack.r$
  #show math.equation: eq => {
    show sym.not: sym.tilde
    eq
}



#let theory_exercises = shuffle(gen-rng(seed), (
  [
    Parliamo di numeri naturali ${0, 1, 2, ...}$. Sia $S$ l'estensione della funzione _successore_ sui numeri naturali, ovvero l'insieme di tutte le coppie ordinate $(a, b)$ tali che $b = a + 1$. Sia $M$ l'estensione della relazione _minore o uguale_ sui numeri naturali, ovvero l'insieme di tutte le coppie ordinate (a, b) tali che $a <= b$. È vero che $S subset.eq M$? Motivare la risposta.
  ],
  
  [
    È vero che "Se $alpha, beta in Gamma$, allora $Gamma derives alpha and beta$"? Si spieghi perché oppure si mostri un controesempio.
  ],
  
  [
    È vero che "Se $Gamma = emptyset$, allora, per ogni formula $alpha$, $Gamma cancel(models) alpha$?" Si spieghi perchè oppure si mostri un controesempio.
  ],
  
  [
    Spiegare perché "Piove e non piove" implica "Nevica" (principio dello Pseudo-Scoto).
  ],
  
  [
    Fornire un esempio di fallacia (diverso da quelli forniti nel manuale).
  ],
  
  [
    Fornire un esempio di equivalenza logica.
  ],
  
  [
    Fornire un esempio di argomento deduttivamente invalido dotato di forza induttiva (senza usare esempi contenuti nel manuale). 
  ],
  
  [
    Fornire un esempio di petizione di principio.
  ],
  
  [
    Fornire un insieme di enunciati inconsistente ma tale che ogni sotto-insieme di esso sia consistente.
  ],
  
  [
    Spiegare perché vale quanto seguente: se $alpha in Gamma$, allora $Gamma models alpha$.
  ],
  
  [
    Determinare se le seguenti asserzioni sono vere o false: (a) se $beta in Gamma$ allora $Gamma models beta$ solo se $Gamma$ contiene anche formule $alpha$ e $alpha supset beta$; (b) se $Gamma models alpha$, allora $alpha in Gamma$. Fornire una spiegazione (in caso di asserzioni vere) o un controesempio (in caso di asserzioni false).
  ],
  
  [
    Fornire un esempio di coppia di formule del linguaggio della logica enunciativa che possono essere contemporaneamente false ma non contemporaneamente vere.
  ],
  
  [
    L'insieme delle formule valide del linguaggio della logica enunciativa è decidibile? Motivare la propria risposta.
  ],
  
  [
    Fornire esempi di: (a) funzione iniettiva non suriettiva; (b) funzione suriettiva non iniettiva, (c) funzione né iniettiva né suriettiva.
  ],
  
  [
    Un argomento che esemplifica una forma invalida esprimibile in un linguaggio enunciativo può essere valido?
  ],
  
  [
    È vero che "$alpha, beta in Gamma$ se e solo se $Gamma models alpha and beta$"? Si spieghi perché oppure si mostri un controesempio.
  ],
  
  [
    Dimostrare che per ogni coppia di insiemi $A, B$ si ha $A union (B backslash A) = A union B$
  ],
  
  [
    Dimostrare che per ogni coppia di insiemi $A, B$ si ha $(A backslash B) inter B = emptyset$
  ],
  
  [
    Per ciascuno dei modi seguenti di specificare la relazione $R$ e l'insieme $A$, si dica se $R$ è antiriflessiva su A e se R è transitiva su A. 
  
    1. $R$ è la relazione che contiene le coppie $(x, y)$ tali che "$x$ è cugino di $y$" e $A$ è l'insieme degli esseri umani.
    2. R è la relazione che contiene le coppie $(x, y)$ tali che "$x$ è più alto di $y$" e $A$ è l'insieme degli esseri umani.
    3. $R$ è la relazione "essere un multiplo di" e $A$ è $NN$.
    4. $R = {$(_Roma, Atene_), (_Madrid, Madrid_), (_Roma, Londra_), (_Londra, Atene_)$}$ e $A = {$_Roma, Parigi, Londra, Atene_$}$
  ],
  
  [
    Per ogni caso, costruisci un esempio di relazione:
    1. riflessiva e antisimmetrica, ma non transitiva;
    2. simmetrica e riflessiva, ma non transitiva né antisimmetrica;
    3. antisimmetrica e transitiva, ma non riflessiva né simmetrica.
  ],
  
  [
    Dato l'insieme $A = {x,y,z,u,w}$ e la relazione $R$ su $A$ definita come:
    $R = {(x,x), (y,y), (z,z), (u, u), (w,w) (x,y), (y,x), (x,z), (z,x),(y,z),(u,w),(w,u)}$
    1. Determinare se $R$ è riflessiva.
    2. Determinare se $R$ è simmetrica.
    3. Determinare se $R$ è transitiva.
  ],
  
  [ 
    #let functions_relations = functions_relations_list
    Per ognuno degli insiemi dati, indica se si tratta di una _funzione_, o solo di una _relazione_:
    1. #functions_relations.at(0)
    2. #functions_relations.at(1)
    3. #functions_relations.at(2)
    
  ],
  
  [
    Dimostrare che se $Gamma union {alpha} derives beta$ e $Gamma union {alpha} derives not beta$, allora $Gamma derives not alpha$.
  ],

  [
    Dato un insieme di formule $Gamma = {phi_1, phi_2, ..., phi_n}$ calcolare il numero di interpretazioni _$V$_ tali che $[phi_n * phi_(n+1)]_V = 1$ dove $*$ indica tutti gli operatori logici in *L*. Dimostrare il procedimento.
  ],
  [
    È vero che gli elementi di un insieme incoerente non possono essere tutti falsi allo stesso tempo? Motivare la risposta con un argomento in suo favore, nel caso sia positiva, o con un contro-esempio, nel caso sia negativa. 
  ],

  [
     Che cosa si intende per 'interpretazione di *L*'? Esiste una interpretazione di *L* che verifica ogni formula atomica?
  ],

  [
     Che cosa si intende per 'interpretazione di *L*'? Esiste una interpretazione di *L* che falsifica ogni formula che contiene al più un'occorrenza di un connettivo?
  ],
  [
    Dati il linguaggio *L* e qualsiasi interpretazione _V_, dare due esempi diversi di formule ben formate che rappresentino una funzione di verità $f: {0,1}^2 arrow.r {0,1}$ tale che $f(x_1, x_2) = 1$ _sse_ $[x_2]_V eq.not [x_2]_V$.
  ],

  [
    Determinare se le seguenti asserzioni sono vere o false: (a) per ogni coppia di formule $alpha, beta$, vale che $alpha models beta$ oppure $beta models alpha$; (b) per ogni coppia di formule $alpha, beta$, vale che $models (alpha supset beta) or (beta supset alpha)$. Motivare le risposte.
  ],

  [
    È possibile trovare tre formule del linguaggio della logica enunciativa $alpha$, $beta$, e $gamma$ tali per cui vale che $alpha models gamma$ e $beta models gamma$, ma $alpha$ e $beta$ non sono logicamente equivalenti? Fornire un esempio (se possibile) o una spiegazione (se impossibile).
  ],

  [
    Si consideri la seguente formula: $(p supset q) and (p supset r)$. (i) determinare se è una validità logica e poi (ii) determinare se si può trovare una formula $alpha$ non-contraddittoria tale che $alpha models (p supset q) and (p supset r)$.
  ],

  [
    L'insieme delle formule _non_ valide del linguaggio della logica enunciativa è decidibile? Motivare la propria risposta.
  ]


  )

).at(1)
