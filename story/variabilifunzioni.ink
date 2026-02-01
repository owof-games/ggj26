//VARIABILI//

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


VAR discoveredTopics = ()

VAR actualSpeakers = ()


// Dati PG
VAR PGAge = (Giovane, Medio, Vecchio)
VAR PGBody = (Bear, Fit, Twink)
VAR PGInSearchOf = (Monogamia, Poliamore, Sesso, Amicizia)
VAR Alias = ""

//Numero di iterazioni prima di avere personaggi speciali
VAR startNumber = 3
//Numero di personaggi max per schermata
VAR maxScreenChar = 9
//Numero di personaggi speciali max per schermata
VAR maxSpecialChar = 3
//Numero di topics sbloccati per chiudere il gioco
VAR endGameCounter = 3

//Variabli per non ripetere i topics degli anonimi
    //anon_uno
        VAR anon_unoFemme = true
        VAR anon_unoAgeism = true
        VAR anon_unoOldTwink= true
        VAR anon_unoPoliamory = true
        VAR anon_unoVecchio = true
        VAR anon_unoTwink = true
        VAR anon_unoFit= true
        VAR anon_unoPoliamore = true
        VAR anon_unoMonogamia = true
        VAR anon_unoSesso = true
    //anon_due
        VAR anon_dueExpectations = true
        VAR anon_dueFemme = true
        VAR anon_dueAgeism= true
        VAR anon_duePolyamory = true
        VAR anon_dueVecchio = true
        VAR anon_dueBear = true
        VAR anon_dueAmicizia= true
        VAR anon_dueMonogamia = true
        VAR anon_dueFit = true
        VAR anon_dueGiovane = true
    //anon_tre
        VAR anon_treExpectations = true
        VAR anon_treFemme = true
        VAR anon_treAgeism= true
        VAR anon_trePolyamory = true
        VAR anon_treVecchio = true
        VAR anon_treBear = true
        VAR anon_treAmicizia= true
        VAR anon_treMonogamia = true
        VAR anon_treFit = true
        VAR anon_treGiovane = true
        VAR anon_treFriendship = true
        VAR anon_treMasculinity = true
        VAR anon_treTwink = true
        VAR anon_treMedio = true
        VAR anon_trePoliamore = true
        VAR anon_treSesso = true
        VAR anon_treOldTwink = true
        VAR anon_treDysmorphia = true
    //anon_quattro
        VAR anon_quattroFemme = true
        VAR anon_quattroAgeism = true
        VAR anon_quattroMasculinity = true
        VAR anon_quattroGiovane = true
        VAR anon_quattroBear = true
        VAR anon_quattroFit = true
        VAR anon_quattroSesso = true 
    //anon_cinque
        VAR anon_cinqueFemme = true 
        VAR anon_cinqueMasculinity = true 
        VAR anon_cinqueGiovane = true 
        VAR anon_cinqueBear = true 
        VAR anon_cinqueSesso = true 
    //anon_sei
        VAR anon_seiFriendship  = true 
        VAR anon_seiDysmorphia = true 
        VAR anon_seiMedio = true 
        VAR anon_seiTwink = true 
        VAR anon_seiPoliamore = true
    //anon_sette
        VAR anon_setteFriendship = true
        VAR anon_setteAgeism = true
        VAR anon_setteGiovane = true
        VAR anon_setteTwink = true
        VAR anon_setteSesso = true
    //anon_otto
        VAR anon_ottoFemme = true
        VAR anon_ottoDysmorphia = true
        VAR anon_ottoMedio = true
        VAR anon_ottoBear = true
        VAR anon_ottoMonogamia = true
    //anon_nove
        VAR anon_novePolyamory = true
        VAR anon_noveMasculinity = true
        VAR anon_noveGiovane = true
        VAR anon_noveMonogamia = true
        VAR anon_noveSesso = true
    //anon_dieci
        VAR anon_dieciAgeism = true
        VAR anon_dieciOldTwink = true
        VAR anon_dieciVecchio = true
        VAR anon_dieciBear = true
        VAR anon_dieciMonogamia = true
    //anon_undici
        VAR anon_undiciPolyamory = true
        VAR anon_undiciVecchio = true
        VAR anon_undiciMedio = true
        VAR anon_undiciFit = true
        VAR anon_undiciPoliamore = true    
    //anon_dodici
        VAR anon_dodiciExpectations = true  
        VAR anon_dodiciDysmorphia = true  
        VAR anon_dodiciFit = true  
        VAR anon_dodiciSesso = true  

//FUNZIONI///
//GESTIONE PG//
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

=== function activeWords()
~ temp text = ""
{ activeTopics has Ageism:
    ~ text = concat(text, "Proud To Be Old.")
}
{ activeTopics has OldTwink:
    ~ text = concat(text, "Vecchia twink fa buon twerk.")
}
{ activeTopics has Polyamory:
    ~ text = concat(text, "L'amore è infinito ma la mia pazienza no.")
}
{ activeTopics has Expectations:
    ~ text = concat(text, "Conosciamoci con calma, senza preconcetti.")
}
{ activeTopics has Dysmorphia:
    ~ text = concat(text, "Sto imparando ad amare il mio corpo.")
}
{ activeTopics has Masculinity:
    ~ text = concat(text, "Meglio beta che misogino.")
}
{ activeTopics has Femme:
    ~ text = concat(text, "Sono la mia dea.")
}
{ activeTopics has Friendship:
    ~ text = concat(text, "Meglio appuntamento: confidenze, amicizia e uncinetto.")
}
~ return text


=== function concat(str1, str2)
{ str1 == "":
    ~ return str2
- else:
    ~ return "{str1} {str2}"
}


=== character_personalization
{debug: <i>character_personalization}
  - (loop)

  @profile #alias: {Alias} #age: {pg_age_translator()} #body: {pg_body_translator()} #insearchof: {pg_in_search_of()} #tag: {activeWords()}

  + {discoveredTopics has Ageism} [Ageism]
      {
        - activeTopics hasnt Ageism:
          ~ activeTopics += Ageism
        - else:
          ~ activeTopics-= Ageism  
      }
      -> loop

  + {discoveredTopics has OldTwink} [OldTwink]
      {
        - activeTopics hasnt OldTwink:
          ~ activeTopics += OldTwink
        - else:
          ~ activeTopics -= OldTwink 
      }
      -> loop

  + {discoveredTopics has Polyamory} [Polyamory]
      {
        - activeTopics hasnt Polyamory:
          ~ activeTopics += Polyamory
        - else:
          ~ activeTopics -= Polyamory
      }
      -> loop

  + {discoveredTopics has Expectations} [Expectations]
      {
        - activeTopics hasnt Expectations:
          ~ activeTopics += Expectations
        - else:
          ~ activeTopics -= Expectations
      }
      -> loop
  + {discoveredTopics has Dysmorphia} [Dysmorphia]
      {
        - activeTopics hasnt Dysmorphia:
          ~ activeTopics += Dysmorphia
        - else:
          ~ activeTopics -= Dysmorphia
      }
      -> loop

  + {discoveredTopics has Masculinity} [Masculinity]
      {
        - activeTopics hasnt Masculinity:
          ~ activeTopics += Masculinity
        - else:
          ~ activeTopics -= Masculinity
      }
      -> loop

  + {discoveredTopics has Femme} [Femme]
      {
        - activeTopics hasnt Femme:
          ~ activeTopics += Femme
        - else:
          ~ activeTopics -= Femme
      }
      -> loop

  + {discoveredTopics has Friendship} [Friendship]
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
                - LIST_COUNT(actualSpeakers) < maxSpecialChar: 
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
                - LIST_COUNT(actualSpeakers) < maxSpecialChar: 
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
                - LIST_COUNT(actualSpeakers) < maxSpecialChar: 
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
                - LIST_COUNT(actualSpeakers) < maxSpecialChar: 
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
                - LIST_COUNT(actualSpeakers) < maxSpecialChar: 
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
                - LIST_COUNT(actualSpeakers) < maxSpecialChar: 
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
                - LIST_COUNT(actualSpeakers) < maxSpecialChar: 
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
                - LIST_COUNT(actualSpeakers) < maxSpecialChar: 
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
  //~ temp anon_randomizeDice = RANDOM(1,6)
  // {debug: il valore di anon_randomizeDice è {anon_randomizeDice}.}
  // {anon_randomizeDice:

    ~ actualSpeakers += Anon_uno
    ~ actualSpeakers += Anon_due
    ~ actualSpeakers += Anon_tre
    ~ actualSpeakers += Anon_quattro
    ~ actualSpeakers += Anon_cinque
    ~ actualSpeakers += Anon_sei

  -> conversation_selection

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
    
    // - 7:
    //   {
    //     - actualSpeakers hasnt Anon_sette:
    //       ~ actualSpeakers += Anon_sette 
    //         {
    //           - LIST_COUNT(actualSpeakers) < maxScreenChar:
    //           {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
    //               -> anon_randomize
    //           - else:
    //               -> conversation_selection
    //         }   
    //      - else:
    //      -> anon_randomize
    //   } 
    
    // - 8:
    //   {
    //       - actualSpeakers hasnt Anon_otto:
    //         ~ actualSpeakers += Anon_otto
    //           {
    //             - LIST_COUNT(actualSpeakers) < maxScreenChar:
    //             {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
    //                 -> anon_randomize
    //             - else:
    //                 -> conversation_selection
    //           }   
    //       - else:
    //       -> anon_randomize
    //     } 
    
    // - 9:
    //   {
    //     - actualSpeakers hasnt Anon_nove:
    //       ~ actualSpeakers += Anon_nove 
    //         {
    //           - LIST_COUNT(actualSpeakers) < maxScreenChar:
    //           {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
    //               -> anon_randomize
    //           - else:
    //               -> conversation_selection
    //         }   
    //      - else:
    //      -> anon_randomize
    //   } 
    
    // - 10:
    //   {
    //     - actualSpeakers hasnt Anon_dieci:
    //       ~ actualSpeakers += Anon_dieci 
    //         {
    //           - LIST_COUNT(actualSpeakers) < maxScreenChar:
    //           {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
    //               -> anon_randomize
    //           - else:
    //               -> conversation_selection
    //         }   
    //      - else:
    //      -> anon_randomize
    //   } 
    
    // - 11:
    //   {
    //     - actualSpeakers hasnt Anon_undici:
    //       ~ actualSpeakers += Anon_undici
    //         {
    //           - LIST_COUNT(actualSpeakers) < maxScreenChar:
    //           {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
    //               -> anon_randomize
    //           - else:
    //               -> conversation_selection
    //         }   
    //      - else:
    //      -> anon_randomize
    //   } 
    
    // - 12:
    //   {
    //     - actualSpeakers hasnt Anon_dodici:
    //       ~ actualSpeakers += Anon_dodici
    //         {
    //           - LIST_COUNT(actualSpeakers) < maxScreenChar:
    //           {debug: il valore di actualSpeakers è {LIST_COUNT(actualSpeakers)}}
    //               -> anon_randomize
    //           - else:
    //               -> conversation_selection
    //         }   
    //      - else:
    //      -> anon_randomize
    //   } 
  }