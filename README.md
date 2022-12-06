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


Varianten der Überweisung für die Prozedur [sp_Ueberweisung]

| Varianten | Konto_ID | Geldfluss | IBAN           |   s  | sdfdf |
|-----------|----------|-----------|----------------|------------| -------------| 
| 1         | Kunde‐A  |    -->       | Fremde‐Bank | s | schieben              |
| 2         | Kunde‐A  |    <--       | Fremde‐Bank |  s | schieben              |
| 3         | Kunde‐A  |    -->       | Kunde‐B     | s  | schieben              |
|           | Kunde‐B  |    <--       | Kunde‐A     |  s | schieben              |



<table>
<tr><td colspan="2">Varianten der Überweisung für die Prozedur [sp_Ueberweisung]</td></tr>
<tr><td>

| Varianten | Konto_ID | Geldfluss | IBAN           |
|-----------|----------|-----------|----------------|
| 1         | Kunde‐A  |    -->       | Fremde‐Bank |
| 2         | Kunde‐A  |    <--       | Fremde‐Bank |
| | <td rowspan=2>3</td>         | Kunde‐A  |    -->       | Kunde‐B     |
| |   | Kunde‐B  |    <--       | Kunde‐A     |
             
    
</td><td>

| Beispiel | 
|----------|
| -100,00€ |
| 75,00€   |
| -250,00€ |
| 250,00€  |
 
</td></tr> </table>



<table>
    <thead>
        <tr>
         <td colspan="2">Varianten der Überweisung für die Prozedur [sp_Ueberweisung]</td>
        </tr>
    </thead>
    <tbody>
      <tr><td>
            <tr>
                <th>Varianten</th>
                <th>Konto_ID</th>
                <th>Geldfluss</th>
                <th>IBAN</th>
            </tr>       
              
      | Varianten | Konto_ID | Geldfluss | IBAN           |
      |-----------|----------|-----------|----------------|
      | 1         | Kunde‐A  |    -->       | Fremde‐Bank |
      | 2         | Kunde‐A  |    <--       | Fremde‐Bank |
      | | <td rowspan=2>3</td>         | Kunde‐A  |    -->       | Kunde‐B     |
      | |   | Kunde‐B  |    <--       | Kunde‐A     |


      </td><td>

      | Beispiel | 
      |----------|
      | -100,00€ |
      | 75,00€   |
      | -250,00€ |
      | 250,00€  |

      </td></tr>
    </tbody>
</table>






<table>
    <thead>
        <tr>
          <th colspan="2">Varianten der Überweisung für die Prozedur [sp_Ueberweisung]</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>Kunde‐A</td>
            <td>--/td>
            <td>Fremde‐Bank/td>
        </tr>
        <tr>
            <td>L3 Name B</td>
        </tr>
        <tr>
            <td rowspan=2>L2 Name B</td>
            <td>L3 Name C</td>
        </tr>
        <tr>
            <td>L3 Name D</td>
        </tr>
    </tbody>
</table>
