//Debug
VAR debug = true


//Liste per character design
LIST ages = Giovane, Medio, Vecchio
LIST bodies = Bear, Fit, Twink
LIST inSearchOf = Monogamia, Poliamore, Sesso, Amicizia

//Personaggi anomini
LIST anonymousChar = Anon_uno, Anon_due, Anon_tre, Anon_quattro
//Personaggi speciali
LIST specialChar = Char_uno, Char_due, Char_tre, Char_quattro, Char_cinque, Char_sei, Char_sette, Char_otto

//Gestione disponibilità al dialogo
LIST dialogueStates = on


LIST activeTopics = Ageism, OldTwink, Polyamory, Expectations, Dysmorphia, Masculinity, Femme, Friendship




// da randomizzare
VAR PGAge = (Giovane, Medio, Vecchio)
VAR PGBody = (Bear, Fit, Twink)
VAR PGInSearchOf = (Monogamia, Poliamore, Sesso, Amicizia)


-> randomize_pg



=== randomize_pg
  ~ PGAge = LIST_RANDOM(PGAge)
  ~ PGBody = LIST_RANDOM(PGBody)
  ~ PGInSearchOf = LIST_RANDOM(PGInSearchOf)

-> conversation_selection

#alias:xx #age:{PGAge} #body:medium #insearchoff:sex

=== conversation_selection
{debug: Ho età {PGAge}, il mio corpo è {PGBody} e cerco {PGInSearchOf}}

- (top)
@choose_character
//Personaggi speciali
+ {character_personalization >= 2 && not dialogue_Char_uno}[{Char_uno}]
  //Se interessato, vado al nodo, altrimenti reagisce in modo diverso.
      {
        - activeTopics:
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
      {
          - PGAge:
            - Vecchio:
              -> dialogue_Char_uno
            - Medio:
              -> dialogue_Char_uno
            - else:
              non sei il mio tipo
              -> top  
      }
      {
          - PGBody:
            - Fit:
              -> dialogue_Char_uno
            - else:
              non sei il mio tipo
              -> top    
      }
      {
          - PGInSearchOf:
            - Sesso:
              -> dialogue_Char_uno
            - else:
              non sei il mio tipo
              -> top    
      }

    
+ {character_personalization >= 2 && not dialogue_Char_due}[{Char_due}]
      {
        - activeTopics:
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
      {
          - PGAge:
            - Medio:
              -> dialogue_Char_due
            - else:
              non sei il mio tipo
              -> top  
      }
      {
          - PGBody:
            - Fit:
              -> dialogue_Char_due
            - Twink:
              -> dialogue_Char_due  
            - else:
              non sei il mio tipo
              -> top    
      }
      {
          - PGInSearchOf:
            - Sesso:
              -> dialogue_Char_due
            - Monogamia:
              -> dialogue_Char_due  
            - else:
              non sei il mio tipo
              -> top    
      }
    
+ {character_personalization >= 2  && not dialogue_Char_tre}[{Char_tre}]
      {
        - activeTopics:
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
      {
          - PGAge:
            - Giovane:
              -> dialogue_Char_tre
            - Medio:
              -> dialogue_Char_tre
            - else:
              non sei il mio tipo
              -> top  
      }
      {
          - PGBody:
            - Fit:
              -> dialogue_Char_tre
            - else:
              non sei il mio tipo
              -> top    
      }
      {
          - PGInSearchOf:
            - Poliamore:
              -> dialogue_Char_tre
            - else:
              non sei il mio tipo
              -> top    
      }
    
+ {character_personalization >= 2  && not dialogue_Char_quattro}[{Char_quattro}]
      {
        - activeTopics:
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
      {
          - PGAge:
            - Giovane:
              -> dialogue_Char_quattro
            - else:
              non sei il mio tipo
              -> top  
      }
      {
          - PGBody:
            - Bear:
              -> dialogue_Char_quattro
            - else:
              non sei il mio tipo
              -> top    
      }
      {
          - PGInSearchOf:
            - Monogamia:
              -> dialogue_Char_quattro
            - Amicizia:
              -> dialogue_Char_quattro  
            - else:
              non sei il mio tipo
              -> top    
      }
    
+ {character_personalization >= 2  && not dialogue_Char_cinque}[{Char_cinque}]    
      {
        - activeTopics:
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
      {
          - PGAge:
            - Giovane:
              -> dialogue_Char_cinque
            - else:
              non sei il mio tipo
              -> top  
      }
      {
          - PGBody:
            - Fit:
              -> dialogue_Char_cinque
            - else:
              non sei il mio tipo
              -> top    
      }
      {
          - PGInSearchOf:
            - Sesso:
              -> dialogue_Char_cinque
            - else:
              non sei il mio tipo
              -> top    
      }

    
+ {character_personalization >= 2  && not dialogue_Char_sei}[{Char_sei}]
      {
        - activeTopics:
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
      {
          - PGAge:
            - Medio:
              -> dialogue_Char_sei
            - Giovane:
              -> dialogue_Char_sei
            - else:
              non sei il mio tipo
              -> top  
      }
      {
          - PGBody:
            - Fit:
              -> dialogue_Char_sei
            - Bear:
              -> dialogue_Char_sei  
            - else:
              non sei il mio tipo
              -> top    
      }
      {
          - PGInSearchOf:
            - Sesso:
              -> dialogue_Char_sei
            - else:
              non sei il mio tipo
              -> top    
      }
    
+ {character_personalization >= 2  && not dialogue_Char_sette}[{Char_sette}]      
      {
        - activeTopics:
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
      {
          - PGAge:
            - Medio:
              -> dialogue_Char_sette
            - Giovane:
              -> dialogue_Char_sette
            - else:
              non sei il mio tipo
              -> top  
      }
      {
          - PGBody:
            - Fit:
              -> dialogue_Char_sette
            - Twink:
              -> dialogue_Char_sette 
            - else:
              non sei il mio tipo
              -> top    
      }
      {
          - PGInSearchOf:
            - Monogamia:
              -> dialogue_Char_sette
            - else:
              non sei il mio tipo
              -> top    
      }

    
+ {character_personalization >= 2  && not dialogue_Char_otto}[{Char_otto}]
      {
        - activeTopics:
          - Masculinity:
              non mi interessano quelle cose lì
            -> top
      }
      {
          - PGAge:
            - Medio:
              -> dialogue_Char_otto
            - Vecchio:
              -> dialogue_Char_otto
            - else:
              non sei il mio tipo
              -> top  
      }
      {
          - PGBody:
            - Bear:
              -> dialogue_Char_otto
            - Twink:
              -> dialogue_Char_otto
            - else:
              non sei il mio tipo
              -> top    
      }
      {
          - PGInSearchOf:
            - Amicizia:
              -> dialogue_Char_otto
            - else:
              non sei il mio tipo
              -> top    
      }
    


//Personaggi anonimi
+ (anon_uno)[Anon_uno]#alias:xx #age:37 #body:medium #insearchof:sex
  {
    - anon_uno == 1:
      conversazione con anonymous 1
    - else:
      Smamma!
       -> top 
  }
    
+ (anon_due)[Anon_due]
   {
    - anon_due == 1:
      conversazione con anonymous 2
    - else:
      Smamma!
       -> top 
  }
+ (anon_tre)[Anon_tre]
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

@topics
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