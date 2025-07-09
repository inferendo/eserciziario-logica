#let cfg = toml("../../tutor.toml")

/*

(p -> q) & (q -> r) |- (p -> r)
~(p V q) |- ~p & ~q
r V s |- ~p & ~q sbagliata
|- p V ~p
|- ~(p & ~q)
~(~p V ~q) |- p & q
~p |- p -> q
(p & q) -> r |- p -> (q -> r)
p -> q |- ~p V q
p V q, ~q |- p
p -> (q -> r) |- (q & ~r) -> ~p
~p -> ~q |- (~p -> q) -> p
p V q, ~p |- q
(p V r) -> q |- (p -> q) & (r -> q)
(p -> q) & (r -> q) |- (p V r) -> q
|- (p -> ~p) -> ~p
|- p -> (p V q)
|- ((p -> q) -> p) -> p
p |- p V (p & q)
p V (p & q) |- p
p V q |- ~(~p & ~q)
~(~p & ~q) |- p V q
~(p -> q) |- p & ~q
p & ~q |- ~(p -> q)
p V (q & r) |- (p V q) & (p V r)
(p V q) & (p V r) |- p V (q & r)
~p & ~q |- ~(p V q)
(p V q) |- ~p & ~q
~p V ~q |- ~(p & q)
(p & q) |- ~p V ~q
(r -> q) & (r -> s) |- r -> (q V s)
((p -> q) & q) & r |- q & ~~r
(p & q) V r |- ((r -> s) & (p -> (q -> s))) -> s
p -> (q -> r) |- (p & q) -> r
(p -> q) & (r -> s) |- (p & r) -> (q V s)
~p V q |- p -> q
~p -> ~q, ~p, r V ~r |- ~q V r
p |- ~(~p V q)
~p V q |- ~(p & ~q)
p -> q, p -> ~q |- ~p
p -> q |- (p & q) -> (q & r)
~p -> p |- p
p & q |- p -> q
p V (q V r) |- q V (p V r)
(~p -> ~q) & (~q -> q) |- p
(p -> q) & (p -> r) |- p -> (q & r)
(p -> r) & (q -> r) |- (p V q) -> r


*/
#let derives = $tack.r$

#let derivations_list = (
  

[$(p supset q) and (q supset r) derives (p supset r)$],
[$not (p or q) derives not p and not q$],
// [$r or s derives not p and not q$],
[$derives p or not p$],
[$derives not (p and not p)$],
[$not (not p or not q) derives p and q$],
[$not p derives p supset q$],
[$(p and q) supset r derives p supset (q supset r)$],
[$p supset q derives not p or q$],
[$p or q, not q derives p$],
[$p supset (q supset r) derives (q and not r) supset not p$],
[$not p supset not q derives (not p supset q) supset p$],
[$p or q, not p derives q$],
[$(p or r) supset q derives (p supset q) and (r supset q)$],
[$(p supset q) and (r supset q) derives (p or r) supset q$],
[$derives (p supset not p) supset not p$],
[$derives p supset (p or q)$],
[$derives ((p supset q) supset p) supset p$],
[$p derives p or (p and q)$],
[$p or (p and q) derives p$],
[$p or q derives not (not p and not q)$],
[$not (not p and not q) derives p or q$],
[$not (p supset q) derives p and not q$],
[$p and not q derives not (p supset q)$],
[$p or (q and r) derives (p or q) and (p or r)$],
[$(p or q) and (p or r) derives p or (q and r)$],
[$not p and not q derives not (p or q)$],
[$(p or q) derives not p and not q$],
[$not p or not q derives not (p and q)$],
[$(p and q) derives not p or not q$],
[$(r supset q) and (r supset s) derives r supset (q or s)$],
[$((p supset q) and q) and r derives q and not not r$],
[$(p and q) or r derives ((r supset s) and (p supset (q supset s))) supset s$],
[$p supset (q supset r) derives (p and q) supset r$],
[$(p supset q) and (r supset s) derives (p and r) supset (q or s)$],
[$not p or q derives p supset q$],
[$not p supset not q, not p, r or not r derives not q or r$],
[$p derives not (not p or q)$],
[$not p or q derives not (p and not q)$],
[$p supset q, p supset not q derives not p$],
[$p supset q derives (p and q) supset (q and r)$],
[$not p supset p derives p$],
[$p and q derives p supset q$],
[$p or (q or r) derives q or (p or r)$],
[$(not p supset not q) and (not q supset q) derives p$],
[$(p supset q) and (p supset r) derives p supset (q and r)$],
[$(p supset r) and (q supset r) derives (p or q) supset r$],

)