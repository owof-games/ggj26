//FINALI
=== endings
    {
        - LIST_COUNT(activeTopics) == 3:
            -> full_ending
        - LIST_COUNT(activeTopics) == 0:
            -> empty_ending
        - else:
            -> medium_ending

    }

    = full_ending
        hungr_bot: ATTENZIONE!
        hungr_bot: AT-TEN-ZIO-NE!
        hungr_bot: Utente numero 123456019 con l'alias {Alias}.
        hungr_bot: Il tuo profilo è disattivato con effetto immediato per rottura del Contratto Finale dell'Utente.
        hungr_bot: In particolare per il punto 987.2345 comma 34 a pagina 987665.
        hungr_bot: "Adattabilità dell'utente ai servizi forniti".
        hungr_bot: Citiamo.
        hungr_bot: "L'utente si impegna a mantenere un'identità che rientra nei valori numerati dall'algoritmo Hungr".
        hungr_bot: "In questo modo Hungr potrà profilarla correttamente e vendere i suoi dati, come previsto dal punto 3654.332 comma 12 del suddetto accordo."
        hungr_bot: "Ogni tentativo di esprimere la propria identità fuori dagli schemi dell'app è punita con l'espulsione."
        hungr_bot: "La disattivazione del profilo."
        hungr_bot: "E il divieto d'accesso ai servizi Hungr a vita."
        hungr_bot: Da questo momento il profilo 123456019...
        hungr_bot: ... le mail ad esso associato...
        hungr_bot: ... i suoi indirizzi IP...
        hungr_bot: ... e il numero univoco fornito dal suo provider internet...
        hungr_bot: ... sono interdetti all'accesso dei servizi Hungr.
        hungr_bot: Saluti da Hungr.
        hungr_bot: Hungr. Il piacere. Subito.

            -> END

    = empty_ending
        free_desire_collective: Ehi tu, {Alias}!
        free_desire_collective: Qui è la Free Desire Collective.
        free_desire_collective: E abbiamo hackerato questa cloaca di Hungr.
        free_desire_collective: Sapevi che il suo CEO finanzia l'alt right americana e i filofascisti in Europa?
        free_desire_collective: Ma soprattutto, il design di Hungr spinge per renderci tutti uguali.
        free_desire_collective: Infelicemente uguali.
        free_desire_collective: Incapaci di esprimere la nostra unicità.
        free_desire_collective: Di parlare di desideri e vulnerabilità.
        free_desire_collective: E tu {Alias}, con questo profilo uguale a quello degli altri.
        free_desire_collective: Non hai forse bisogno anche tu di abbracciare e condividere le tue vulnerabilità?
        free_desire_collective: Di accogliere con gioia ciò che ti rende unico?
        free_desire_collective: Esci da qui, incontra nuove persone, fatti conoscere.
        free_desire_collective: L'app diverrà inutilizzabile tra 3
        free_desire_collective: 2
        free_desire_collective: 1

    
        -> END

    = medium_ending
        frocia_libera: Ciao {Alias}!
        frocia_libera: Qui è la Frocia Libera.
        frocia_libera: Una rete di attivistX che cerca di liberare il desiderio dalle grinfie del capitalismo.
        frocia_libera: Pensata per corpi non conformi e menti libere.
        frocia_libera: Abbiamo visto il tuo profilo, la tua strada per accogliere la tua unicità.
        frocia_libera: E siamo qui per dirti: unisciti a noi.
        frocia_libera: Vieni a conoscerci domani sera.
        frocia_libera: La nostra associazione è davanti al graffito di Marsha P. Johnson, ai Giardini.
        frocia_libera: Scoprirai decine di persone come te, stanche dei vincoli delle app di dating.
        frocia_libera: Stanche di odiare il proprio corpo non incasellabile.
        frocia_libera: Stanche di veder invisibilizzati i propri desideri di vicinanza.
        frocia_libera: Di doversi vergognare per un po' di intimità.
        frocia_libera: Unisciti a noi e disattiva questa trappola!
        frocia_libera: A domani sera!

        -> END    