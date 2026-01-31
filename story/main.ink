INCLUDE variabilifunzioni.ink
INCLUDE dialogues.ink

-> randomize_pg


=== randomize_pg
{debug: <i>passo per randomize_pg}
  ~ PGAge = LIST_RANDOM(PGAge)
  ~ PGBody = LIST_RANDOM(PGBody)
  ~ PGInSearchOf = LIST_RANDOM(PGInSearchOf)
  ~ Alias = "{~ Looking4Something|22AndMore|FuckAndTalk|Normale|M|Ospito|Maschile|NewInTown|TomTom|Ulisse|420|Gino|ACAB&Coccole|FatCock|THENERD|Gaymer|MaschioBianco}"

    -> character_personalization


=== conversation_selection

  - (top)
  @choose_character
  //Personaggi speciali
  + {actualSpeakers has Char_uno && character_personalization >= startNumber}[{Char_uno} #alias:xx #age:37 #body:medium #insearchof:sex]
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

      
  + {actualSpeakers has Char_due &&character_personalization >= startNumber}[{Char_due} #alias:xx #age:37 #body:medium #insearchof:sex]
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
      
  + {actualSpeakers has Char_tre &&character_personalization >= startNumber}[{Char_tre} #alias:xx #age:37 #body:medium #insearchof:sex]
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
      
  + {actualSpeakers has Char_quattro &&character_personalization >= startNumber}[{Char_quattro} #alias:xx #age:37 #body:medium #insearchof:sex]
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
      
  + {actualSpeakers has Char_cinque &&character_personalization >= startNumber}[{Char_cinque} #alias:xx #age:37 #body:medium #insearchof:sex]    
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

      
  + {actualSpeakers has Char_sei &&character_personalization >= startNumber}[{Char_sei} #alias:xx #age:37 #body:medium #insearchof:sex]
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
      
  + {actualSpeakers has Char_sette &&character_personalization >= startNumber}[{Char_sette} #alias:xx #age:37 #body:medium #insearchof:sex]      
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

      
  + {actualSpeakers has Char_otto &&character_personalization >= startNumber}[{Char_otto} #alias:xx #age:37 #body:medium #insearchof:sex]
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
          Smamma! Nota: questa parte cambia man mano che mostriamo alcuni elementi sulla maschera.
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
    + (anon_quattro){actualSpeakers has Anon_quattro}[Anon_quattro #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_quattro == 1:
          conversazione con anonymous 3
        - else:
          Smamma!
          -> top 
      }

    + (anon_cinque){actualSpeakers has Anon_cinque}[Anon_cinque #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_cinque == 1:
          conversazione con anonymous 3
        - else:
          Smamma!
          -> top 
      }

    + (anon_sei){actualSpeakers has Anon_sei}[Anon_sei #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_sei == 1:
          conversazione con anonymous 3
        - else:
          Smamma!
          -> top 
      }

    + (anon_sette){actualSpeakers has Anon_sette}[Anon_sette #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_sette == 1:
          conversazione con anonymous 3
        - else:
          Smamma!
          -> top 
      }

    + (anon_otto){actualSpeakers has Anon_otto}[Anon_otto #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_otto == 1:
          conversazione con anonymous 3
        - else:
          Smamma!
          -> top 
      }

    + (anon_nove){actualSpeakers has Anon_nove}[Anon_nove #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_nove == 1:
          conversazione con anonymous 3
        - else:
          Smamma!
          -> top 
      }

    + (anon_dieci){actualSpeakers has Anon_dieci}[Anon_dieci #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_dieci == 1:
          conversazione con anonymous 3
        - else:
          Smamma!
          -> top 
      }

    + (anon_undici){actualSpeakers has Anon_undici}[Anon_undici #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_undici == 1:
          conversazione con anonymous 3
        - else:
          Smamma!
          -> top 
      }

    + (anon_dodici){actualSpeakers has Anon_dodici}[Anon_dodici #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_dodici == 1:
          conversazione con anonymous 3
        - else:
          Smamma!
          -> top 
      }   
    -

    -> character_personalization



=== character_personalization
{debug: <i>character_personalization}
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
{debug: passo per character_personalization. Il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}.}
~ actualSpeakers = ()

  {
    - character_personalization >= startNumber:
    {debug: <i>il valore di character_personalization è uguale a {character_personalization}, per cui vado a main_randomize.}
      -> main_randomize
    
    - else:
    {debug: <i>il valore di character_personalization è uguale a {character_personalization}, per cui vado ad anon_randomize  .}
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
  {debug: il valore di anon_randomizeDice è {anon_randomizeDice}.}
  {anon_randomizeDice:
    - 1:
      {
        - actualSpeakers hasnt Anon_uno:
          ~ actualSpeakers += Anon_uno 
            {
              - LIST_COUNT(actualSpeakers) < maxScreenChar:
              {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                  -> anon_randomize
              - else:
                  -> conversation_selection
            }   
         - else:
         -> anon_randomize
      }  

    
    - 2:
      {
        - actualSpeakers hasnt Anon_due:
          ~ actualSpeakers += Anon_due
            {
              - LIST_COUNT(actualSpeakers) < maxScreenChar:
              {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                  -> anon_randomize
              - else:
                  -> conversation_selection
            }   
         - else:
         -> anon_randomize
      } 
    
    - 3:
    {
        - actualSpeakers hasnt Anon_tre:
          ~ actualSpeakers += Anon_tre 
            {
              - LIST_COUNT(actualSpeakers) < maxScreenChar:
              {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                  -> anon_randomize
              - else:
                  -> conversation_selection
            }   
         - else:
         -> anon_randomize
      } 
    
    - 4:
      {
          - actualSpeakers hasnt Anon_quattro:
            ~ actualSpeakers += Anon_quattro
              {
                - LIST_COUNT(actualSpeakers) < maxScreenChar:
                {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                    -> anon_randomize
                - else:
                    -> conversation_selection
              }   
          - else:
          -> anon_randomize
        } 
    
    - 5:
      {
        - actualSpeakers hasnt Anon_cinque:
          ~ actualSpeakers += Anon_cinque
            {
              - LIST_COUNT(actualSpeakers) < maxScreenChar:
              {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                  -> anon_randomize
              - else:
                  -> conversation_selection
            }   
         - else:
         -> anon_randomize
      } 
    
    - 6:
    {
        - actualSpeakers hasnt Anon_sei:
          ~ actualSpeakers += Anon_sei
            {
              - LIST_COUNT(actualSpeakers) < maxScreenChar:
              {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                  -> anon_randomize
              - else:
                  -> conversation_selection
            }   
         - else:
         -> anon_randomize
      } 
    
    - 7:
      {
        - actualSpeakers hasnt Anon_sette:
          ~ actualSpeakers += Anon_sette 
            {
              - LIST_COUNT(actualSpeakers) < maxScreenChar:
              {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                  -> anon_randomize
              - else:
                  -> conversation_selection
            }   
         - else:
         -> anon_randomize
      } 
    
    - 8:
      {
          - actualSpeakers hasnt Anon_otto:
            ~ actualSpeakers += Anon_otto
              {
                - LIST_COUNT(actualSpeakers) < maxScreenChar:
                {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                    -> anon_randomize
                - else:
                    -> conversation_selection
              }   
          - else:
          -> anon_randomize
        } 
    
    - 9:
      {
        - actualSpeakers hasnt Anon_nove:
          ~ actualSpeakers += Anon_nove 
            {
              - LIST_COUNT(actualSpeakers) < maxScreenChar:
              {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                  -> anon_randomize
              - else:
                  -> conversation_selection
            }   
         - else:
         -> anon_randomize
      } 
    
    - 10:
      {
        - actualSpeakers hasnt Anon_dieci:
          ~ actualSpeakers += Anon_dieci 
            {
              - LIST_COUNT(actualSpeakers) < maxScreenChar:
              {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                  -> anon_randomize
              - else:
                  -> conversation_selection
            }   
         - else:
         -> anon_randomize
      } 
    
    - 11:
      {
        - actualSpeakers hasnt Anon_undici:
          ~ actualSpeakers += Anon_undici
            {
              - LIST_COUNT(actualSpeakers) < maxScreenChar:
              {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                  -> anon_randomize
              - else:
                  -> conversation_selection
            }   
         - else:
         -> anon_randomize
      } 
    
    - 12:
      {
        - actualSpeakers hasnt Anon_dodici:
          ~ actualSpeakers += Anon_dodici
            {
              - LIST_COUNT(actualSpeakers) < maxScreenChar:
              {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
                  -> anon_randomize
              - else:
                  -> conversation_selection
            }   
         - else:
         -> anon_randomize
      } 
  }





