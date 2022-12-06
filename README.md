# Abschlussprojekt des 4 wöchigen Kurses - Relationale Datenbanken mit SQL

## Businesslogik:

* In der MiniBank werden Kundenkonten verwaltet und Überweisungen getätigt
* Kunden können Überweisungen tätigen und Geld erhalten, vorausgesetzt das Kundenkonto ist nicht gesperrt.
* Wenn ein Kunde überweist wird auch geprüft ob dabei sein Kontolimit nicht überschritten wird
* Es gibt 6 verschiedene Kontoarten und 6 Bonitätsstufen
* Kunden überweisen Gebühren an die MiniBank oder erhalten Zinsen in verschiedenen Intervallen.
* In der Prozedur `[sp_Ueberweisung]` werden die Angaben auf einer Überweisung auf Plausibilität geprüft
* Der Script `„005‐02‐EG‐CREATE‐Cursor_Gebuehren_Zinsen.sql“` welches sich noch in der Entwicklungsphase befindet, belastet alle nicht gesperrte Konten mit Gebühren oder Zinsen
  * Konten werden in einem Intervall (Tabelle [KontArt]) mit verschiedenen KostenArten und je nach Bonität belastet.


Es folgen zwei Tabellen mit Vorschlägen für den täglichen Gebrauch.

| Verb        | Aktueller Gebrauch | Vorschlag             |
|-------------|--------------------|-----------------------|
| init        | initten            | eröffnen              |
| add         | adden              | hinzufügen            |
| blame       | blamen             | beschuldigen          |
| pull        | pullen             | ziehen                |
| push        | pushen             | schieben              |
| clone       | clonen             | nachmachen            |
| fetch       | fetchen            | holen                 |
| branch      | branchen           | abzweigen             |
| commit      | commiten           | einbuchen             |
| rebase      | rebasen            | (neu) erden           |
| diff        | diffen             | unterscheiden         |
| merge       | mergen             | zusammenführen        |
| fork        | forken             | abzweigen             |
| stash       | stashen            | verstauen             |
| tag         | taggen             | markieren             |
| cherry-pick | cherry-picken      | Rosinen herauspicken  |
| checkout    | checkouten         | ausbuchen             |
| squash      | squashen           | quetschen             |
