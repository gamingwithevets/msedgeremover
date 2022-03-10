**GWE's Microsoft Edge and Search Box Suggestions Remover** is an easy tool to remove Microsoft's Chromium-based Microsoft Edge, as well as enabling/disabling certain options related to Edge.

README file offered in: [Deutsch (Deutschland)](https://github.com/gamingwithevets/msedgeremover/blob/main/README/README_de-DE.md)&nbsp; [Tiếng Việt (Việt Nam)](https://github.com/gamingwithevets/msedgeremover/blob/main/README/README_vi-VN.md)

# Syntax
## v1.1.0+
```
msedgeremover [/?] [/debug] [/echoon] [/langXXXX]
```
## v1.0.0
```
msedgeremover [/?] [/debug] [/echoon] [/langXX]
```
## Parameters
NOTE: v1.0.0 does not have support for lowercase parameters (except `/debug`).
| Parameter | Description |
|--|--|
| `/?` | Displays help. |
| `/debug` | Enables Debug Mode. It's kind of useless. |
| `/echoon` | Turns command-echoing on. Used for diagnostics. |
| `/langXXXX`<br/>(v1.0.0: `/langXX`) | v1.0.0: Starts the program with the specified language in `XX`. `XX` can be the ISO 2 letter language code of a supported language. <br/>v1.1.0+: Starts the program with the specified language in `XXXX`. `XXXX` can be the BCP 47 language code of a supported language (without the dash in between).<br/>See [Localization](https://github.com/gamingwithevets/msedgeremover#localization) for the language codes. |

# Features
## Remove New Microsoft Edge
Removes the Chromium-based Microsoft Edge from your computer. You can type the version number in the version number prompt, or leave empty to let the program find the version number from the `msedge.exe` executable. Along the way, the program will check for errors and if it runs into one, a message is displayed and the removal process is halted.

## Manage Edge Reinstalling/Search Box Suggestions
Modifies registry values to enable or disable Microsoft Edge reinstalling after an update, or to enable or disable the Bing suggestions while you're searching with Windows' Search tool.

# Localization
**GWE's Microsoft Edge and Search Box Suggestions Remover** currently has support for these languages:
| Language | Country | ISO 2 Code | BCP 47 Code |
|--|--|--|--|
| English (Default) | United States | EN | en-US |
| German/Deutsch | Germany/Deutschland | DE | de-DE |
| Vietnamese/Tiếng Việt | Vietnam/Việt Nam | VI | vi-VN |

You can contribute, too! Just email me at [`thenewgwe@gmail.com`](mailto:thenewgwe@gmail.com) and give your translations. I'll look at it and add it in the script.  
You can also send me translations of this README file! Again, if I'm happy with it, I'll make it an official translation.  
You can also send me *revised* translations if you're not happy with the current ones! I just put the English text through [Google Translate](https://translate.google.com) and revised it a bit for the non-English languages, so I'd really like to have the best translations possible.
