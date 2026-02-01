INCLUDE variabilifunzioni.ink
INCLUDE dialogues.ink

// ~ discoveredTopics += Ageism
// ~ discoveredTopics += OldTwink
// ~ activeTopics += Ageism


-> randomize_pg



=== randomize_pg
  ~ PGAge = LIST_RANDOM(PGAge)
  ~ PGBody = LIST_RANDOM(PGBody)
  ~ PGInSearchOf = LIST_RANDOM(PGInSearchOf)

  ~ PGAge = Vecchio
  ~ PGBody = Fit
  ~ PGInSearchOf = Poliamore
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
  {activeTopics:
            - Masculinity:
                {char_treMasculinity:
                    // commenti legati a un mio tag che bloccano la conversazione
                    TwoIsMeglCheOne: quando dico che voglio avere più di un uomo
                    TwoIsMeglCheOne: intendo un UOMOs
                    TwoIsMeglCheOne: di quelli che sanno ancora come prenderti e metterti sotto
                    TwoIsMeglCheOne: e non si fanno seghe mentali su misoginia e queste robe
                      ~ char_treMasculinity = false
                      -> randomize_characters
                  } 
            - OldTwink:
                {char_treOldTwink:
                  TwoIsMeglCheOne: 
                    ~ char_treOldTwink = false
                    -> randomize_characters
                }
        }
        {PGAge:
              - Giovane:
                -> dialogue_Char_tre
              - Medio:
                -> dialogue_Char_tre
        }
        {PGBody:
              - Fit:
                -> dialogue_Char_tre
        }
        {PGInSearchOf:
              - Poliamore:
                -> dialogue_Char_tre
            - else:
                // qua commento perché non mi piaci
                TwoIsMeglCheOne: mi sa che tra di noi non può funzionare
                TwoIsMeglCheOne: già ti vedo a farmi una scenata dopo due giorni
                TwoIsMeglCheOne: solo perché mi sto baciando con un altro
                -> randomize_characters   
        }
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
+ [Anon_uno #alias:Anon1 #age:37 #body:medium #insearchof:sex]
  Anon: Anonymous 1 sta parlando. Dice davvero tante cose, così il box di testo si può allungare un po'!
  PG: risposta ad anonymous 1
  ++ PG: Scelta 1
  ++ PG: Scelta 2
  --
  Anon: Mia risposta.
    -> top
+ [Anon_due #alias:Anon2 #age:37 #body:medium #insearchof:sex]
  Anon: conversazione con anonymous 2
  PG: risposta ad anonymous 2
    -> top
+ [Anon_tre #alias:Anon3 #age:37 #body:medium #insearchof:sex]
  Anon: conversazione con anonymous 3
  PG: risposta ad anonymous 3
    -> top
-

-> character_personalization