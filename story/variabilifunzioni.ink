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

VAR actualSpeakers = ()


// Dati PG
VAR PGAge = (Giovane, Medio, Vecchio)
VAR PGBody = (Bear, Fit, Twink)
VAR PGInSearchOf = (Monogamia, Poliamore, Sesso, Amicizia)
VAR Alias = ""


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