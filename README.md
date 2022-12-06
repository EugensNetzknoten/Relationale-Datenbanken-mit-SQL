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
            <td>--</td>
            <td>Fremde‐Bank</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Kunde‐A</td>
            <td>--</td>
            <td>Fremde‐Bank</td>
        </tr>
        <tr>
            <td rowspan=2>3</td>
            <td>Kunde‐A</td>
            <td>--</td>
            <td>Kunde‐B</td>
        </tr>
        <tr>
            <td>Kunde‐B</td>
            <td>--</td>
            <td>Kunde‐A</td>
        </tr>    
    </tbody>
</table>



<table>
    <thead>
        <tr>
            <th>Layer 1</th>
            <th>Layer 2</th>
            <th>Layer 3</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>        
              <tr>
                  <td>1</td>
                  <td>Kunde‐A</td>
                  <td>--</td>
                  <td>Fremde‐Bank</td>
              </tr>
            </td>
            <td>
                 <td>Kunde‐B</td>
                 <td>--</td>
                 <td>Kunde‐A</td>
            </td>
        </tr>
    </tbody>
</table>




<table>
<tr><th colspan="2">Varianten der Überweisung für die Prozedur [sp_Ueberweisung]</th></tr>
<tr><td>
   <table>
       <thead>
           <tr>
               <th>Varianten</th>
               <th>Konto_ID</th>
               <th>Geldfluss</th>
               <th>IBAN</th>           
           </tr>        
       </thead>
       <tbody>
           <tr>
               <td>1</td>
               <td>Kunde‐A</td>
               <td>&#10230;</td>
               <td>Fremde‐Bank</td>
           </tr>
           <tr>
               <td>2</td>
               <td>Kunde‐A</td>
               <td>&#10229;</td>
               <td>Fremde‐Bank</td>
           </tr>
           <tr>
               <td rowspan=2>3</td>
               <td>Kunde‐A</td>
               <td>&#10230;</td>
               <td>Kunde‐B</td>
           </tr>
           <tr>
               <td>Kunde‐B</td>
               <td>&#10229;</td>
               <td>Kunde‐A</td>
           </tr>    
       </tbody>
   </table>
</td><td>
   <table>
       <thead>
           <tr>
               <th>Beispiel</th>
           </tr>
       </thead>    
       <tbody>
           <tr>
               <td>-100,00€</td>
           </tr>
           <tr>
               <td>75,00€</td>
           </tr>
           <tr>
               <td>-250,00€</td>
           </tr>
           <tr>
               <td><div style="text-align: right"> your-text-here </div></td>
           </tr>    
       </tbody>
   </table>
</td></tr> </table>
