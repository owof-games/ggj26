LIST Ages = Giovane, Medio, Vecchio
LIST Bodies = Bear, Fit, Twink
LIST InSearchOf = Monogamia, Poliamore, Sesso, Amicizia

//Personaggi anomini
LIST anonymousChar = anon_uno, anon_due, anon_tre, anon_quattro
//Personaggi speciali
LIST specialChar = char_uno, char_due, char_tre, char_quattro, char_cinque, char_sei, char_sette, char_otto


LIST ActiveTopics = Ageism, OldTwink, Polyamory, Expectations, Dysmorphia, Masculinity, Femme, Friendship

// da randomizzare
VAR PGAge = ()
VAR PGBody = ()
VAR PGInSearchOf = ()

-> randomize_pg



=== randomize_pg
// randomizzazione delle caratteristiche PG
-> conversation_selection



=== conversation_selection

- (top)
@choose_character
//Personaggi speciali
+ [{char_uno}]
  //Se interessato, vado al nodo, altrimenti reagisce in modo diverso.
  -> dialogue_char_uno
+ [{char_due}]
  -> dialogue_char_due
+ [{char_tre}]
  -> dialogue_char_tre
+ [{char_quattro}]
  ->dialogue_char_quattro
+ [{char_cinque}]
  -> dialogue_char_cinque
+ [{char_sei}]
  -> dialogue_char_sei
+ [{char_sette}]
  -> dialogue_char_sette
+ [{char_otto}]
  -> dialogue_char_otto


//Personaggi anonimi
+ [anon_uno]
  conversazione con anonymous 1
    -> top
+ [anon_due]
  conversazione con anonymous 2
    -> top
+ [anon_tre]
  conversazione con anonymous 3
    -> top
-

-> character_personalization



=== character_personalization

- (loop)

@topics
+ {dialogue_char_uno.ageism} Ageism
    {
      - ActiveTopics hasnt Ageism:
        ~ ActiveTopics += Ageism
      - else:
        ~ ActiveTopics -= Ageism  
    }
    -> loop

+ {dialogue_char_due.old_twink} OldTwink
    {
      - ActiveTopics hasnt OldTwink:
        ~ ActiveTopics += OldTwink
      - else:
        ~ ActiveTopics -= OldTwink 
    }
    -> loop

+ {dialogue_char_tre.poli_things} Polyamory
    {
      - ActiveTopics hasnt Polyamory:
        ~ ActiveTopics += Polyamory
      - else:
        ~ ActiveTopics -= Polyamory
    }
    -> loop

+ {dialogue_char_quattro.expectations} Expectations
    {
      - ActiveTopics hasnt Expectations:
        ~ ActiveTopics += Expectations
      - else:
        ~ ActiveTopics -= Expectations
    }
    -> loop
+ {dialogue_char_cinque.dysmorphia} Dysmorphia
    {
      - ActiveTopics hasnt Dysmorphia:
        ~ ActiveTopics += Dysmorphia
      - else:
        ~ ActiveTopics -= Dysmorphia
    }
    -> loop

+ {dialogue_char_sei.masculinity} Masculinity
    {
      - ActiveTopics hasnt Masculinity:
        ~ ActiveTopics += Masculinity
      - else:
        ~ ActiveTopics -= Masculinity
    }
    -> loop

+ {dialogue_char_sette.femme} Femme
    {
      - ActiveTopics hasnt Femme:
        ~ ActiveTopics += Femme
      - else:
        ~ ActiveTopics -= Femme
    }
    -> loop

+ {dialogue_char_otto.friendship} Friendship
    {
      - ActiveTopics hasnt Friendship:
        ~ ActiveTopics += Friendship
      - else:
        ~ ActiveTopics -= Friendship
    }
    -> loop

+ [Chat]
    -> randomize_characters



=== randomize_characters
// logica di randomizzazione dei personaggi
-> conversation_selection




///Storylets personaggi speciali///
=== dialogue_char_uno
Ageismo
- (ageism)

-> character_personalization


=== dialogue_char_due
Vecchio twink
- (old_twink)

-> character_personalization

=== dialogue_char_tre
Questioni poli
- (poli_things)

-> character_personalization


=== dialogue_char_quattro
Aspettative
- (expectations)

-> character_personalization

=== dialogue_char_cinque
Fit e dismorfia
- (dysmorphia)

-> character_personalization


=== dialogue_char_sei
Mascolinità Bear
- (masculinity)


-> character_personalization


=== dialogue_char_sette
Twink femme
- (femme)


-> character_personalization


=== dialogue_char_otto
Amicizia hacking
- (friendship)


-> character_personalization