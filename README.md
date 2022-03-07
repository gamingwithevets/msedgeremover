**GWE's Microsoft Edge and Search Box Suggestions Remover** is an easy tool to remove Microsoft's Chromium-based Microsoft Edge, as well as enabling/disabling certain options related to Edge.

README.md offered in: *N/A*

# Syntax
```
msedgeremover [/?] [/debug] [/echoon] [/langXX]
```
## Parameters
NOTE: All parameters must be **lowercase**. The program **does not** have support for uppercase parameters.
| Parameter | Description |
|--|--|
| /? | Displays help information about the program. |
| /debug | Enables Debug Mode. It's kind of useless. |
| /echoon | Turns command-echoing on. Used for diagnostics. |
| /langXX | Starts the program with the specified language in XX. XX can be the ISO 2 letter language code of a supported language (see Localization). |

# Features
## Remove New Microsoft Edge
Removes the Chromium-based Microsoft Edge from your computer. You can type the version number in the version number prompt, or leave empty to let the program find the version number from the `msedge.exe` executable. Along the way, the program will check for errors and if it runs into one, a message is displayed and the removal process is halted.

## Manage Edge Reinstalling/Search Box Suggestions
Modifies registry values to enable or disable Microsoft Edge reinstalling after an update, or to enable or disable the Bing suggestions while you're searching with Windows' Search tool.

# Localization
**GWE's Microsoft Edge and Search Box Suggestions Remover** currently has support for 3 languages:
- English (EN)
- German/Deutsch (DE)
- Vietnamese/Tiếng Việt (VI)

You can contribute, too! Just email me at [`thenewgwe@gmail.com`](mailto:thenewgwe@gmail.com) and give your translations. I'll look at it and add it in the script.
