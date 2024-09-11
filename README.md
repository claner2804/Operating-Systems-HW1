# Operating-Systems-HW1
Bash-Shell-Script

Aufgabe 1.1 Medienbibliothek (50 %):¶
Sie wurden für die Feier nach dem nächsten DiBSE-Präsenztag als DJ gebucht. Da danach ja bereits die Sommerferien beginnen, soll das Thema der Feier "Jede Menge Zeit" sein - was natürlich zur Folge hat, dass Songs aus den verschiedensten Jahrzehnten nachgefragt werden. Ihre aktuelle Medienbibliothek ist wie folgt aufgebaut:
music
- <Artist>
- - <Year>
- - - <Album>
- - - - <Song>
(Im aktuellen Beispiel werden die Songs durch leere .txt-Dateien dargestellt!)
Sie haben allerdings die Befürchtung, dass Sie mit dieser Struktur zu lange brauchen, Songs aus einem bestimmten Jahr bzw. einem bestimmten Zeitraum zu finden. Optimalerweise würde die Medienbibliothek für die Feier so aussehen:
Music DiBSE
- <Year>
- - <Artist>
- - - <Song>
Sie schreiben daher ein Bash Script mit dem Namen copyMusic.sh, welches die Dateien aus der ursprünglichen Struktur in die oben beschriebene Zielstruktur kopiert.
Folgende Befehle bzw. Funktionen könnten für die Lösung dieses Problems hilfreich/notwendig sein:
	• mkdir
	• cp
	• for
	• basename
Dabei sind folgende Dinge zu beachten, bzw. explizit nicht zu beachten:
	• Arbeiten Sie mit der von uns bereitgestellten Ordnerstruktur, welches Sie im selben Verzeichnis wie dieses Übungsblatt finden.
	• Führen Sie das Script im selben Verzeichnis aus, in dem sich der bereitgestellte Ordner music befindet.
	• Es muss keine Überprüfung auf doppelte Dateinamen vorgenommen werden. Die Beispieldateien wurden so gewählt, dass es keine zwei identischen .txt-Files gibt.
	• Die Ausgangsstruktur der Dateien und Ordner muss nicht auf Ihre Validität geprüft werden. Sie können davon ausgehen, dass die Medienbibliothek so aufgebaut ist, wie sie am Anfang dieser Aufgabe beschrieben wurde!
	• Sie finden im Verzeichnis dieses Übungszettel auch noch die Datei music.zip, mit der Sie die originale Dateistruktur wieder herstellen können, wenn Sie dies benötigen. Entpacken Sie dafür einfach diese Datei auf der Konsole mit dem Befehl unzip music.zip.
ACHTUNG: Das erstellte Script MUSS auf JupyterHub lauffähig sein. Verwenden Sie zum Testen das Terminal in Ihrem Home-Verzeichnis (wie im Webinar vorgestellt)![image](https://github.com/user-attachments/assets/a40af1dc-0d13-4ace-8a18-c9aa42c93526)




Aufgabe 1.2 Songsuche (50 %):
Zusätzlich zur neuen Struktur der Medienbibliothek wollen Sie nun ein Bash-Script mit dem Namen getSongs.sh schreiben, womit ein Song gesucht werden kann. Dafür soll die Anzahl aller Songs (diese befinden sich in der zur Verfügung gestellten Textdatei songs.txt) zurückgegeben werden, welche dem mitgegebenen Suchstring entsprechen. Dabei sollen folgende Eigenschaften berücksichtigt werden:
	• Es ist egal, ob der Suchstring am Anfang, Ende oder in der Mitte des Wortes gefunden wird - jegliche Übereinstimmung ist ein Treffer!
	• Die Suche soll case-insensitive sein - das heißt, Groß- und Kleinschreibung soll nicht unterschieden werden (A == a)
	• Der Programmaufruf soll z.B. so aussehen: ./getSongs.sh bla
	• Die Ausgabe der Programmausführung mit mindestens einem Treffer soll z.B. so aussehen: 3 hits for 'bla' found., wobei bla den eingegebenen Suchstring und 3 die Anzahl der Treffer darstellt.
	• Wenn ein Suchstring keine Treffer liefert, soll in der Konsole Error: No hits found. Check error log for details. ausgegeben werden.
		○ Zusätzlich soll ein Eintrag in der Datei errorLog.txt angehängt werden, welcher wie folgt aussieht: No entries for 'bla' found. Update the database and try again.
	• Überprüfen Sie auch, ob ein Kommandozeilenparameter (also ein "bla") angegeben wurde. Falls nicht (also falls der Aufruf so aussieht: ./getSongs.sh), soll in der Konsole Error: use the script with a parameter. Check the error log for details.
		○ Zusätzlich soll ein Eintrag in der Datei errorLog.txt angehängt werden, welcher wie folgt aussieht: Error: invalid input. Script expects an input parameter of type string!.
	• Führen Sie das Script im selben Verzeichnis aus, in dem sich die bereitgestellte Datei songs.txt befindet.
	• Die Datei errorLog.txt muss sich im selben Verzeichnis wie songs.txt und getSongs.sh befinden.
Folgende Befehle bzw. Konzepte sind bei der Umsetzung sehr hilfreich:
	• grep
	• echo
	• if
	• Pipes
	• Ausgabe/Error in Datei umleiten
ACHTUNG: Das erstellte Script MUSS auf JupyterHub lauffähig sein. Verwenden Sie zum Testen das Terminal in Ihrem Home-Verzeichnis (wie im Webinar vorgestellt).
![image](https://github.com/user-attachments/assets/c495bf4e-2a69-4816-88c1-3f574df4744e)

