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
  //Gestione finale
  {
    - LIST_COUNT(discoveredTopics) >= endGameCounter:
      -> endings
    - else:
      -> top  
  }

  - (top)
  @choose_character
  //Personaggi speciali
  + {actualSpeakers has Char_uno && character_personalization >= startNumber}[{Char_uno} #alias:xx #age:37 #body:medium #insearchof:sex]
    //Se interessato, vado al nodo, altrimenti reagisce in modo diverso.
        {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
        }
        {PGAge:
              - Vecchio:
                -> dialogue_Char_uno
              - Medio:
                -> dialogue_Char_uno
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Fit:
                -> dialogue_Char_uno
              - else:
                non sei il mio tipo
                -> randomize_characters    
        }
        {PGInSearchOf:
              - Sesso:
                -> dialogue_Char_uno
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }

      
  + {actualSpeakers has Char_due &&character_personalization >= startNumber}[{Char_due} #alias:xx #age:37 #body:medium #insearchof:sex]
        {activeTopics:
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters 
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
        }
        {PGAge:
              - Medio:
                -> dialogue_Char_due
              - else:
                non sei il mio tipo
                -> randomize_characters 
        }
        {PGBody:
              - Fit:
                -> dialogue_Char_due
              - Twink:
                -> dialogue_Char_due  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        {PGInSearchOf:
              - Sesso:
                -> dialogue_Char_due
              - Monogamia:
                -> dialogue_Char_due  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
      
  + {actualSpeakers has Char_tre &&character_personalization >= startNumber}[{Char_tre} #alias:xx #age:37 #body:medium #insearchof:sex]
        {activeTopics:
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters 
        }
        {PGAge:
              - Giovane:
                -> dialogue_Char_tre
              - Medio:
                -> dialogue_Char_tre
              - else:
                non sei il mio tipo
                -> randomize_characters 
        }
        {PGBody:
              - Fit:
                -> dialogue_Char_tre
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        {PGInSearchOf:
              - Poliamore:
                -> dialogue_Char_tre
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
      
  + {actualSpeakers has Char_quattro &&character_personalization >= startNumber}[{Char_quattro} #alias:xx #age:37 #body:medium #insearchof:sex]
        {activeTopics:
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters 
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
        }
        {PGAge:
              - Giovane:
                -> dialogue_Char_quattro
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Bear:
                -> dialogue_Char_quattro
              - else:
                non sei il mio tipo
                -> randomize_characters 
        }
        {PGInSearchOf:
              - Monogamia:
                -> dialogue_Char_quattro
              - Amicizia:
                -> dialogue_Char_quattro  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
      
  + {actualSpeakers has Char_cinque &&character_personalization >= startNumber}[{Char_cinque} #alias:xx #age:37 #body:medium #insearchof:sex]    
        {activeTopics:
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
        }
        {PGAge:
              - Giovane:
                -> dialogue_Char_cinque
              - else:
                non sei il mio tipo
                -> randomize_characters 
        }
        {PGBody:
              - Fit:
                -> dialogue_Char_cinque
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        {PGInSearchOf:
              - Sesso:
                -> dialogue_Char_cinque
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }

      
  + {actualSpeakers has Char_sei &&character_personalization >= startNumber}[{Char_sei} #alias:xx #age:37 #body:medium #insearchof:sex]
        {activeTopics:
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
        }
        {PGAge:
              - Medio:
                -> dialogue_Char_sei
              - Giovane:
                -> dialogue_Char_sei
              - else:
                non sei il mio tipo
                -> randomize_characters
        }
        {PGBody:
              - Fit:
                -> dialogue_Char_sei
              - Bear:
                -> dialogue_Char_sei  
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGInSearchOf:
              - Sesso:
                -> dialogue_Char_sei
              - else:
                non sei il mio tipo
                -> randomize_characters
        }
      
  + {actualSpeakers has Char_sette &&character_personalization >= startNumber}[{Char_sette} #alias:xx #age:37 #body:medium #insearchof:sex]      
        {activeTopics:
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters    

        }
        {PGAge:
              - Medio:
                -> dialogue_Char_sette
              - Giovane:
                -> dialogue_Char_sette
              - else:
                non sei il mio tipo
                -> randomize_characters 
        }
        {PGBody:
              - Fit:
                -> dialogue_Char_sette
              - Twink:
                -> dialogue_Char_sette 
              - else:
                non sei il mio tipo
                -> randomize_characters
        }
        {PGInSearchOf:
              - Monogamia:
                -> dialogue_Char_sette
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }

      
  + {actualSpeakers has Char_otto &&character_personalization >= startNumber}[{Char_otto} #alias:xx #age:37 #body:medium #insearchof:sex]
        {activeTopics:
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
        }
        {PGAge:
              - Medio:
                -> dialogue_Char_otto
              - Vecchio:
                -> dialogue_Char_otto
              - else:
                non sei il mio tipo
                -> randomize_characters
        }
        {PGBody:
              - Bear:
                -> dialogue_Char_otto
              - Twink:
                -> dialogue_Char_otto
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGInSearchOf:
              - Amicizia:
                -> dialogue_Char_otto
              - else:
                non sei il mio tipo
                -> randomize_characters 
        }
    


//Personaggi anonimi
    + (anon_uno){actualSpeakers has Anon_uno}[Anon_uno #alias:Peppo79 #age:40 #body:tonico #insearchof:amore della vita]
        {activeTopics:
            - Femme:
                Interessante quella roba lì sul tuo profilo, di abbracciare la tua femminilità.
                Vuoi vedere il mio cazzone?
                  -> randomize_characters
            - Ageism:
                Come se ci fosse qualcosa di orgoglioso nell'essere vecchio.
                Ti tira ancora, almeno?
                  -> randomize_characters
            - OldTwink:
                Uno però alla certa dovrebbe accettare la sua età.
                Mi fai tristezza.
              -> randomize_characters
            - Polyamory:
                "Orgoglioso di essere poliamoroso" è come "Sono felice di essere cornuto."
                Sfigato.
              -> randomize_characters
              abbiamo già parlato, via.
              -> randomize_characters   
        }
      
        {PGAge:
              - Vecchio:
                  Belloccio.
                  Per la tua età.
                  Io ho mentito un poco sulla mia.
                  Sono cose che si fanno, no?
                    -> randomize_characters  
        }
        {PGBody:
              - Twink:
                  Mi piacciono i tipetti asciutti.
                  E un po' così, effemminati.
                  Ora sono di corsa, ma mi faccio risentire.
                      -> randomize_characters  
              - Fit:
                  No.
                  Non potrei mai stare con uno più muscoloso di me.
                  Mi sentirei sempre una merda.
                      -> randomize_characters   
        }
        {PGInSearchOf:
              - Poliamore:
                  Che palle con questo poliamore.
                  Imparare a impegnarsi, no?
                    -> randomize_characters  
              - Monogamia:
                  Anche io cerco una relazione seria.
                  Ma becco solo casi umani.
                  Ehi, perché non rispondi?
                  Ehi!
                  Cafone!
                  Ti sto scrivendo!
                  -> randomize_characters  
              - Sesso:
                  Tu mi sai proprio di cazzo grosso.
                  Appena torno da lavoro ti mando una foto.
                  Ho due chiappe che sono da Nobel.
                -> randomize_characters
              
              - else:
                {
                  - anon_uno == 1:
                    Ciao.
                    Anzi, no.
                    Non sei il mio tipo.
                      -> randomize_characters 
                  - else:
                    Abbiamo già parlato, smamma.
                      -> randomize_characters 
                }
                        
        }
                
        
        
    + (anon_due){actualSpeakers has Anon_due}[Anon_due #alias:24IsNotTheAge #age:19 #body:lontra #insearchof:sesso ora]
      {activeTopics:
            - Expectations:
                Mi piace questa cosa delle aspettative che hai sul profilo, sai?
                Anche per scopare è sempre un casino.
                Funziona meglio quando ti trovi e scopri sul momento cosa vuoi.
                Grande! 
                  -> randomize_characters
            - Femme:
                Questa roba dell'essere femme mi disagia un po'.
                Cioè, se voglio andare con una donna, vado con una donna, no?
                  -> randomize_characters
            - Ageism:
                Ciao nonno.
                Sai che non sono mai stato con uno della tua età?
                Devi avere un sacco di cose da insegnarmi.
                E magari qualche regalo da farmi.
                Ci sentiamo dopo lezione!
                  -> randomize_characters
            - Polyamory:
                Figa la roba poli comunque.
                Non capisco perché posso avere tanti amici ma una sola persona da amare.
                Non tu, non mi piaci.
                Ma mi piace l'idea!
                  -> randomize_characters
        }
        
        {PGAge:
            - Vecchio:
              Uh, un po' di carne con esperienza, interessante.
              Chissà se hai più grosso il cazzo o il portafoglio?
                -> randomize_characters  
            - Giovane:
              Non ho molto da imparare da un tipo che ha quasi la mia età
              Anche se sei carino.
                -> randomize_characters    
        }
        {PGBody:
              - Bear:
                Mmm, no, non ti scoperei.
                Troppa panza.
                Però hai un bel faccino.
                Se fai della palestra poi ti do un GROSSO premio!
                  -> randomize_characters  
              - Fit:
                Mi piacciono i muscoli.
                Due bei deltoidi tesi mentre mi succhi il cazzo.
                  -> randomize_characters
        }
        {PGInSearchOf:
              - Amicizia:
                Cercare amicizia qui, che roba da sfigati.
                Ti faccio una sega, giusto per pietà, se vuoi.
                Dopo lezione.
                  -> randomize_characters  
              - Monogamia:
                Che cosa da vecchi questa roba della monogamia.
                  -> randomize_characters
              - else:
                {
                  - anon_due == 1:
                      Sai che una botta te la darei? 
                      Non è che sei il mio tipo, ma c'è qualcosa che mi fa dire "Faccia da bukkake".
                      Ed è un gran complimento detto da me!
                        -> randomize_characters  
                  - else:
                      Ed eccolo che ci riprova.
                      Guarda che ti blocco!
                        -> randomize_characters  
                }
                 
        }

      
          
      
    + (anon_tre){actualSpeakers has Anon_tre}[Anon_tre #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_tre == 1:
        {PGAge:
              - Vecchio:
                -> randomize_characters  
              - Medio:
                -> randomize_characters
              - Giovane:
                -> randomize_characters   
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Bear:
                -> randomize_characters  
              - Twink:
                -> randomize_characters  
              - Fit:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters    
        }
        {PGInSearchOf:
              - Amicizia:
                -> randomize_characters  
              - Poliamore:
                -> randomize_characters  
              - Monogamia:
                -> randomize_characters  
              - Sesso:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        - else:
          {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
            - else:
              abbiamo già parlato, via.
              -> randomize_characters   
        }
          
      }
    + (anon_quattro){actualSpeakers has Anon_quattro}[Anon_quattro #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_quattro == 1:
      {PGAge:
              - Vecchio:
                -> randomize_characters  
              - Medio:
                -> randomize_characters
              - Giovane:
                -> randomize_characters   
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Bear:
                -> randomize_characters  
              - Twink:
                -> randomize_characters  
              - Fit:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters    
        }
        {PGInSearchOf:
              - Amicizia:
                -> randomize_characters  
              - Poliamore:
                -> randomize_characters  
              - Monogamia:
                -> randomize_characters  
              - Sesso:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        - else:
          {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
            - else:
              abbiamo già parlato, via.
              -> randomize_characters   
        }
          
      }

    + (anon_cinque){actualSpeakers has Anon_cinque}[Anon_cinque #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_cinque == 1:
      {PGAge:
              - Vecchio:
                -> randomize_characters  
              - Medio:
                -> randomize_characters
              - Giovane:
                -> randomize_characters   
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Bear:
                -> randomize_characters  
              - Twink:
                -> randomize_characters  
              - Fit:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters    
        }
        {PGInSearchOf:
              - Amicizia:
                -> randomize_characters  
              - Poliamore:
                -> randomize_characters  
              - Monogamia:
                -> randomize_characters  
              - Sesso:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        - else:
          {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
            - else:
              abbiamo già parlato, via.
              -> randomize_characters   
        }
          
      }

    + (anon_sei){actualSpeakers has Anon_sei}[Anon_sei #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_sei == 1:
        {PGAge:
              - Vecchio:
                -> randomize_characters  
              - Medio:
                -> randomize_characters
              - Giovane:
                -> randomize_characters   
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Bear:
                -> randomize_characters  
              - Twink:
                -> randomize_characters  
              - Fit:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters    
        }
        {PGInSearchOf:
              - Amicizia:
                -> randomize_characters  
              - Poliamore:
                -> randomize_characters  
              - Monogamia:
                -> randomize_characters  
              - Sesso:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        - else:
          {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
            - else:
              abbiamo già parlato, via.
              -> randomize_characters   
        }
          
      }

    + (anon_sette){actualSpeakers has Anon_sette}[Anon_sette #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_sette == 1:
        {PGAge:
              - Vecchio:
                -> randomize_characters  
              - Medio:
                -> randomize_characters
              - Giovane:
                -> randomize_characters   
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Bear:
                -> randomize_characters  
              - Twink:
                -> randomize_characters  
              - Fit:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters    
        }
        {PGInSearchOf:
              - Amicizia:
                -> randomize_characters  
              - Poliamore:
                -> randomize_characters  
              - Monogamia:
                -> randomize_characters  
              - Sesso:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        - else:
          {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
            - else:
              abbiamo già parlato, via.
              -> randomize_characters   
        }
          
      }

    + (anon_otto){actualSpeakers has Anon_otto}[Anon_otto #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_otto == 1:
        {PGAge:
              - Vecchio:
                -> randomize_characters  
              - Medio:
                -> randomize_characters
              - Giovane:
                -> randomize_characters   
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Bear:
                -> randomize_characters  
              - Twink:
                -> randomize_characters  
              - Fit:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters    
        }
        {PGInSearchOf:
              - Amicizia:
                -> randomize_characters  
              - Poliamore:
                -> randomize_characters  
              - Monogamia:
                -> randomize_characters  
              - Sesso:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        - else:
          {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
            - else:
              abbiamo già parlato, via.
              -> randomize_characters   
        }
          
      }

    + (anon_nove){actualSpeakers has Anon_nove}[Anon_nove #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_nove == 1:
        {PGAge:
              - Vecchio:
                -> randomize_characters  
              - Medio:
                -> randomize_characters
              - Giovane:
                -> randomize_characters   
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Bear:
                -> randomize_characters  
              - Twink:
                -> randomize_characters  
              - Fit:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters    
        }
        {PGInSearchOf:
              - Amicizia:
                -> randomize_characters  
              - Poliamore:
                -> randomize_characters  
              - Monogamia:
                -> randomize_characters  
              - Sesso:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        - else:
          {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
            - else:
              abbiamo già parlato, via.
              -> randomize_characters   
        }
          
      }

    + (anon_dieci){actualSpeakers has Anon_dieci}[Anon_dieci #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_dieci == 1:
        {PGAge:
              - Vecchio:
                -> randomize_characters  
              - Medio:
                -> randomize_characters
              - Giovane:
                -> randomize_characters   
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Bear:
                -> randomize_characters  
              - Twink:
                -> randomize_characters  
              - Fit:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters    
        }
        {PGInSearchOf:
              - Amicizia:
                -> randomize_characters  
              - Poliamore:
                -> randomize_characters  
              - Monogamia:
                -> randomize_characters  
              - Sesso:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        - else:
          {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
            - else:
              abbiamo già parlato, via.
              -> randomize_characters   
        }
          
      }

    + (anon_undici){actualSpeakers has Anon_undici}[Anon_undici #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_undici == 1:
        {PGAge:
              - Vecchio:
                -> randomize_characters  
              - Medio:
                -> randomize_characters
              - Giovane:
                -> randomize_characters   
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Bear:
                -> randomize_characters  
              - Twink:
                -> randomize_characters  
              - Fit:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters    
        }
        {PGInSearchOf:
              - Amicizia:
                -> randomize_characters  
              - Poliamore:
                -> randomize_characters  
              - Monogamia:
                -> randomize_characters  
              - Sesso:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        - else:
          {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
            - else:
              abbiamo già parlato, via.
              -> randomize_characters   
        }
          
      }

    + (anon_dodici){actualSpeakers has Anon_dodici}[Anon_dodici #alias:xx #age:37 #body:medium #insearchof:sex]
      {
        - anon_dodici == 1:
        {PGAge:
              - Vecchio:
                -> randomize_characters  
              - Medio:
                -> randomize_characters
              - Giovane:
                -> randomize_characters   
              - else:
                non sei il mio tipo
                -> randomize_characters  
        }
        {PGBody:
              - Bear:
                -> randomize_characters  
              - Twink:
                -> randomize_characters  
              - Fit:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters    
        }
        {PGInSearchOf:
              - Amicizia:
                -> randomize_characters  
              - Poliamore:
                -> randomize_characters  
              - Monogamia:
                -> randomize_characters  
              - Sesso:
                -> randomize_characters  
              - else:
                non sei il mio tipo
                -> randomize_characters   
        }
        - else:
          {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Femme:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Friendship:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Ageism:
                non mi interessano quelle cose lì
              -> randomize_characters
            - OldTwink:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Polyamory:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> randomize_characters
            - Masculinity:
                non mi interessano quelle cose lì
              -> randomize_characters
            - else:
              abbiamo già parlato, via.
              -> randomize_characters   
        }
          
      } 
    -

    -> character_personalization









