LIST ages = Giovane, Medio, Vecchio
LIST bodies = Bear, Fit, Twink
LIST inSearchOf = Monogamia, Poliamore, Sesso, Amicizia

//Personaggi anomini
LIST anonymousChar = Anon_uno, Anon_due, Anon_tre, Anon_quattro
//Personaggi speciali
LIST specialChar = Char_uno, Char_due, Char_tre, Char_quattro, Char_cinque, Char_sei, Char_sette, Char_otto


LIST activeTopics = Ageism, OldTwink, Polyamory, Expectations, Dysmorphia, Masculinity, Femme, Friendship

// da randomizzare
VAR PGAge = ()
VAR PGBody = ()
VAR PGInSearchOf = ()

-> randomize_pg



=== randomize_pg
~ PGAge = LIST_RANDOM (ages)
~ PGBody = LIST_RANDOM (bodies)
~ PGInSearchOf = LIST_RANDOM (inSearchOf)

-> conversation_selection



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
PG: Ageismo
{Char_uno}: Vero, ageismo.
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