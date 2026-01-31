//Debug
VAR debug = true


//Liste per character design
LIST ages = Giovane, Medio, Vecchio
LIST bodies = Bear, Fit, Twink
LIST inSearchOf = Monogamia, Poliamore, Sesso, Amicizia

//Personaggi anomini
LIST anonymousChar = Anon_uno, Anon_due, Anon_tre, Anon_quattro, Anon_cinque, Anon_sei, Anon_sette, Anon_otto, Anon_nove, Anon_dieci, Anon_undici, Anon_dodici
//Personaggi speciali
LIST specialChar = Char_uno, Char_due, Char_tre, Char_quattro, Char_cinque, Char_sei, Char_sette, Char_otto

//Gestione disponibilità al dialogo
LIST dialogueStates = on


LIST activeTopics = Ageism, OldTwink, Polyamory, Expectations, Dysmorphia, Masculinity, Femme, Friendship

VAR actualSpeakers = ()


// Dati PG
VAR PGAge = (Giovane, Medio, Vecchio)
VAR PGBody = (Bear, Fit, Twink)
VAR PGInSearchOf = (Monogamia, Poliamore, Sesso, Amicizia)
VAR Alias = ""

-> randomize_pg


=== function pg_age_translator()
{ PGAge:
  - Giovane:
      ~ return "19 anni"
  - Medio:
      ~ return "34 anni"
  - Vecchio:
      ~ return "59 anni"
}

=== function pg_body_translator()
{ PGBody: 
  - Bear:
      ~ return "Orsetto"
  - Fit:
      ~ return "Muscoloso"
  - Twink:
      ~ return "Twink"
}


=== function pg_in_search_of()
{ PGInSearchOf: 
  - Monogamia:
      ~ return "Qualcuno da amare"
  - Poliamore:
      ~ return "In relazione poli, aperto a nuove persone"
  - Sesso:
      ~ return "Divertimento, ora"
  - Amicizia:
      ~ return "Due chiacchiere e una nuova amicizia"    
}


=== randomize_pg
  ~ PGAge = LIST_RANDOM(PGAge)
  ~ PGBody = LIST_RANDOM(PGBody)
  ~ PGInSearchOf = LIST_RANDOM(PGInSearchOf)
  ~ Alias = "{~ Looking4Something|22AndMore|FuckAndTalk|Normale|M|Ospito|Maschile|NewInTown|TomTom|Ulisse|420|Gino|ACAB&Coccole|FatCock|THENERD|Gaymer|MaschioBianco}"



-> conversation_selection



=== conversation_selection


- (top)
@choose_character
//Personaggi speciali
+ {actualSpeakers has Char_uno}[{Char_uno} #alias:xx #age:37 #body:medium #insearchof:sex]
  //Se interessato, vado al nodo, altrimenti reagisce in modo diverso.
      {activeTopics:
          - Expectations:
              non mi interessano quelle cose lì
            -> top
          - Femme:
              non mi interessano quelle cose lì
            -> top
          - Friendship:
              non mi interessano quelle cose lì
            -> top
      }
      {PGAge:
            - Vecchio:
              -> dialogue_Char_uno
            - Medio:
              -> dialogue_Char_uno
            - else:
              non sei il mio tipo
              -> top  
      }
      {PGBody:
            - Fit:
              -> dialogue_Char_uno
            - else:
              non sei il mio tipo
              -> top    
      }
      {PGInSearchOf:
            - Sesso:
              -> dialogue_Char_uno
            - else:
              non sei il mio tipo
              -> top    
      }

    
+ {actualSpeakers has Char_due}[{Char_due} #alias:xx #age:37 #body:medium #insearchof:sex]
      {activeTopics:
          - Ageism:
              non mi interessano quelle cose lì
            -> top
          - Dysmorphia:
              non mi interessano quelle cose lì
            -> top
          - Femme:
              non mi interessano quelle cose lì
            -> top  
          - Friendship:
              non mi interessano quelle cose lì
            -> top
      }
      {PGAge:
            - Medio:
              -> dialogue_Char_due
            - else:
              non sei il mio tipo
              -> top  
      }
      {PGBody:
            - Fit:
              -> dialogue_Char_due
            - Twink:
              -> dialogue_Char_due  
            - else:
              non sei il mio tipo
              -> top    
      }
      {PGInSearchOf:
            - Sesso:
              -> dialogue_Char_due
            - Monogamia:
              -> dialogue_Char_due  
            - else:
              non sei il mio tipo
              -> top    
      }
    
+ {actualSpeakers has Char_tre}[{Char_tre} #alias:xx #age:37 #body:medium #insearchof:sex]
      {activeTopics:
          - Masculinity:
              non mi interessano quelle cose lì
            -> top
          - OldTwink:
              non mi interessano quelle cose lì
            -> top
          - Expectations:
              non mi interessano quelle cose lì
            -> top  
      }
      {PGAge:
            - Giovane:
              -> dialogue_Char_tre
            - Medio:
              -> dialogue_Char_tre
            - else:
              non sei il mio tipo
              -> top  
      }
      {PGBody:
            - Fit:
              -> dialogue_Char_tre
            - else:
              non sei il mio tipo
              -> top    
      }
      {PGInSearchOf:
            - Poliamore:
              -> dialogue_Char_tre
            - else:
              non sei il mio tipo
              -> top    
      }
    
+ {actualSpeakers has Char_quattro}[{Char_quattro} #alias:xx #age:37 #body:medium #insearchof:sex]
      {activeTopics:
          - Ageism:
              non mi interessano quelle cose lì
            -> top
          - OldTwink:
              non mi interessano quelle cose lì
            -> top
          - Polyamory:
              non mi interessano quelle cose lì
            -> top  
          - Masculinity:
              non mi interessano quelle cose lì
            -> top
      }
      {PGAge:
            - Giovane:
              -> dialogue_Char_quattro
            - else:
              non sei il mio tipo
              -> top  
      }
      {PGBody:
            - Bear:
              -> dialogue_Char_quattro
            - else:
              non sei il mio tipo
              -> top    
      }
      {PGInSearchOf:
            - Monogamia:
              -> dialogue_Char_quattro
            - Amicizia:
              -> dialogue_Char_quattro  
            - else:
              non sei il mio tipo
              -> top    
      }
    
+ {actualSpeakers has Char_cinque}[{Char_cinque} #alias:xx #age:37 #body:medium #insearchof:sex]    
      {activeTopics:
          - Ageism:
              non mi interessano quelle cose lì
            -> top
          - OldTwink:
              non mi interessano quelle cose lì
            -> top
          - Femme:
              non mi interessano quelle cose lì
            -> top  
      }
      {PGAge:
            - Giovane:
              -> dialogue_Char_cinque
            - else:
              non sei il mio tipo
              -> top  
      }
      {PGBody:
            - Fit:
              -> dialogue_Char_cinque
            - else:
              non sei il mio tipo
              -> top    
      }
      {PGInSearchOf:
            - Sesso:
              -> dialogue_Char_cinque
            - else:
              non sei il mio tipo
              -> top    
      }

    
+ {actualSpeakers has Char_sei}[{Char_sei} #alias:xx #age:37 #body:medium #insearchof:sex]
      {activeTopics:
          - Ageism:
              non mi interessano quelle cose lì
            -> top
          - Polyamory:
              non mi interessano quelle cose lì
            -> top
          - Femme:
              non mi interessano quelle cose lì
            -> top  
          - Dysmorphia:
              non mi interessano quelle cose lì
            -> top
      }
      {PGAge:
            - Medio:
              -> dialogue_Char_sei
            - Giovane:
              -> dialogue_Char_sei
            - else:
              non sei il mio tipo
              -> top  
      }
      {PGBody:
            - Fit:
              -> dialogue_Char_sei
            - Bear:
              -> dialogue_Char_sei  
            - else:
              non sei il mio tipo
              -> top    
      }
      {PGInSearchOf:
            - Sesso:
              -> dialogue_Char_sei
            - else:
              non sei il mio tipo
              -> top    
      }
    
+ {actualSpeakers has Char_sette}[{Char_sette} #alias:xx #age:37 #body:medium #insearchof:sex]      
      {activeTopics:
          - OldTwink:
              non mi interessano quelle cose lì
            -> top
          - Expectations:
              non mi interessano quelle cose lì
            -> top
          - Friendship:
              non mi interessano quelle cose lì
            -> top       

      }
      {PGAge:
            - Medio:
              -> dialogue_Char_sette
            - Giovane:
              -> dialogue_Char_sette
            - else:
              non sei il mio tipo
              -> top  
      }
      {PGBody:
            - Fit:
              -> dialogue_Char_sette
            - Twink:
              -> dialogue_Char_sette 
            - else:
              non sei il mio tipo
              -> top    
      }
      {PGInSearchOf:
            - Monogamia:
              -> dialogue_Char_sette
            - else:
              non sei il mio tipo
              -> top    
      }

    
+ {actualSpeakers has Char_otto}[{Char_otto} #alias:xx #age:37 #body:medium #insearchof:sex]
      {activeTopics:
          - Masculinity:
              non mi interessano quelle cose lì
            -> top
      }
      {PGAge:
            - Medio:
              -> dialogue_Char_otto
            - Vecchio:
              -> dialogue_Char_otto
            - else:
              non sei il mio tipo
              -> top  
      }
      {PGBody:
            - Bear:
              -> dialogue_Char_otto
            - Twink:
              -> dialogue_Char_otto
            - else:
              non sei il mio tipo
              -> top    
      }
      {PGInSearchOf:
            - Amicizia:
              -> dialogue_Char_otto
            - else:
              non sei il mio tipo
              -> top    
      }
    


//Personaggi anonimi
+ (anon_uno){actualSpeakers has Anon_uno}[Anon_uno #alias:xx #age:37 #body:medium #insearchof:sex]
  {
    - anon_uno == 1:
      conversazione con anonymous 1
    - else:
      Smamma!
       -> top 
  }
    
+ (anon_due){actualSpeakers has Anon_due}[Anon_due #alias:xx #age:37 #body:medium #insearchof:sex]
   {
    - anon_due == 1:
      conversazione con anonymous 2
    - else:
      Smamma!
       -> top 
  }
+ (anon_tre){actualSpeakers has Anon_tre}[Anon_tre #alias:xx #age:37 #body:medium #insearchof:sex]
   {
    - anon_tre == 1:
      conversazione con anonymous 3
    - else:
      Smamma!
       -> top 
  }
+ {actualSpeakers has Anon_quattro}[Anon_quattro #alias:xx #age:37 #body:medium #insearchof:sex]
   {
    - anon_tre == 1:
      conversazione con anonymous 3
    - else:
      Smamma!
       -> top 
  }

+ {actualSpeakers has Anon_cinque}[Anon_cinque #alias:xx #age:37 #body:medium #insearchof:sex]
   {
    - anon_tre == 1:
      conversazione con anonymous 3
    - else:
      Smamma!
       -> top 
  }

+ {actualSpeakers has Anon_sei}[Anon_sei #alias:xx #age:37 #body:medium #insearchof:sex]
   {
    - anon_tre == 1:
      conversazione con anonymous 3
    - else:
      Smamma!
       -> top 
  }

+ {actualSpeakers has Anon_sette}[Anon_sette #alias:xx #age:37 #body:medium #insearchof:sex]
   {
    - anon_tre == 1:
      conversazione con anonymous 3
    - else:
      Smamma!
       -> top 
  }

+ {actualSpeakers has Anon_otto}[Anon_otto #alias:xx #age:37 #body:medium #insearchof:sex]
   {
    - anon_tre == 1:
      conversazione con anonymous 3
    - else:
      Smamma!
       -> top 
  }

+ {actualSpeakers has Anon_nove}[Anon_nove #alias:xx #age:37 #body:medium #insearchof:sex]
   {
    - anon_tre == 1:
      conversazione con anonymous 3
    - else:
      Smamma!
       -> top 
  }

+ {actualSpeakers has Anon_dieci}[Anon_dieci #alias:xx #age:37 #body:medium #insearchof:sex]
   {
    - anon_tre == 1:
      conversazione con anonymous 3
    - else:
      Smamma!
       -> top 
  }

+ {actualSpeakers has Anon_undici}[Anon_undici #alias:xx #age:37 #body:medium #insearchof:sex]
   {
    - anon_tre == 1:
      conversazione con anonymous 3
    - else:
      Smamma!
       -> top 
  }

+ {actualSpeakers has Anon_dodici}[Anon_dodici #alias:xx #age:37 #body:medium #insearchof:sex]
   {
    - anon_tre == 1:
      conversazione con anonymous 3
    - else:
      Smamma!
       -> top 
  }   
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
//La logica è: randomizzo prima tre png seri, se le condizioni sono rispettate, e poi sei png anonimi

{character_personalization:
  - >= 2:
    -> main_randomize
  - else:
    -> anon_randomize  

}

 
= main_randomize
  - (mainTop)
  ~ temp mainDice = RANDOM(1,8)
  
  {mainDice:
    - 1:
      {
        - not dialogue_Char_uno:
          ~ actualSpeakers += Char_uno
            {
              - LIST_COUNT(actualSpeakers) <=3: 
                    -> mainTop
              - else:
                -> anon_randomize 

            }
        - else:
          -> mainTop
      }
    - 2:
      {
        - not dialogue_Char_due:
          ~ actualSpeakers += Char_due
            {
              - LIST_COUNT(actualSpeakers) <=3: 
                    -> mainTop
              - else:
                -> anon_randomize 

            }
        - else:
          -> mainTop
      }
    - 3:
      {
        - not dialogue_Char_tre:
           ~actualSpeakers += Char_tre
            {
              - LIST_COUNT(actualSpeakers) <=3: 
                    -> mainTop
              - else:
                -> anon_randomize 

            }
        - else:
          -> mainTop
      }
    - 4:
      {
        - not dialogue_Char_quattro:
          ~ actualSpeakers += Char_quattro
            {
              - LIST_COUNT(actualSpeakers) <=3: 
                    -> mainTop
              - else:
                -> anon_randomize 

            }
        - else:
          -> mainTop
      }
    - 5:
      {
        - not dialogue_Char_cinque:
          ~ actualSpeakers += Char_cinque
            {
              - LIST_COUNT(actualSpeakers) <=3: 
                    -> mainTop
              - else:
                -> anon_randomize 

            }
        - else:
          -> mainTop
      }
    - 6:
      {
        - not dialogue_Char_sei:
           ~actualSpeakers += Char_sei
            {
              - LIST_COUNT(actualSpeakers) <=3: 
                    -> mainTop
              - else:
                -> anon_randomize 

            }
        - else:
          -> mainTop
      }
    - 7:
      {
        - not dialogue_Char_sette:
           ~ actualSpeakers += Char_sette
            {
              - LIST_COUNT(actualSpeakers) <=3: 
                    -> mainTop
              - else:
                -> anon_randomize 

            }
        - else:
          -> mainTop
      }
    - 8:
      {
        - not dialogue_Char_otto:
          ~ actualSpeakers += Char_otto
            {
              - LIST_COUNT(actualSpeakers) <=3: 
                    -> mainTop
              - else:
                -> anon_randomize 

            }
        - else:
          -> mainTop
      }


  }
  -> anon_randomize 


= anon_randomize
  ~ temp anon_randomizeDice = RANDOM(1,12)
  {anon_randomizeDice:
    - 1:
      ~ actualSpeakers += Anon_uno 
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          }   
    - 2:
      ~ actualSpeakers += Anon_due
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          } 
    - 3:
      ~ actualSpeakers += Anon_tre
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          } 
    - 4:
      ~ actualSpeakers += Anon_quattro
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          } 
    - 5:
      ~ actualSpeakers += Anon_cinque
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          } 
    - 6:
      ~ actualSpeakers += Anon_sei
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          } 
    - 7:
      ~ actualSpeakers += Anon_sette
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          } 
    - 8:
      ~ actualSpeakers += Anon_otto
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          } 
    - 9:
      ~ actualSpeakers += Anon_nove
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          } 
    - 10:
      ~ actualSpeakers += Anon_dieci
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          } 
    - 11:
      ~ actualSpeakers += Anon_undici
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          } 
    - 12:
      ~ actualSpeakers += Anon_dodici
          {
            - LIST_COUNT(actualSpeakers) < 12: 
                -> mainTop
            - else:
                -> conversation_selection
          } 

  }

-> conversation_selection




///Storylets personaggi speciali///
=== dialogue_Char_uno
Ageismo
- (ageism)

-> character_personalization


=== dialogue_Char_due
Vecchio twink
- (old_twink)

-> character_personalization

=== dialogue_Char_tre
Questioni poli
- (poli_things)

-> character_personalization


=== dialogue_Char_quattro
Aspettative
- (expectations)

-> character_personalization

=== dialogue_Char_cinque
Fit e dismorfia
- (dysmorphia)

-> character_personalization


=== dialogue_Char_sei
Mascolinità Bear
- (masculinity)


-> character_personalization


=== dialogue_Char_sette
Twink femme
- (femme)


-> character_personalization


=== dialogue_Char_otto
Amicizia hacking
- (friendship)


-> character_personalization