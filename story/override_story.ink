INCLUDE variabilifunzioni.ink
INCLUDE dialogues.ink

~ activeTopics += Ageism
~ activeTopics += OldTwink


-> randomize_pg



=== randomize_pg
  ~ PGAge = LIST_RANDOM(PGAge)
  ~ PGBody = LIST_RANDOM(PGBody)
  ~ PGInSearchOf = LIST_RANDOM(PGInSearchOf)
  ~ Alias = "{~ Looking4Something|22AndMore|FuckAndTalk|Normale|M|Ospito|Maschile|NewInTown|TomTom|Ulisse|420|Gino|ACAB&Coccole|FatCock|THENERD|Gaymer|MaschioBianco}"

    -> character_personalization




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



=== character_personalization
  - (loop)

  @profile #alias:{Alias} #age:{pg_age_translator()} #body:{pg_body_translator()} #insearchoff:{pg_in_search_of()}

  + {dialogue_Char_uno.ageism} Ageism
      {
        - activeTopics hasnt Ageism:
          ~ activeTopics += Ageism
        - else:
          ~ activeTopics-= Ageism  
      }
      -> loop

  + {dialogue_Char_due.old_twink} OldTwink
      {
        - activeTopics hasnt OldTwink:
          ~ activeTopics += OldTwink
        - else:
          ~ activeTopics -= OldTwink 
      }
      -> loop

  + {dialogue_Char_tre.poli_things} Polyamory
      {
        - activeTopics hasnt Polyamory:
          ~ activeTopics += Polyamory
        - else:
          ~ activeTopics -= Polyamory
      }
      -> loop

  + {dialogue_Char_quattro.expectations} Expectations
      {
        - activeTopics hasnt Expectations:
          ~ activeTopics += Expectations
        - else:
          ~ activeTopics -= Expectations
      }
      -> loop
  + {dialogue_Char_cinque.dysmorphia} Dysmorphia
      {
        - activeTopics hasnt Dysmorphia:
          ~ activeTopics += Dysmorphia
        - else:
          ~ activeTopics -= Dysmorphia
      }
      -> loop

  + {dialogue_Char_sei.masculinity} Masculinity
      {
        - activeTopics hasnt Masculinity:
          ~ activeTopics += Masculinity
        - else:
          ~ activeTopics -= Masculinity
      }
      -> loop

  + {dialogue_Char_sette.femme} Femme
      {
        - activeTopics hasnt Femme:
          ~ activeTopics += Femme
        - else:
          ~ activeTopics -= Femme
      }
      -> loop

  + {dialogue_Char_otto.friendship} Friendship
      {
        - activeTopics hasnt Friendship:
          ~ activeTopics += Friendship
        - else:
          ~ activeTopics -= Friendship
      }
      -> loop

  + [Chat]
      -> randomize_characters



=== randomize_characters
// logica di randomizzazione dei personaggi
-> conversation_selection