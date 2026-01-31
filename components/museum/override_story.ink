LIST Ages = Young // ...
LIST Bodies = Bear // ...
LIST InSearchOf = Love // ...

LIST Characters = Char1, Char2, Char3 // da definire

LIST ActiveTopics = Ageism // ...

// da randomizzare
VAR PGAge = Young
VAR PGBody = Bear
VAR PGInSearchOf = Love

-> randomize_pg



=== randomize_pg
// randomizzazione delle caratteristiche PG
-> conversation_selection



=== conversation_selection

@choose_character
+ [{Char1}]
  {Char1}: conversazione con char 1
  PG: rispondo
  - (ageism)
+ [{Char2}]
  conversazione con char 2
+ [Anonymous]
  conversazione con anonymous 1
+ [Anonymous]
  conversazione con anonymous 2
+ [Anonymous]
  conversazione con anonymous 2
-

-> character_personalization



=== character_personalization

- (loop)

@topics
+ {conversation_selection.ageism} Ageism
    // in realtà: se c'è, lo tolgo, se non c'è, lo aggiungo
    ~ ActiveTopics += Ageism
    -> loop
// da ripetere per ogni topic, e infine
+ [Chat]
    -> randomize_characters



=== randomize_characters
// logica di randomizzazione dei personaggi
-> conversation_selection