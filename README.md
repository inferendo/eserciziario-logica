# eserciziario-logica
Generatore di esami per simulare l'esame di Logica. (Università degli Studi di Torino, Filosofia.)

Alcuni degli esercizi sono estratti da:
- _Eserciziario di logica. Insiemi, metodi dimostrativi, logica proposizionale._ Il Mulino 2024. M. Carrara; M. Maietti; F. Mancini; S. Maschio
- Varzi, Achille C., John Nolt, e Dennis A. Rohatyn. _Logica._ 3. ed. Milano: McGraw Hill Education, 2022.
- Iacona, Andrea. _LOGIC: Lecture Notes for Philosophy, Mathematics, and Computer Science._ 1st edition. Springer Undergraduate Texts in Philosophy. Cham, Switzerland: Springer International Publishing, 2021.

[Lista indicativa degli esercizi, aggiornata automaticamente (click)](https://github.com/inferendo/eserciziario-logica/blob/main/pdf/lista_es.pdf)

[Lista indicativa degli esercizi, aggiornata automaticamente (click, download diretto)](https://github.com/inferendo/eserciziario-logica/raw/main/pdf/lista_es.pdf)


# Guida per l'utilizzo

1. installare [Typst](https://github.com/typst/typst) (!!!!!)
2. scaricare ed estrarre l'archivio .zip di questa repository
3. compilare una prova di esame con
```

    typst compile main.typ --input %seed% %filename_output.pdf%
```

dove %seed% è un numero casuale/arbitrario e %filename_output.pdf% è la path con il nome del pdf in output, i.e.:
```
    typst compile main.typ --input 111 output/prova.pdf
```

# Typst

Questo progetto è stato scritto in Typst, un nuovo sistema di typesetting alternativo a LaTeX.

https://typst.app/


