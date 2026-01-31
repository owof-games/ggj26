INCLUDE variabilifunzioni.ink
INCLUDE dialogues.ink

-> randomize_pg


=== randomize_pg
{debug: <i>passo per randomize_pg}
  ~ PGAge = LIST_RANDOM(PGAge)
  ~ PGBody = LIST_RANDOM(PGBody)
  ~ PGInSearchOf = LIST_RANDOM(PGInSearchOf)
  ~ Alias = "{~Looking4Something|22AndMore|FuckAndTalk|Normale|M|Ospito|Maschile|NewInTown|TomTom|Ulisse|420|Gino|ACAB&Coccole|FatCock|THENERD|Gaymer|MaschioBianco}"

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
                  -> character_personalization
            - Ageism:
                Come se ci fosse qualcosa di orgoglioso nell'essere vecchio.
                Ti tira ancora, almeno?
                  -> character_personalization
            - OldTwink:
                Uno però alla certa dovrebbe accettare la sua età.
                Mi fai tristezza.
                  -> character_personalization
            - Polyamory:
                "Orgoglioso di essere poliamoroso" è come "Sono felice di essere cornuto."
                Sfigato.
                    -> character_personalization
        }
      
        {PGAge:
              - Vecchio:
                  Belloccio.
                  Per la tua età.
                  Io ho mentito un poco sulla mia.
                  Sono cose che si fanno, no?
                    -> character_personalization 
        }
        {PGBody:
              - Twink:
                  Mi piacciono i tipetti asciutti.
                  E un po' così, effemminati.
                  Ora sono di corsa, ma mi faccio risentire.
                      -> character_personalization  
              - Fit:
                  No.
                  Non potrei mai stare con uno più muscoloso di me.
                  Mi sentirei sempre una merda.
                      -> character_personalization 
        }
        {PGInSearchOf:
              - Poliamore:
                  Che palle con questo poliamore.
                  Imparare a impegnarsi, no?
                    -> character_personalization 
              - Monogamia:
                  Anche io cerco una relazione seria.
                  Ma becco solo casi umani.
                  Ehi, perché non rispondi?
                  Ehi!
                  Cafone!
                  Ti sto scrivendo!
                      -> character_personalization
              - Sesso:
                  Tu mi sai proprio di cazzo grosso.
                  Appena torno da lavoro ti mando una foto.
                  Ho due chiappe che sono da Nobel.
                    -> character_personalization
              
              - else:
                {
                  - anon_uno == 1:
                    Ciao.
                    Anzi, no.
                    Non sei il mio tipo.
                      -> character_personalization
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
                  -> character_personalization
            - Femme:
                Questa roba dell'essere femme mi disagia un po'.
                Cioè, se voglio andare con una donna, vado con una donna, no?
                  -> character_personalization
            - Ageism:
                Ciao nonno.
                Sai che non sono mai stato con uno della tua età?
                Devi avere un sacco di cose da insegnarmi.
                E magari qualche regalo da farmi.
                Ci sentiamo dopo lezione!
                  -> character_personalization
            - Polyamory:
                Figa la roba poli comunque.
                Non capisco perché posso avere tanti amici ma una sola persona da amare.
                Non tu, non mi piaci.
                Ma mi piace l'idea!
                  -> character_personalization
        }
        
        {PGAge:
            - Vecchio:
              Uh, un po' di carne con esperienza, interessante.
              Chissà se hai più grosso il cazzo o il portafoglio?
                -> character_personalization 
            - Giovane:
              Non ho molto da imparare da un tipo che ha quasi la mia età
              Anche se sei carino.
                -> character_personalization
        }
        {PGBody:
              - Bear:
                Mmm, no, non ti scoperei.
                Troppa panza.
                Però hai un bel faccino.
                Se fai della palestra poi ti do un GROSSO premio!
                  -> character_personalization
              - Fit:
                Mi piacciono i muscoli.
                Due bei deltoidi tesi mentre mi succhi il cazzo.
                  -> character_personalization
        }
        {PGInSearchOf:
              - Amicizia:
                Cercare amicizia qui, che roba da sfigati.
                Ti faccio una sega, giusto per pietà, se vuoi.
                Dopo lezione.
                  -> character_personalization 
              - Monogamia:
                Che cosa da vecchi questa roba della monogamia.
                  -> character_personalization
              - else:
                {
                  - anon_due == 1:
                      Sai che una botta te la darei? 
                      Non è che sei il mio tipo, ma c'è qualcosa che mi fa dire "Faccia da bukkake".
                      Ed è un gran complimento detto da me!
                        -> character_personalization
                  - else:
                      Ed eccolo che ci riprova.
                      Guarda che ti blocco!
                        -> randomize_characters  
                }
                 
        }

      
      
    + (anon_tre){actualSpeakers has Anon_tre}[Anon_tre #alias:Riproviamoci #age:36 #body:skinny legend #insearchof:amore della vita]

        {activeTopics:
            - Expectations:
                Ehi, ho visto i tuoi tag, e mi ha colpito il fatto che parli di aspettative.
                Qui mi sento un pesce fuor d'acqua.
                Dopo anni di matrimonio e tutto il resto.
                Vorrei solo una bella conversazione.
                Tranquilla.
                Senza pretese.
                Ma ora devo andare.
                  -> character_personalization
            - Femme:
                Il tag "femme".
                Cioè.
                Non è che puoi esserlo senza pure dirlo?
                O è un modo per prendere soldi dai più grandi?
                Perché io non ne ho.
                  -> character_personalization
            - Friendship:
                L'amicizia è una cosa carina, per carità.
                Mi fa piacere che l'hai messa nel tag.
                Ma, insomma.
                Non qui.
                Manco l'amore qui si trova!
                  -> character_personalization
            - Masculinity:
                Ma vedi te se uno deve criticare la mascolinità anche qui.
                Come se non ti facessi le seghe sui maschioni.
                Poi chiedono perché sono tutti incazzati con le cose woke.
                  -> character_personalization
        }
        {PGAge:
              - Vecchio:
                  Vederti qui mi uccide.
                  Perché se anche uno vecchio come te è a caccia, allora è vero che l'amore non esiste.
                  Che schifo essere gay.
                    -> character_personalization
              - Medio:
                  Uno della mia età quasi, qui.
                  Chissà se anche tu hai una storia triste.
                  Ora sono a lavoro, ma poi ti racconto la mia.
                    -> character_personalization
        }
        {PGBody:
              - Bear:
                  I corpi grossi mi piacciono.
                  Mi fanno sentire al sicuro.
                  Chissà com'è stare su quella pancia.
                  E invece devo stare qui, a scrivere mail al mio capo idiota.
                  A dopo.
                    -> character_personalization 
              - Twink:
                  Goditelo questo corpo sottile.
                  Perché non è eterno.
                      -> character_personalization 
        }
        {PGInSearchOf:
              - Poliamore:
                  Avete rovinato tutto, voi poligami.
                  Con le relazioni aperte e le cose anarchiche.
                  Te lo dico io: non hai trovato quello giusto.
                  Punto.
                  Magari una di queste sere si beve assieme.
                    -> character_personalization
              - Monogamia:
                  Un miracolo, un monogamo!
                  Forse c'è speranza.
                  Anche se non sei molto carino.
                    -> character_personalization 
              - Sesso:
                  Sesso, sesso, sesso.
                  Gli uomini gay pensano solo al sesso.
                  E poi dormono soli, disperati.
                      -> character_personalization
              - else:
              {
                - anon_tre == 1:
                    Non sembri male.
                    Ma l'ho già vista questa storia.
                    Uno è carino, belloccio.
                    Mi innamoro.
                    Lo sposo.
                    E poi mi fotte.
                    Per cui addio.
                    -> character_personalization 
                - else:
                    Non ho altro da dirti.
                    -> randomize_characters  
              }
        }
          
    + (anon_quattro){actualSpeakers has Anon_quattro}[Anon_quattro #alias:xx #age:37 #body:medium #insearchof:sex]

        {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> character_personalization
            - Femme:
                non mi interessano quelle cose lì
              -> character_personalization
            - Friendship:
                non mi interessano quelle cose lì
              -> character_personalization
            - Ageism:
                non mi interessano quelle cose lì
              -> character_personalization
            - OldTwink:
                non mi interessano quelle cose lì
              -> character_personalization
            - Polyamory:
                non mi interessano quelle cose lì
              -> character_personalization
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> character_personalization
            - Masculinity:
                non mi interessano quelle cose lì
              -> character_personalization 
        }  
        
      {PGAge:
              - Vecchio:
                -> character_personalization
              - Medio:
                -> character_personalization
              - Giovane:
                -> character_personalization  

        }
        {PGBody:
              - Bear:
                -> character_personalization
              - Twink:
                -> character_personalization
              - Fit:
                -> character_personalization
  
        }
        {PGInSearchOf:
              - Amicizia:
                -> character_personalization
              - Poliamore:
                -> character_personalization
              - Monogamia:
                -> character_personalization 
              - Sesso:
                -> character_personalization
              - else
                {
                  - anon_quattro == 1:
                    Non sei il mio tipo.
                      -> character_personalization
                  - else:
                    Abbiamo già parlato.
                    -> randomize_characters  
                }   
        }
  

    + (anon_cinque){actualSpeakers has Anon_cinque}[Anon_cinque #alias:xx #age:37 #body:medium #insearchof:sex]
              {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> character_personalization
            - Femme:
                non mi interessano quelle cose lì
              -> character_personalization
            - Friendship:
                non mi interessano quelle cose lì
              -> character_personalization
            - Ageism:
                non mi interessano quelle cose lì
              -> character_personalization
            - OldTwink:
                non mi interessano quelle cose lì
              -> character_personalization
            - Polyamory:
                non mi interessano quelle cose lì
              -> character_personalization
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> character_personalization
            - Masculinity:
                non mi interessano quelle cose lì
              -> character_personalization 
        }  
        
      {PGAge:
              - Vecchio:
                -> character_personalization
              - Medio:
                -> character_personalization
              - Giovane:
                -> character_personalization  

        }
        {PGBody:
              - Bear:
                -> character_personalization
              - Twink:
                -> character_personalization
              - Fit:
                -> character_personalization
  
        }
        {PGInSearchOf:
              - Amicizia:
                -> character_personalization
              - Poliamore:
                -> character_personalization
              - Monogamia:
                -> character_personalization 
              - Sesso:
                -> character_personalization
              - else
                {
                  - anon_cinque == 1:
                    Non sei il mio tipo.
                      -> character_personalization
                  - else:
                    Abbiamo già parlato.
                    -> randomize_characters  
                }   
        }
  

    + (anon_sei){actualSpeakers has Anon_sei}[Anon_sei #alias:xx #age:37 #body:medium #insearchof:sex]
              {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> character_personalization
            - Femme:
                non mi interessano quelle cose lì
              -> character_personalization
            - Friendship:
                non mi interessano quelle cose lì
              -> character_personalization
            - Ageism:
                non mi interessano quelle cose lì
              -> character_personalization
            - OldTwink:
                non mi interessano quelle cose lì
              -> character_personalization
            - Polyamory:
                non mi interessano quelle cose lì
              -> character_personalization
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> character_personalization
            - Masculinity:
                non mi interessano quelle cose lì
              -> character_personalization 
        }  
        
      {PGAge:
              - Vecchio:
                -> character_personalization
              - Medio:
                -> character_personalization
              - Giovane:
                -> character_personalization  

        }
        {PGBody:
              - Bear:
                -> character_personalization
              - Twink:
                -> character_personalization
              - Fit:
                -> character_personalization
  
        }
        {PGInSearchOf:
              - Amicizia:
                -> character_personalization
              - Poliamore:
                -> character_personalization
              - Monogamia:
                -> character_personalization 
              - Sesso:
                -> character_personalization
              - else
                {
                  - anon_sei == 1:
                    Non sei il mio tipo.
                      -> character_personalization
                  - else:
                    Abbiamo già parlato.
                    -> randomize_characters  
                }   
        }
  

    + (anon_sette){actualSpeakers has Anon_sette}[Anon_sette #alias:xx #age:37 #body:medium #insearchof:sex]
             {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> character_personalization
            - Femme:
                non mi interessano quelle cose lì
              -> character_personalization
            - Friendship:
                non mi interessano quelle cose lì
              -> character_personalization
            - Ageism:
                non mi interessano quelle cose lì
              -> character_personalization
            - OldTwink:
                non mi interessano quelle cose lì
              -> character_personalization
            - Polyamory:
                non mi interessano quelle cose lì
              -> character_personalization
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> character_personalization
            - Masculinity:
                non mi interessano quelle cose lì
              -> character_personalization 
        }  
        
      {PGAge:
              - Vecchio:
                -> character_personalization
              - Medio:
                -> character_personalization
              - Giovane:
                -> character_personalization  

        }
        {PGBody:
              - Bear:
                -> character_personalization
              - Twink:
                -> character_personalization
              - Fit:
                -> character_personalization
  
        }
        {PGInSearchOf:
              - Amicizia:
                -> character_personalization
              - Poliamore:
                -> character_personalization
              - Monogamia:
                -> character_personalization 
              - Sesso:
                -> character_personalization
              - else
                {
                  - anon_sette == 1:
                    Non sei il mio tipo.
                      -> character_personalization
                  - else:
                    Abbiamo già parlato.
                    -> randomize_characters  
                }   
        }
  

    + (anon_otto){actualSpeakers has Anon_otto}[Anon_otto #alias:xx #age:37 #body:medium #insearchof:sex]
              {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> character_personalization
            - Femme:
                non mi interessano quelle cose lì
              -> character_personalization
            - Friendship:
                non mi interessano quelle cose lì
              -> character_personalization
            - Ageism:
                non mi interessano quelle cose lì
              -> character_personalization
            - OldTwink:
                non mi interessano quelle cose lì
              -> character_personalization
            - Polyamory:
                non mi interessano quelle cose lì
              -> character_personalization
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> character_personalization
            - Masculinity:
                non mi interessano quelle cose lì
              -> character_personalization 
        }  
        
      {PGAge:
              - Vecchio:
                -> character_personalization
              - Medio:
                -> character_personalization
              - Giovane:
                -> character_personalization  

        }
        {PGBody:
              - Bear:
                -> character_personalization
              - Twink:
                -> character_personalization
              - Fit:
                -> character_personalization
  
        }
        {PGInSearchOf:
              - Amicizia:
                -> character_personalization
              - Poliamore:
                -> character_personalization
              - Monogamia:
                -> character_personalization 
              - Sesso:
                -> character_personalization
              - else
                {
                  - anon_otto == 1:
                    Non sei il mio tipo.
                      -> character_personalization
                  - else:
                    Abbiamo già parlato.
                    -> randomize_characters  
                }   
        }
  

    + (anon_nove){actualSpeakers has Anon_nove}[Anon_nove #alias:xx #age:37 #body:medium #insearchof:sex]
              {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> character_personalization
            - Femme:
                non mi interessano quelle cose lì
              -> character_personalization
            - Friendship:
                non mi interessano quelle cose lì
              -> character_personalization
            - Ageism:
                non mi interessano quelle cose lì
              -> character_personalization
            - OldTwink:
                non mi interessano quelle cose lì
              -> character_personalization
            - Polyamory:
                non mi interessano quelle cose lì
              -> character_personalization
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> character_personalization
            - Masculinity:
                non mi interessano quelle cose lì
              -> character_personalization 
        }  
        
      {PGAge:
              - Vecchio:
                -> character_personalization
              - Medio:
                -> character_personalization
              - Giovane:
                -> character_personalization  

        }
        {PGBody:
              - Bear:
                -> character_personalization
              - Twink:
                -> character_personalization
              - Fit:
                -> character_personalization
  
        }
        {PGInSearchOf:
              - Amicizia:
                -> character_personalization
              - Poliamore:
                -> character_personalization
              - Monogamia:
                -> character_personalization 
              - Sesso:
                -> character_personalization
              - else
                {
                  - anon_nove == 1:
                    Non sei il mio tipo.
                      -> character_personalization
                  - else:
                    Abbiamo già parlato.
                    -> randomize_characters  
                }   
        }
  

    + (anon_dieci){actualSpeakers has Anon_dieci}[Anon_dieci #alias:xx #age:37 #body:medium #insearchof:sex]
              {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> character_personalization
            - Femme:
                non mi interessano quelle cose lì
              -> character_personalization
            - Friendship:
                non mi interessano quelle cose lì
              -> character_personalization
            - Ageism:
                non mi interessano quelle cose lì
              -> character_personalization
            - OldTwink:
                non mi interessano quelle cose lì
              -> character_personalization
            - Polyamory:
                non mi interessano quelle cose lì
              -> character_personalization
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> character_personalization
            - Masculinity:
                non mi interessano quelle cose lì
              -> character_personalization 
        }  
        
      {PGAge:
              - Vecchio:
                -> character_personalization
              - Medio:
                -> character_personalization
              - Giovane:
                -> character_personalization  

        }
        {PGBody:
              - Bear:
                -> character_personalization
              - Twink:
                -> character_personalization
              - Fit:
                -> character_personalization
  
        }
        {PGInSearchOf:
              - Amicizia:
                -> character_personalization
              - Poliamore:
                -> character_personalization
              - Monogamia:
                -> character_personalization 
              - Sesso:
                -> character_personalization
              - else
                {
                  - anon_dieci == 1:
                    Non sei il mio tipo.
                      -> character_personalization
                  - else:
                    Abbiamo già parlato.
                    -> randomize_characters  
                }   
        }
  

    + (anon_undici){actualSpeakers has Anon_undici}[Anon_undici #alias:xx #age:37 #body:medium #insearchof:sex]
              {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> character_personalization
            - Femme:
                non mi interessano quelle cose lì
              -> character_personalization
            - Friendship:
                non mi interessano quelle cose lì
              -> character_personalization
            - Ageism:
                non mi interessano quelle cose lì
              -> character_personalization
            - OldTwink:
                non mi interessano quelle cose lì
              -> character_personalization
            - Polyamory:
                non mi interessano quelle cose lì
              -> character_personalization
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> character_personalization
            - Masculinity:
                non mi interessano quelle cose lì
              -> character_personalization 
        }  
        
      {PGAge:
              - Vecchio:
                -> character_personalization
              - Medio:
                -> character_personalization
              - Giovane:
                -> character_personalization  

        }
        {PGBody:
              - Bear:
                -> character_personalization
              - Twink:
                -> character_personalization
              - Fit:
                -> character_personalization
  
        }
        {PGInSearchOf:
              - Amicizia:
                -> character_personalization
              - Poliamore:
                -> character_personalization
              - Monogamia:
                -> character_personalization 
              - Sesso:
                -> character_personalization
              - else
                {
                  - anon_undici == 1:
                    Non sei il mio tipo.
                      -> character_personalization
                  - else:
                    Abbiamo già parlato.
                    -> randomize_characters  
                }   
        }
  

    + (anon_dodici){actualSpeakers has Anon_dodici}[Anon_dodici #alias:xx #age:37 #body:medium #insearchof:sex]
              {activeTopics:
            - Expectations:
                non mi interessano quelle cose lì
              -> character_personalization
            - Femme:
                non mi interessano quelle cose lì
              -> character_personalization
            - Friendship:
                non mi interessano quelle cose lì
              -> character_personalization
            - Ageism:
                non mi interessano quelle cose lì
              -> character_personalization
            - OldTwink:
                non mi interessano quelle cose lì
              -> character_personalization
            - Polyamory:
                non mi interessano quelle cose lì
              -> character_personalization
            - Dysmorphia:
                non mi interessano quelle cose lì
              -> character_personalization
            - Masculinity:
                non mi interessano quelle cose lì
              -> character_personalization 
        }  
        
      {PGAge:
              - Vecchio:
                -> character_personalization
              - Medio:
                -> character_personalization
              - Giovane:
                -> character_personalization  

        }
        {PGBody:
              - Bear:
                -> character_personalization
              - Twink:
                -> character_personalization
              - Fit:
                -> character_personalization
  
        }
        {PGInSearchOf:
              - Amicizia:
                -> character_personalization
              - Poliamore:
                -> character_personalization
              - Monogamia:
                -> character_personalization 
              - Sesso:
                -> character_personalization
              - else
                {
                  - anon_dodici == 1:
                    Non sei il mio tipo.
                      -> character_personalization
                  - else:
                    Abbiamo già parlato.
                    -> randomize_characters  
                }   
        }
  
    -

    -> character_personalization









