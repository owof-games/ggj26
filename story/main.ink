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
  + {actualSpeakers has Char_uno && character_personalization >= startNumber}[{Char_uno} #alias:37top #age:37 #body:normale #insearchof:qualcuno da riempire]
    //Tema che genera: Ageismo
        {activeTopics:
            - Femme:
              {char_unoFemme:
                  Anon: "Sono la mia dea."
                  Anon: Certo che a voi il femminismo ha fatto proprio male.
                    ~ char_unoFemme = false
                    -> randomize_characters
              }      
            - Friendship:
              {char_unoFriendship:
                  Anon: "Meglio appuntamento: confidenze, amicizia e uncinetto."
                  Anon: Posso dire che è una cosa da smosciacazzi?
                      ~ char_unoFriendship = false
                    -> randomize_characters
              }      
        }
  
        {PGAge:
              - Vecchio:
                -> dialogue_Char_uno
              - Medio:
                -> dialogue_Char_uno
        }
        {PGBody:
              - Fit:
                -> dialogue_Char_uno
        }
        {PGInSearchOf:
              - Sesso:
                -> dialogue_Char_uno
              - else:
                Anon: Lascia fare, non sei il mio tipo.
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
    + (anon_uno){actualSpeakers has Anon_uno}[Anon_uno #alias:Peppo79 #age:40 #body:tonico #insearchof:la mia metà]
        {activeTopics:
            - Femme:
              {anon_unoFemme:
                Anon: Interessante quella roba lì sul tuo profilo, di abbracciare la tua femminilità.
                Anon: Vuoi vedere il mio cazzone?
                  ~ anon_unoFemme = false
                    -> character_personalization
              }
                 
            - Ageism:
            {anon_unoAgeism:
                Anon: Come se ci fosse qualcosa di orgoglioso nell'essere vecchio.
                Anon: Ti tira ancora, almeno?
                  ~ anon_unoAgeism = false
                  -> character_personalization
            }
            - OldTwink:
            {anon_unoOldTwink:
                Anon: Uno però alla certa dovrebbe accettare la sua età.
                Anon: Mi fai tristezza.
                  ~ anon_unoOldTwink = false
                  -> character_personalization
            }
            - Polyamory:
              {anon_unoPoliamory:
                Anon: "Orgoglioso di essere poliamoroso" è come "Sono felice di essere cornuto."
                Anon: Sfigato.
                  ~ anon_unoPoliamory = false
                    -> character_personalization
              }      
        }
      
        {PGAge:
              - Vecchio:
              {anon_unoVecchio:
                  Anon: Belloccio.
                  Anon: Per la tua età.
                  Anon: Io ho mentito un poco sulla mia.
                  Anon: Sono cose che si fanno, no?
                    ~ anon_unoVecchio = false
                    -> character_personalization 
              }     
        }
        {PGBody:
              - Twink:
              {anon_unoTwink:
                  Anon: Mi piacciono i tipetti asciutti.
                  Anon: E un po' così, effemminati.
                  Anon: Ora sono di corsa, ma mi faccio risentire.
                    ~ anon_unoTwink = false
                      -> character_personalization
              }
              - Fit:
              {anon_unoFit:
                  Anon: No.
                  Anon: Non potrei mai stare con uno più muscoloso di me.
                  Anon: Mi sentirei sempre una merda.
                    ~ anon_unoFit = false
                      -> character_personalization 
              }        
        }
        {PGInSearchOf:
              - Poliamore:
              {anon_unoPoliamore:
                  Anon: Che palle con questo poliamore.
                  Anon: Imparare a impegnarsi, no?
                    ~ anon_unoPoliamore = false
                    -> character_personalization
              }
              - Monogamia:
              {anon_unoMonogamia:
                  Anon: Anche io cerco una relazione seria.
                  Anon: Ma becco solo casi umani.
                  Anon: Ehi, perché non rispondi?
                  Anon: Ehi!
                  Anon: Cafone!
                  Anon: Ti sto scrivendo!
                    ~ anon_unoMonogamia = false
                      -> character_personalization
              }
              - Sesso:
              {anon_unoSesso:
                  Anon: Tu mi sai proprio di cazzo grosso.
                  Anon: Appena torno da lavoro ti mando una foto.
                  Anon: Ho due chiappe che sono da Nobel.
                    ~ anon_unoSesso = false
                    -> character_personalization
              }             
        }

      {
        - anon_uno == 1:
          Anon: Ciao.
          Anon: Anzi, no.
          Anon: Non sei il mio tipo.
            -> character_personalization
        - else:
          Anon: Abbiamo già parlato, smamma.
            -> randomize_characters 
      }
                
        
        
    + (anon_due){actualSpeakers has Anon_due}[Anon_due #alias:24IsNotTheAge #age:19 #body:lontra #insearchof:sesso ora]
      {activeTopics:
          - Expectations:
            {anon_dueExpectations:
                Anon: Mi piace questa cosa delle aspettative che hai sul profilo, sai?
                Anon: Anche per scopare è sempre un casino.
                Anon: Funziona meglio quando ti trovi e scopri sul momento cosa vuoi.
                Anon: Grande!
                    ~ anon_dueExpectations = false
                  -> character_personalization
            }    
          - Femme:
            {anon_dueFemme:
                Anon: Questa roba dell'essere femme mi disagia un po'.
                Anon: Cioè, se voglio andare con una donna, vado con una donna, no?
                    ~ anon_dueFemme = false
                  -> character_personalization
            }      
          - Ageism:
            {anon_dueAgeism:
                Anon: Ciao nonno.
                Anon: Sai che non sono mai stato con uno della tua età?
                Anon: Devi avere un sacco di cose da insegnarmi.
                Anon: E magari qualche regalo da farmi.
                Anon: Ci sentiamo dopo lezione!
                    ~ anon_dueAgeism = false
                  -> character_personalization
              }    
          - Polyamory:
          {anon_duePolyamory:
              Anon: Figa la roba poli comunque.
              Anon: Non capisco perché posso avere tanti amici ma una sola persona da amare.
              Anon: Non tu, non mi piaci.
              Anon: Ma mi piace l'idea!
                  ~ anon_duePolyamory = false
                -> character_personalization
          }      
        }
        
        {PGAge:
            - Vecchio:
            {anon_dueVecchio:
              Anon: Uh, un po' di carne con esperienza, interessante.
              Anon: Chissà se hai più grosso il cazzo o il portafoglio?
                  ~ anon_dueVecchio = false
                -> character_personalization
            }   
            - Giovane:
            {anon_dueGiovane:
              Anon: Non ho molto da imparare da un tipo che ha quasi la mia età
              Anon: Anche se sei carino.
                  ~ anon_dueGiovane = false
                -> character_personalization
            }    
        }
        {PGBody:
              - Bear_
              {anon_dueBear:
                Anon: Mmm, no, non ti scoperei.
                Anon: Troppa panza.
                Anon: Però hai un bel faccino.
                Anon: Se fai della palestra poi ti do un GROSSO premio!
                    ~ anon_dueBear = false
                  -> character_personalization
              }    
              - Fit:
              {anon_dueFit:
                Anon: Mi piacciono i muscoli.
                Anon: Due bei deltoidi tesi mentre mi succhi il cazzo.
                    ~ anon_dueFit = false
                  -> character_personalization
              }    
        }
        {PGInSearchOf:
              - Amicizia:
              {anon_dueAmicizia:
                Anon: Cercare amicizia qui, che roba da sfigati.
                Anon: Ti faccio una sega, giusto per pietà, se vuoi.
                Anon: Dopo lezione.
                    ~ anon_dueAmicizia = false
                  -> character_personalization 
              }   
              - Monogamia:
              {anon_dueMonogamia:
                Anon: Che cosa da vecchi questa roba della monogamia.
                    ~ anon_dueMonogamia = false
                  -> character_personalization
              }    
        }

        {
          - anon_due == 1:
              Anon: Sai che una botta te la darei? 
              Anon: Non è che sei il mio tipo, ma c'è qualcosa che mi fa dire "Faccia da bukkake".
              Anon: Ed è un gran complimento detto da me!
                -> character_personalization
          - else:
              Anon: Ed eccolo che ci riprova.
              Anon: Guarda che ti blocco!
                -> randomize_characters  
        }
      
      
    + (anon_tre){actualSpeakers has Anon_tre}[Anon_tre #alias:Riproviamoci #age:36 #body:skinny legend #insearchof:Grande Amore]

        {activeTopics:
            - Expectations:
            {anon_treExpectations:
                Anon: Ehi, ho visto i tuoi tag, e mi ha colpito il fatto che parli di aspettative.
                Anon: Qui mi sento un pesce fuor d'acqua.
                Anon: Dopo anni di matrimonio e tutto il resto.
                Anon: Vorrei solo una bella conversazione.
                Anon: Tranquilla.
                Anon: Senza pretese.
                Anon: Ma ora devo andare.
                  ~ anon_treExpectations = false
                  -> character_personalization
            }      
            - Femme:
            {anon_treFemme:
                Anon: Il tag "femme".
                Anon: Cioè.
                Anon: Non è che puoi esserlo senza pure dirlo?
                Anon: O è un modo per prendere soldi dai più grandi?
                Anon: Perché io non ne ho.
                  ~ anon_treFemme = false
                  -> character_personalization
            }      
            - Friendship:
            {anon_treFriendship:
                Anon: L'amicizia è una cosa carina, per carità.
                Anon: Mi fa piacere che l'hai messa nel tag.
                Anon: Ma, insomma.
                Anon: Non qui.
                Anon: Manco l'amore qui si trova!
                  ~ anon_treFriendship = false
                  -> character_personalization
            }      
            - Masculinity:
            {anon_treMasculinity:
                Anon: Ma vedi te se uno deve criticare la mascolinità anche qui.
                Anon: Come se non ti facessi le seghe sui maschioni.
                Anon: Poi chiedono perché sono tutti incazzati con le cose woke.
                  ~ anon_treMasculinity = false
                  -> character_personalization
            }      
        }
        {PGAge:
              - Vecchio:
              {anon_treVecchio:
                  Anon: Vederti qui mi uccide.
                  Anon: Perché se anche uno vecchio come te è a caccia, allora è vero che l'amore non esiste.
                  Anon: Che schifo essere gay.
                    ~ anon_treVecchio = false
                    -> character_personalization
              }      
              - Medio:
              {anon_treMedio:
                  Anon: Uno della mia età quasi, qui.
                  Anon: Chissà se anche tu hai una storia triste.
                  Anon: Ora sono a lavoro, ma poi ti racconto la mia.
                    ~ anon_treMedio = false
                    -> character_personalization
              }      
        }
        {PGBody:
              - Bear:
              {anon_treBear:
                  Anon: I corpi grossi mi piacciono.
                  Anon: Mi fanno sentire al sicuro.
                  Anon: Chissà com'è stare su quella pancia.
                  Anon: E invece devo stare qui, a scrivere mail al mio capo idiota.
                  Anon: A dopo.
                    ~ anon_treBear = false
                    -> character_personalization
              }      
              - Twink:
              {anon_treTwink:
                  Anon: Goditelo questo corpo sottile.
                  Anon: Perché non è eterno.
                    ~ anon_treTwink = false
                      -> character_personalization
              }       
        }
        {PGInSearchOf:
              - Poliamore:
              {anon_trePoliamore:
                  Anon: Avete rovinato tutto, voi poligami.
                  Anon: Con le relazioni aperte e le cose anarchiche.
                  Anon: Te lo dico io: non hai trovato quello giusto.
                  Anon: Punto.
                  Anon: Magari una di queste sere si beve assieme.
                    ~ anon_trePoliamore = false
                    -> character_personalization
              }      
              - Monogamia:
              {anon_treMonogamia:
                  Anon: Un miracolo, un monogamo!
                  Anon: Forse c'è speranza.
                  Anon: Anche se non sei molto carino.
                    ~ anon_treMonogamia = false
                    -> character_personalization
              }       
              - Sesso:
              {anon_treSesso:
                  Anon: Sesso, sesso, sesso.
                  Anon: Gli uomini gay pensano solo al sesso.
                  Anon: E poi dormono soli, disperati.
                    ~ anon_treSesso = false
                      -> character_personalization
              }        
        }
      {
        - anon_tre == 1:
            Anon: Non sembri male.
            Anon: Ma l'ho già vista questa storia.
            Anon: Uno è carino, belloccio.
            Anon: Mi innamoro.
            Anon: Lo sposo.
            Anon: E poi mi fotte.
            Anon: Per cui addio.
            -> character_personalization 
        - else:
            Anon: Non ho altro da dirti.
            -> randomize_characters  
      }    
          
    + (anon_quattro){actualSpeakers has Anon_quattro}[Anon_quattro #alias:sì #age:sì #body:sì #insearchof:sì]

        {activeTopics:
            - Femme:
                  {anon_quattroFemme:
                    Anon: C'hai il cazzo?
                    Anon: Ah ma non sei trans.
                    Anon: Cazzo è la dea?
                      ~ anon_quattroFemme = false
                      -> character_personalization
                  }
            - Ageism:
                {anon_quattroAgeism:
                    Anon: Vecchio di merda.
                      ~ anon_quattroAgeism = false
                      -> character_personalization
                  }
            - Masculinity:
                {anon_quattroMasculinity:
                    Anon: Meglio beta, certo.
                    Anon: Puoi anche dire che lo pigli e basta.
                      ~ anon_quattroMasculinity = false
                      -> character_personalization
                  }
        }  
        
      {PGAge:
              - Giovane:
                {anon_quattroGiovane:
                    Anon: Ti piacciono più vecchi?
                    Anon: Ehi rispondi!
                    Anon: Hai foto culo?
                      ~ anon_quattroGiovane = false
                      -> character_personalization
                  }

        }
        {PGBody:
              - Bear:
                {anon_quattroBear:
                    Anon: ...
                    Anon: ...
                    Anon: SO io come farti dimagire.
                      ~ anon_quattroBear= false
                      -> character_personalization
                  }
              - Fit:
                {anon_quattroFit:
                    Anon: Bei muscoli.
                    Anon: Si vede che non c'hai niente da fare.
                      ~ anon_quattroFit = false
                      -> character_personalization
                  }
  
        }
        {PGInSearchOf:
              - Sesso:
                {anon_quattroSesso:
                    Anon: Siamo in due.
                    Anon: Il mio amico è una di quelle passive da battaglia.
                    Anon: Bel culo.
                    Anon: Ti va?
                    Anon: Ohi, ci 6?
                    Anon: Ma vaffanculo!
                      ~ anon_quattroSesso = false
                      -> character_personalization
                  } 
        }
        {
          - anon_quattro == 1:
              Anon: No grazie.
              -> character_personalization
          - else:
              Anon: Smollami.
            -> randomize_characters  
        } 
  

    + (anon_cinque){actualSpeakers has Anon_cinque}[Anon_cinque #alias:QuelBenny #age:21 #body:alphaMale #insearchof: sex tra maschi]
    //Lui è il tipo camerata
          {activeTopics:
            - Femme:
                  {anon_cinqueFemme:
                    Anon: Ma quale dea e dea.
                    Anon: Sei un maschio, dio can.
                    Anon: Ti servirebbe un po' di militare!
                      ~ anon_cinqueFemme = false
                      -> character_personalization
                  }
            - Masculinity:
                {anon_cinqueMasculinity:
                    Anon: Che profilo di merda.
                    Anon: Pensi proprio da beta.
                    Anon: E ci scommetto che fai schifo anche come passivo.
                      ~ anon_cinqueMasculinity = false
                      -> character_personalization
                  }
        }  
        
      {PGAge:
              - Giovane:
                {anon_cinqueGiovane:
                    Anon: Ciao coetaneo.
                    Anon: Te lo dico subito così non mi rompi il cazzo: non sono una zecca da centro sociale.
                    Anon: Per cui se sei qui con Pride o cose sulla Palestina, vedi di levarti di culo.
                      ~ anon_cinqueGiovane = false
                      -> character_personalization
                  }

        }
        {PGBody:
              - Bear:
                {anon_cinqueBear:
                    Anon: Dio che corpo che hai.
                    Anon: Ho sempre amato gli orsi.
                    Anon: Non sono i muscoli a fare un maschio, ma tutto quel pelo.
                    Anon: Non hai idea di quanto mi arrapi.
                      ~ anon_cinqueBear= false
                      -> character_personalization
                  }
  
        }
        {PGInSearchOf:
              - Sesso:
                {anon_cinqueSesso:
                    Anon: A o P?
                    Anon: Io A.
                    Anon: Ma se hai il cazzo grosso faccio il passivo.
                    Anon: Ma ti sto sopra.
                    Anon: Voglio il controllo.
                      ~ anon_cinqueSesso = false
                      -> character_personalization
                  } 
        }
        {
          - anon_cinque == 1:
                Anon: Che profilo di merda.
              -> character_personalization
          - else:
                Anon: Non so se l'hai capito, ma devi lasciarmi in pace.
                Anon: In pace.
                Anon: O ti meno.
            -> randomize_characters  
        } 
  

    + (anon_sei){actualSpeakers has Anon_sei}[Anon_sei #alias: Manga&Gangia #age:42 #body:orsone #insearchof: amicizia&coccoline]
      //Sciallo amichevole
         {activeTopics:
            - Friendship:
                  {anon_seiFriendship:
                    Anon: Ehi ama!
                    Anon: Che bene che sei qui per l'amicizia.
                    Anon: Quando finisco il turno se ti va ci spariamo qualche cazzata su Dropout.
                    Anon: E prendiamo in giro QuelBenny.
                      ~ anon_seiFriendship = false
                      -> character_personalization
                  }
            - Dysmorphia:
                {anon_seiDysmorphia:
                    Anon: "Sto imparando ad amare il mio corpo."
                    Anon: Vorrei tanto farlo anche io.
                    Anon: O meglio, mi piaccio come sono.
                    Anon: Ma mi pesa non piacere agli altri.
                    Anon: Sono una bella persona, credo.
                    Anon: Per lo meno sono uno sciallone totale.
                    Anon: Ma i più mi ignorano solo perché non ho il fisico di Jacob Elordi.
                    Anon: Scusa il pippone, mi faccio un piantozzo e torno.
                      ~ anon_seiDysmorphia = false
                      -> character_personalization
                  }
        }  
        
      {PGAge:
            - Medio:
              {anon_seiMedio:
                  Anon: Ho visto che abbiamo età simili.
                  Anon: Ma è solo una mia impressione o i nostri coetanei sono rincoglioniti?
                  Anon: "Interessi: Harry Potter".
                  Anon: Ripigliati, hai quarant'anni e quella là spara odio sulle ame trans.
                  Anon: "Disney princess".
                  Anon: Amo, Disney sta a finanziare i fascisti.
                  Anon: L'unica principessa a cui potrai somigliare sarà Diana.
                  Anon: Da morta.
                    ~ anon_seiMedio = false
                    -> character_personalization
                }

        }
        {PGBody:
              - Twink:
                {anon_seiTwink:
                      Anon: Ehi, non so se te lo hanno mai detto.
                      Anon: Ma se ti dicono qualcosa perché sei supermagro: fregatene.
                      Anon: Qui stanno ore a cercare i loro sosia.
                      Anon: E poi passano le notti da soli.
                      Anon: Buona giornata bello!
                      ~ anon_seiTwink = false
                      -> character_personalization
                  }
  
        }
        {PGInSearchOf:
              - Poliamore:
                {anon_seiPoliamore:
                    Anon: Ho letto che sei poli.
                    Anon: Ogni tanto ci penso.
                    Anon: Anche se non riesco manco a trovare un compagno, figurarsi due.
                    Anon: Però se ti va una volta ci si fa un birrino e ti riempio di domande.
                    Anon: Ora torno a riempire scaffali.
                      ~ anon_seiPoliamore = false
                      -> character_personalization
                  }
        }
        {
          - anon_sei == 1:
                Anon: Bel profilo, ma mi sa che non sono nel mood, scusa.
              -> character_personalization
          - else:
                Anon: Ehi, mi sa che non c'ho molto altro da dirti per ora.
            -> randomize_characters  
        } 
  


//Extra







    + (anon_sette){actualSpeakers has Anon_sette}[Anon_sette #alias: CoppiaVolpi #age: 57 #body: Sugar bear+Polar bear #insearchof: una domenica tranquilla in tre]
      //Simpatici ma un po' a caccia. Acculturati. Stranamente critici verso il discorso poli. Cercano molto giovane.
        {activeTopics:
            - Friendship:
                  {anon_setteFriendship:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_setteFriendship = false
                      -> character_personalization
                  }
            - Ageism:
                {anon_setteAgeism:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_setteAgeism = false
                      -> character_personalization
                  }
        }  
        
      {PGAge:
              - Giovane:
                {anon_setteGiovane:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_setteGiovane = false
                      -> character_personalization
                  }

        }
        {PGBody:
              - Twink:
                {anon_setteTwink:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_setteTwink = false
                      -> character_personalization
                  }
  
        }
        {PGInSearchOf:
              - Sesso:
                {anon_setteSesso:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_setteSesso = false
                      -> character_personalization
                  } 
        }
        {
          - anon_sette == 1:
            Non sei il mio tipo.
              -> character_personalization
          - else:
            Abbiamo già parlato.
            -> randomize_characters  
        } 

    + (anon_otto){actualSpeakers has Anon_otto}[Anon_otto #alias: LaPatty #age: 24 #body: magra e alta #insearchof: il principe azzurro]
      //Hai quasi ammesso di essere una ama trans, quasi. Dai Patty che ce la fai!
        {activeTopics:
            - Femme:
                  {anon_ottoFemme:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_ottoFemme = false
                      -> character_personalization
                  }
            - Dysmorphia:
                {anon_ottoDysmorphia:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_ottoDysmorphia = false
                      -> character_personalization
                  }
        }  
        
      {PGAge:
              - Medio:
                {anon_ottoMedio:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_ottoMedio = false
                      -> character_personalization
                  }

        }
        {PGBody:
              - Bear:
                {anon_ottoBear:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_ottoBear= false
                      -> character_personalization
                  }
  
        }
        {PGInSearchOf:
              - Monogamia:
                {anon_ottoMonogamia:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_ottoMonogamia = false
                      -> character_personalization
                  }
        }
        {
          - anon_otto == 1:
            Non sei il mio tipo.
              -> character_personalization
          - else:
            Abbiamo già parlato.
            -> randomize_characters  
        } 

    + (anon_nove){actualSpeakers has Anon_nove}[Anon_nove #alias: FreePalestine #age:23 #body:Cub #insearchof: Compagnx di lotta]
        {activeTopics:
            - Polyamory:
                {anon_novePolyamory:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_novePolyamory = false
                      -> character_personalization
                  }
            - Masculinity:
                {anon_noveMasculinity:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_noveMasculinity = false
                      -> character_personalization
                  }
        }  
        
      {PGAge:
              - Giovane:
                {anon_noveGiovane:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_noveGiovane = false
                      -> character_personalization
                  }

        }
        {PGInSearchOf:
              - Monogamia:
                {anon_noveMonogamia:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_noveMonogamia = false
                      -> character_personalization
                  }
              - Sesso:
                {anon_noveSesso:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_noveSesso = false
                      -> character_personalization
                  } 
        }
        {
          - anon_nove == 1:
            Non sei il mio tipo.
              -> character_personalization
          - else:
            Abbiamo già parlato.
            -> randomize_characters  
        } 
  

    + (anon_dieci){actualSpeakers has Anon_dieci}[Anon_dieci #alias:twinkXBear #age:49 #body:twink #insearchof:ora?]
        {activeTopics:
            - Ageism:
                {anon_dieciAgeism:
                    Anon: Bella la frase sull'età.
                    Anon: Bella la consapevolezza.
                    Anon: Ma poi io continuo a sentirmi solo.
                      ~ anon_dieciAgeism = false
                      -> character_personalization
                  }
            - OldTwink:
                {anon_dieciOldTwink:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_dieciOldTwink = false
                      -> character_personalization
                  }
        }  
        
      {PGAge:
              - Vecchio:
                {anon_dieciVecchio:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_dieciVecchio = false
                      -> character_personalization
                  }

        }
        {PGBody:
              - Bear:
                {anon_dieciBear:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_dieciBear= false
                      -> character_personalization
                  }
        }
        {PGInSearchOf:
              - Monogamia:
                {anon_dieciMonogamia:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_dieciMonogamia = false
                      -> character_personalization
                  }
        }
        {
          - anon_dieci == 1:
            Non sei il mio tipo.
              -> character_personalization
          - else:
            Abbiamo già parlato.
            -> randomize_characters  
        } 
  

    + (anon_undici){actualSpeakers has Anon_undici}[Anon_undici #alias:Piedone #age:69 #body:lupo #insearchof:un grande cuore, non solo per me]
      {activeTopics:
            - Polyamory:
                {anon_undiciPolyamory:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_undiciPolyamory = false
                      -> character_personalization
                  }
        }  
        
      {PGAge:
              - Vecchio:
                {anon_undiciVecchio:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_undiciVecchio = false
                      -> character_personalization
                  }
              - Medio:
                {anon_undiciMedio:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_undiciMedio = false
                      -> character_personalization
                  }

        }
        {PGBody:
              - Fit:
                {anon_undiciFit:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_undiciFit = false
                      -> character_personalization
                  }
  
        }
        {PGInSearchOf:
              - Poliamore:
                {anon_undiciPoliamore:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_undiciPoliamore = false
                      -> character_personalization
                  }
        }
        {
          - anon_undici == 1:
            Non sei il mio tipo.
              -> character_personalization
          - else:
            Abbiamo già parlato.
            -> randomize_characters  
        } 

    + (anon_dodici){actualSpeakers has Anon_dodici}[Anon_dodici #alias:CercoSingola #age:20 #body:palestronza #insearchof: un letto e un culetto]
        {activeTopics:
            - Expectations:
                {anon_dodiciExpectations:
                  Anon: Un miracolo, un monogamo!
                    ~ anon_dodiciExpectations = false
                    -> character_personalization
                }
            - Dysmorphia:
                {anon_dodiciDysmorphia:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_dodiciDysmorphia = false
                      -> character_personalization
                  }
        }  
        
        {PGBody:
              - Fit:
                {anon_dodiciFit:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_dodiciFit = false
                      -> character_personalization
                  }
  
        }
        {PGInSearchOf:
              - Sesso:
                {anon_dodiciSesso:
                    Anon: Un miracolo, un monogamo!
                      ~ anon_dodiciSesso = false
                      -> character_personalization
                  } 
        }
        {
          - anon_dodici == 1:
            Non sei il mio tipo.
              -> character_personalization
          - else:
            Abbiamo già parlato.
            -> randomize_characters  
        } 
  
    -

    -> character_personalization









