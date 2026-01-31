INCLUDE variabilifunzioni.ink
INCLUDE dialogues.ink

~ discoveredTopics += Ageism
~ discoveredTopics += OldTwink
~ activeTopics += Ageism


-> randomize_pg



=== randomize_pg
  ~ PGAge = LIST_RANDOM(PGAge)
  ~ PGBody = LIST_RANDOM(PGBody)
  ~ PGInSearchOf = LIST_RANDOM(PGInSearchOf)
  ~ Alias = "{~ Looking4Something|22AndMore|FuckAndTalk|Normale|M|Ospito|Maschile|NewInTown|TomTom|Ulisse|420|Gino|ACAB&Coccole|FatCock|THENERD|Gaymer|MaschioBianco}"

    -> character_personalization
    // -> randomize_characters




=== conversation_selection

- (top)
@choose_character
//Personaggi speciali
+ [{Char_uno} #alias:Uno #age:37 #body:medium #insearchof:sex]
  //Se interessato, vado al nodo, altrimenti reagisce in modo diverso.
  -> dialogue_Char_uno
+ [{Char_due} #alias:Due #age:37 #body:medium #insearchof:sex]
  -> dialogue_Char_due
+ [{Char_tre} #alias:Tre #age:37 #body:medium #insearchof:sex]
  -> dialogue_Char_tre
+ [{Char_quattro} #alias:Quattro #age:37 #body:medium #insearchof:sex]
  ->dialogue_Char_quattro
+ [{Char_cinque} #alias:Cinque #age:37 #body:medium #insearchof:sex]
  -> dialogue_Char_cinque
+ [{Char_sei} #alias:Set #age:37 #body:medium #insearchof:sex]
  -> dialogue_Char_sei
// + [{Char_sette} #alias:Uno #age:37 #body:medium #insearchof:sex]
//   -> dialogue_Char_sette
// + [{Char_otto} #alias:Uno #age:37 #body:medium #insearchof:sex]
//   -> dialogue_Char_otto


//Personaggi anonimi
+ [Anon_uno #alias:Anon #age:37 #body:medium #insearchof:sex]
  conversazione con anonymous 1
    -> top
+ [Anon_due #alias:Anon #age:37 #body:medium #insearchof:sex]
  conversazione con anonymous 2
    -> top
+ [Anon_tre #alias:Anon #age:37 #body:medium #insearchof:sex]
  conversazione con anonymous 3
    -> top
-

-> character_personalization