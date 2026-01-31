//Debug
VAR debug = false


//Liste per character design
LIST ages = Giovane, Medio, Vecchio
LIST bodies = Bear, Fit, Twink
LIST inSearchOf = Monogamia, Poliamore, Sesso, Amicizia

//Personaggi anomini
LIST anonymousChar = Anon_uno, Anon_due, Anon_tre, Anon_quattro
//Personaggi speciali
LIST specialChar = Char_uno, Char_due, Char_tre, Char_quattro, Char_cinque, Char_sei, Char_sette, Char_otto

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



=== conversation_selection
{debug: Ho età {PGAge}, il mio corpo è {PGBody} e cerco {PGInSearchOf}}

- (top)
@choose_character
//Personaggi speciali
+ {character_personalization >= 2}[{Char_uno}]
  //Se interessato, vado al nodo, altrimenti reagisce in modo diverso.
    -> dialogue_Char_uno
+ {character_personalization >= 2}[{Char_due}]
    -> dialogue_Char_due
+ {character_personalization >= 2}[{Char_tre}]
    -> dialogue_Char_tre
+ {character_personalization >= 2}[{Char_quattro}]
    ->dialogue_Char_quattro
+ {character_personalization >= 2}[{Char_cinque}]
    -> dialogue_Char_cinque
+ {character_personalization >= 2}[{Char_sei}]
    -> dialogue_Char_sei
+ {character_personalization >= 2}[{Char_sette}]
    -> dialogue_Char_sette
+ {character_personalization >= 2}[{Char_otto}]
    -> dialogue_Char_otto


//Personaggi anonimi
+ (anon_uno)[Anon_uno]
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