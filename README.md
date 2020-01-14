# TGF MOUSE TUNING PACK 2.0

### WAS IST ES?

DAS TGF MOUSE TUNING PACK ist ein Tool, welches die die Mauszeigerbeschleunigung von Windows 7, 8, 8.1 oder 10 entfernt.
Es entfernt die Mausbeschleunigung und sorgt dafür, dass es keine Beschleunigung oder Verzögerung der Übertragung gibt.
Dadurch wird eine 1-zu-1-Maus-zu-Zeiger-Antwort für Windows 7, Windows 8.x oder Windows 10 möglich.

Genau gesagt bedeutet 1-zu-1, dass während des Spiels keine Mauseingaben verworfen oder verzögert werden.

### WIE BENUTZT MAN ES?

* Tool unter [Releases](https://github.com/MinersWin/TGF-MOUSE-TUNING-PACK-2.0/releases) herunterladen.
* Zip-Archiv entpacken
* MouseFix.exe ausführen
* Einstellungen treffen, bzw. auf Express klicken
* Windows Neu-Starten

- Die 1:1 Reaktion der Maus genießen

### WARUM BENÖTIGT MAN DEN FIX?

Einige ältere Spiele wie Half-Life 1, Counter-Strike 1.x, Quake, Quake 2, Unreal und andere rufen, während sie aktiv sind und ausgeführt werden, eine Windows-Funktion auf, mit der die variable Mausbeschleunigung deaktiviert werden soll, indem ALLE Bewegungen erzwungen werden um den gleichen Betrag beschleunigt (verdoppelt).
Unter Windows 2000 und früheren Versionen wurden alle variablen Beschleunigungen entfernt.
Das Zeigen und Zielen in diesen Spielen war in Ordnung, da die Mausreaktion dann linear war (alle Bewegungen wurden um den gleichen Betrag beschleunigt; sie wurden verdoppelt).

In XP und späteren Windows-Versionen hat Microsoft die Funktionsweise der Mauszeigerbeschleunigung geändert.
Wenn in diesen Spielen die Funktion aufgerufen wird (alle Bewegungen müssen beschleunigt werden), aktiviert Windows die Funktion "Zeigergenauigkeit verbessern", mit der die Maus mithilfe einer variierenden Kurve beschleunigt wird, um die Mausreaktion zu steuern. (Es wird aktiviert, auch wenn es in den Mauseinstellungen der Systemsteuerung deaktiviert ist.)

Wenn die Option "Zeigergenauigkeit verbessern" aktiviert ist, wird der Zeiger durch langsamere Mausbewegungen besonders langsam und durch schnellere Mausbewegungen besonders schnell. Es ist nicht linear und nicht geradlinig.

Das ist ärgerlich, denn wo man hinzielt, hängt davon ab, wie weit die Maus bewegt wird und wie schnell ie Maus zum Zielen bewegt wird.

### WIE FUNKTIONIERT DER FIX?

Die von der Funktion "Zeigergenauigkeit verbessern" verwendete Kurve wird so neu definiert, dass sie eine vollständig gerade Linie ist. Die Neigung der Linie wird so angepasst, dass jede Mausbewegung auf dem Mauspad genau die gleiche Bewegung des Mauszeigers auf dem Bildschirm bewirkt.

### WIE SIEHT MAN, DASS DER FIX FUNKTIONIERT?

Es kann getestet werden, ob es funktioniert, indem die Funktion "Zeigergenauigkeit verbessern" vorübergehend aktiviert und überprüft wird, wie die Maus reagiert.

Wenn die Option "Zeigergenauigkeit verbessern" deaktiviert wurde, ist der Fix nicht aktiv (er wartet jedoch darauf, bei Bedarf aktiviert zu werden).
So wie einige Spiele es aktivieren, wenn es nicht gewünscht wird, kann es manuell aktiviert werden, um zu testen, ob das Update ordnungsgemäß funktionierte.

### WIE MACHE ICH ES RÜCKGÄNGIG?

Der Mousefix kann mit einem Klick auf ```Auf Standartwerte zurücksetzen``` resettet werden.
Nach einem Neustart sollte alles wieder wie gewohnt Funktionieren.

### WAS KANN ICH SONST NOCH MACHEN?

.... #Updates
