**Microsoft Edge und Suchfeld-Vorschläge-Entferner von GWE** ist ein einfaches Tool zum Entfernen von Microsofts Chromium-basiertem Microsoft Edge sowie zum Aktivieren/Deaktivieren bestimmter Optionen im Zusammenhang mit Edge.

README.md angeboten auf: [English (US)](https://github.com/gamingwithevets/msedgeremover/blob/main/README.md)

# Syntax
## v1.1.0+
```
msedgeremover [/?] [/debug] [/echoon] [/langXXXX]
```
## v1.0.0
```
msedgeremover [/?] [/debug] [/echoon] [/langXX]
```
## Parameter
HINWEIS: v1.0.0 unterstützt keine Parameter in Kleinbuchstaben (außer `/debug`).
| Parameter | Beschreibung |
|--|--|
| `/?` | Zeigt Hilfeinformationen zum Programm an. |
| `/debug` | Aktiviert den Debug-Modus. Es ist irgendwie nutzlos. |
| `/echoon` | Schaltet die Befehlsechofunktion ein. Wird für die Diagnose verwendet. |
| `/langXXXX`<br/>(v1.0.0: `/langXX`) | v1.0.0: Startet das Programm mit der angegebenen Sprache in `XX`. `XX` kann der aus zwei Buchstaben bestehende ISO-Sprachcode einer unterstützten Sprache sein.<br/>v1.1.0+: Startet das Programm mit der angegebenen Sprache in `XXXX`. `XXXX` kann der BCP 47-Sprachcode einer unterstützten Sprache sein (ohne Bindestrich dazwischen).<br/>Siehe [Lokalisierung](https://github.com/gamingwithevets/msedgeremover/blob/main/README_de-DE.md#lokalisierung) für die Sprachcodes. |

# Merkmale
## Neuen Microsoft Edge entfernen
Entfernt den Chromium-basierten Microsoft Edge von Ihrem Computer. Sie können die Versionsnummer in die Eingabeaufforderung für die Versionsnummer eingeben oder leer lassen, damit das Programm die Versionsnummer aus der ausführbaren Datei `msedge.exe` findet. Unterwegs prüft das Programm auf Fehler und wenn es auf einen stößt, wird eine Meldung angezeigt und der Entfernungsprozess angehalten.

## Edge-Neuinstallation/Suchfeldvorschläge verwalten
Ändert Registrierungswerte, um die Neuinstallation von Microsoft Edge nach einem Update zu aktivieren oder zu deaktivieren oder um die Bing-Vorschläge zu aktivieren oder zu deaktivieren, während Sie mit dem Windows-Suchtool suchen.

# Lokalisierung
**Microsoft Edge und Suchfeld-Vorschläge-Entferner von GWE** unterstützt derzeit die folgenden Sprachen:
| Sprache | Land | ISO-2-Code | BCP-47-Code |
|--|--|--|--|
| Englisch/English (Standard) | Vereinigte Staaten/United States | EN | en-US |
| Deutsch | Deutschland | DE | de-DE |
| Vietnamesisch/Tiếng Việt | Vietnam/Việt Nam | VI | vi-VN |

Auch Sie können etwas beitragen! Senden Sie mir einfach eine E-Mail an [`thenewgwe@gmail.com`](mailto:thenewgwe@gmail.com) und übermitteln Sie Ihre Übersetzungen. Ich schaue es mir an und füge es in das Skript ein.  
Sie können mir auch Übersetzungen dieser README-Datei zusenden! Nochmals, wenn ich damit zufrieden bin, werde ich eine offizielle Übersetzung daraus machen.  
Sie können mir auch *überarbeitete* Übersetzungen schicken, wenn Sie mit den aktuellen nicht zufrieden sind! Ich habe gerade den englischen Text durch [Google Translate](https://translate.google.com) geschickt und ihn für die nicht-englischen Sprachen ein wenig überarbeitet, also hätte ich wirklich gerne die bestmöglichen Übersetzungen.
