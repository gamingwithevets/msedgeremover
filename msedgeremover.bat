:: all pieces of code in this script is courtesy of GamingWithEvets unless said otherwise



@echo off
:: set code page to UTF-8 to display several other languages
chcp 65001 >nul 2>&1
:: set default values for debug and help variables (bools)
set debug=0
set help=0

set version=1.1.0

for /f "tokens=3" %%a in ('reg query "HKCU\Control Panel\Desktop" /v PreferredUILanguages ^| find "PreferredUILanguages"') DO set lang=%%a

:: initialize params
if "%1" == "/echoon" (echo on)
if "%2" == "/echoon" (echo on)
if "%3" == "/echoon" (echo on)
if "%4" == "/echoon" (echo on)
if "%5" == "/echoon" (echo on)
if "%6" == "/echoon" (echo on)
if "%7" == "/echoon" (echo on)
if "%8" == "/echoon" (echo on)
if "%9" == "/echoon" (echo on)

if "%1" == "/ECHOON" (echo on)
if "%2" == "/ECHOON" (echo on)
if "%3" == "/ECHOON" (echo on)
if "%4" == "/ECHOON" (echo on)
if "%5" == "/ECHOON" (echo on)
if "%6" == "/ECHOON" (echo on)
if "%7" == "/ECHOON" (echo on)
if "%8" == "/ECHOON" (echo on)
if "%9" == "/ECHOON" (echo on)

if "%1" == "/debug" (set debug=1)
if "%2" == "/debug" (set debug=1)
if "%3" == "/debug" (set debug=1)
if "%4" == "/debug" (set debug=1)
if "%5" == "/debug" (set debug=1)
if "%6" == "/debug" (set debug=1)
if "%7" == "/debug" (set debug=1)
if "%8" == "/debug" (set debug=1)
if "%9" == "/debug" (set debug=1)

if "%1" == "/DEBUG" (set debug=1)
if "%2" == "/DEBUG" (set debug=1)
if "%3" == "/DEBUG" (set debug=1)
if "%4" == "/DEBUG" (set debug=1)
if "%5" == "/DEBUG" (set debug=1)
if "%6" == "/DEBUG" (set debug=1)
if "%7" == "/DEBUG" (set debug=1)
if "%8" == "/DEBUG" (set debug=1)
if "%9" == "/DEBUG" (set debug=1)

if "%1" == "/?" (set help=1)
if "%2" == "/?" (set help=1)
if "%3" == "/?" (set help=1)
if "%4" == "/?" (set help=1)
if "%5" == "/?" (set help=1)
if "%6" == "/?" (set help=1)
if "%7" == "/?" (set help=1)
if "%8" == "/?" (set help=1)
if "%9" == "/?" (set help=1)

if "%1" == "/langvivn" (goto loadlang_vi)
if "%2" == "/langvivn" (goto loadlang_vi)
if "%3" == "/langvivn" (goto loadlang_vi)
if "%4" == "/langvivn" (goto loadlang_vi)
if "%5" == "/langvivn" (goto loadlang_vi)
if "%6" == "/langvivn" (goto loadlang_vi)
if "%7" == "/langvivn" (goto loadlang_vi)
if "%8" == "/langvivn" (goto loadlang_vi)
if "%9" == "/langvivn" (goto loadlang_vi)

if "%1" == "/LANGVIVN" (goto loadlang_vi)
if "%2" == "/LANGVIVN" (goto loadlang_vi)
if "%3" == "/LANGVIVN" (goto loadlang_vi)
if "%4" == "/LANGVIVN" (goto loadlang_vi)
if "%5" == "/LANGVIVN" (goto loadlang_vi)
if "%6" == "/LANGVIVN" (goto loadlang_vi)
if "%7" == "/LANGVIVN" (goto loadlang_vi)
if "%8" == "/LANGVIVN" (goto loadlang_vi)
if "%9" == "/LANGVIVN" (goto loadlang_vi)

if "%1" == "/langdede" (goto loadlang_de)
if "%2" == "/langdede" (goto loadlang_de)
if "%3" == "/langdede" (goto loadlang_de)
if "%4" == "/langdede" (goto loadlang_de)
if "%5" == "/langdede" (goto loadlang_de)
if "%6" == "/langdede" (goto loadlang_de)
if "%7" == "/langdede" (goto loadlang_de)
if "%8" == "/langdede" (goto loadlang_de)
if "%9" == "/langdede" (goto loadlang_de)

if "%1" == "/LANGDEDE" (goto loadlang_de)
if "%2" == "/LANGDEDE" (goto loadlang_de)
if "%3" == "/LANGDEDE" (goto loadlang_de)
if "%4" == "/LANGDEDE" (goto loadlang_de)
if "%5" == "/LANGDEDE" (goto loadlang_de)
if "%6" == "/LANGDEDE" (goto loadlang_de)
if "%7" == "/LANGDEDE" (goto loadlang_de)
if "%8" == "/LANGDEDE" (goto loadlang_de)
if "%9" == "/LANGDEDE" (goto loadlang_de)

if %lang% == vi-VN (goto loadlang_vi)
if %lang% == de-DE (goto loadlang_vi)
if %lang% neq en-US (echo Cannot find a supported language for&echo BCP 47 language code %lang%. Using default language English (US^).&echo.)

:: load text for selected language
:loadlang_en
set langde=0
set str_help_00=Debug Mode not supported with the help menu. Exiting
set str_help_01=Allows you to remove the new Microsoft Edge based on Chromium
set str_help_02=disable Edge from reinstalling, and disable Windows Search
set str_help_03=Bing suggestions
set str_help_04=Running normally requires administrator privileges
set str_help_05=The script automatically provides them
set str_help_06=These parameters do not require elevation
set str_help_07=Displays this help message
set str_help_08=The below parameters require elevation
set str_help_09=Runs the script in Debug Mode
set str_help_10=Turns command-echoing on and runs the script
set str_help_11=Runs the script with the language specified in its XXXX parameter
set str_help_12=e.g. /langvivn runs the script in Vietnamese
set str_help_13=Note that because this is NOT a built-in Windows program, you cannot use the command
set str_help_14=to display this help message
set str_help_15=All rights go to their respective owners

set str_title=GWE's Microsoft Edge and Search Box Suggestions Remover

set str_uac_0=No elevation found! Getting elevation
set str_uac_1=Afterwards, this instance of the script will be closed
set str_uac_2=and run with administrator privileges

set str_menu_0=Welcome! Are you tired of Microsoft Edge being on
set str_menu_1=your computer, or that Windows keeps spitting out web results
set str_menu_2=when you're searching for your files? Well, that ends as soon
set str_menu_3=as you remove them
set str_menu_4=All right! What do you want me to do
set str_menu_5=Press any key to go back
set str_menuopt_0=Remove New Microsoft Edge (support for version
set str_menuopt_1=Manage Edge Reinstalling
set str_menuopt_2=Manage Search Box Suggestions
set str_menuopt_3=Exit
set str_menuopt_4=Back
set str_menuopt_5=Change language
set str_menuopt_6=Disable
set str_menuopt_7=Enable
set str_menuopt_8=Edge Reinstalling
set str_menuopt_9=Search Suggestions

set choice=Your choice

set str_lang=Okay! What language are you changing to

set str_caution=CAUTION
set str_caution_continue=Do you want to continue
set str_cautionmsg_0=After uninstalling Microsoft Edge, you can ONLY get Edge reinstalled
set str_cautionmsg_1=by installing a Windows update or getting Edge from Microsoft
set str_cautionmsg_2=If this function succeeds, it will mean that you can only
set str_cautionmsg_3=download Edge from Microsoft after doing this. If you
set str_cautionmsg_4=want to continue using Edge, enable Edge reinstalling
set str_cautionmsg_5=as soon as possible
set str_cautionmsg_6=If this function succeeds, it will mean that you will not
set str_cautionmsg_7=have web results displayed when using the Search feature
set str_cautionmsg_8=Typing a website address (e.g. amazon.com) will yield a result
set str_cautionmsg_9=and will open if Microsoft Edge is installed

set str_edgever=Got Edge version successfully
set str_edgeverfail=Can't get the Edge version! You probably uninstalled Edge before
set str_uninsedge_0=First, I need your Microsoft Edge version number
set str_uninsedge_1=Open Edge, click the three-dots icon, then Settings,
set str_uninsedge_2=and About Microsoft Edge. You should find your version
set str_uninsedge_3=number there
set str_uninsedge_4=Then type it in here (if you don't, the program will attempt to get the Edge version itself
set str_uninsedge_5=Attempting to change directory
set str_uninsedge_6=Failed to change directory to
set str_uninsedge_61=
set str_uninsedge_7=The version you typed probably isn't installed, isn't a valid version number, or
set str_uninsedge_8=the program got the wrong version number
set str_uninsedge_9=Successfully changed directory to
set str_uninsedge_91=
set str_uninsedge10=Checking if removal is possible
set str_uninsedge11=Hey! I can't find setup.exe in
set str_uninsedge12=! Without it,
set str_uninsedge13=uninstallation can't continue. Maybe you uninstalled Edge beforehand
set str_uninsedge14=Great! It looks like uninstallation is possible
set str_uninsedge15=Attempting to uninstall Edge... this may take a while
set str_uninsedge16=If this window is unresponsive after a while, close and reopen the script
set str_uninsedge17=exited, checking Edge uninstallation status
set str_uninsedge18=Uh oh. That's the wrong setup.exe, I think
set str_uninsedge19=Uninstallation failed
set str_uninsedge20=Yes! Microsoft Edge is officially gone! But... it can still
set str_uninsedge21=come back when you install Windows updates
set str_uninsedge22=So... why don't you disable that now
set str_uninsedge23=Do you wanna disable Edge reinstalling

set str_edgereins_0=Okay, just one registry tweak and Edge is gone... well, maybe
set str_edgereins_1=Sure, just one registry tweak and you'll get Edge back
set str_edgereins_2=Wait a sec. You didn't even disable Edge reinstalling yet

set str_bing_0=Okay, just one registry tweak and no more Bing suggestions
set str_bing_1=Sure, but this is a bad idea
set str_bing_2=Wait a minute! You didn't even disable it
set str_bing_restart_0=BUT like almost every program that makes changes to your computer
set str_bing_restart_1=sigh* you have to restart :( How sad
set str_bing_restart_2=Restart now
set str_bing_restart_3=Windows Search Bing Suggestions have been disabled. I'm restarting your computer
set str_bing_restart_4=Windows Search Bing Suggestions have been enabled. I'm restarting your computer
set str_bing_restart_5=Okay then! I figured that's what you'll choose

set str_manage_error=Uh oh. Houston, we have a problem
set str_manage_disable=Hey! It's disabled already, man
set str_manage_enable=Hey! It's enabled already, man
set str_manage_success=And it's done! Registry tweak succeeded

goto next

:loadlang_vi
set langde=0
set str_help_00=Ch??? ????? g??? l???i kh??ng ???????c h??? tr??? v???i menu tr??? gi??p. ??ang tho??t
set str_help_01=Cho ph??p b???n x??a Microsoft Edge m???i d???a tr??n Chromium
set str_help_02=t???t c??i ?????t l???i Edge v?? t???t c??c ????? xu???t Bing c???a Windows
set str_help_03=Search
set str_help_04=Ch???y b??nh th?????ng y??u c???u ?????c quy???n c???a qu???n tr??? vi??n
set str_help_05=T???p l???nh t??? ?????ng cung c???p ch??ng
set str_help_06=C??c th??ng s??? n??y kh??ng y??u c???u ?????c quy???n qu???n tr??? vi??n
set str_help_07=Hi???n th??? th??ng b??o tr??? gi??p n??y
set str_help_08=C??c th??ng s??? d?????i ????y y??u c???u ?????c quy???n qu???n tr??? vi??n
set str_help_09=Ch???y t???p l???nh trong Ch??? ????? g??? l???i
set str_help_10=B???t ch??? ????? l???p l???nh v?? ch???y t???p l???nh
set str_help_11=Ch???y t???p l???nh v???i ng??n ng??? ???????c ch??? ?????nh trong tham s??? XX c???a n??
set str_help_12=v?? d???: /langvivn ch???y script b???ng ti???ng Vi???t
set str_help_13=L??u ?? r???ng v?? ????y KH??NG ph???i l?? ch????ng tr??nh Windows ???????c t??ch h???p s???n, b???n kh??ng th??? s??? d???ng l???nh
set str_help_14=????? hi???n th??? th??ng b??o tr??? gi??p n??y
set str_help_15=T???t c??? c??c quy???n thu???c v??? ch??? s??? h???u t????ng ???ng c???a h???

set str_title=Ph???n m???m G??? b??? Microsoft Edge v?? ????? xu???t H???p t??m ki???m c???a GWE

set str_uac_0=Kh??ng t??m th???y ?????c quy???n qu???n tr??? vi??n! ??ang nh???n ?????c quy???n qu???n tr??? vi??n
set str_uac_1=Sau ????, c???a s??? t???p l???nh n??y s??? ???????c ????ng v?? ch???y l???i v???i
set str_uac_2=?????c quy???n qu???n tr??? vi??n

set str_menu_0=Ch??o m???ng! B???n c???m th???y m???t m???i v???i vi???c Microsoft Edge c?? tr??n
set str_menu_1=m??y t??nh c???a m??nh ho???c Windows li??n t???c xu???t hi???n c??c k???t qu??? web
set str_menu_2=khi b???n ??ang t??m ki???m c??c t???p c???a m??nh? Ch??, ??i???u ???? s??? k???t th??c
set str_menu_3=ngay sau khi b???n x??a ch??ng
set str_menu_4=???????c r???i! B???n mu???n t??i l??m g??
set str_menu_5=Nh???n ph??m b???t k??? ????? quay l???i
set str_menuopt_0=X??a Microsoft Edge M???i (h??? tr??? cho phi??n b???n
set str_menuopt_1=Qu???n l?? c??i ?????t l???i Edge
set str_menuopt_2=Qu???n l?? ????? xu???t H???p T??m ki???m
set str_menuopt_3=Tho??t
set str_menuopt_4=Quay l???i
set str_menuopt_5=Thay ?????i ng??n ng???
set str_menuopt_6=T???t
set str_menuopt_7=B???t
set str_menuopt_8=c??i ?????t l???i Edge
set str_menuopt_9=????? xu???t T??m ki???m

set choice=L???a ch???n c???a b???n

set str_lang=?? k?? lu??n, b???n mu???n ?????i ra ng??n ng??? n??o

set str_caution=C???NH B??O
set str_caution_continue=B???n c?? mu???n ti???p t???c
set str_cautionmsg_0=Sau khi g??? c??i ?????t Microsoft Edge, b???n CH??? c?? th??? c??i ?????t l???i Edge
set str_cautionmsg_1=b???ng c??ch c??i ?????t b???n c???p nh???t Windows ho???c t???i Edge t??? Microsoft
set str_cautionmsg_2=N???u ch???c n??ng n??y th??nh c??ng, ??i???u ???? c?? ngh??a l?? b???n ch??? c?? th???
set str_cautionmsg_3=t???i xu???ng Edge t??? Microsoft sau khi th???c hi???n vi???c n??y. N???u b???n
set str_cautionmsg_4=mu???n ti???p t???c s??? d???ng Edge, h??y b???t c??i ?????t l???i Edge
set str_cautionmsg_5=c??ng s???m c??ng t???t
set str_cautionmsg_6=N???u ch???c n??ng n??y th??nh c??ng, ??i???u ???? c?? ngh??a l?? b???n s??? kh??ng
set str_cautionmsg_7=hi???n th??? k???t qu??? web khi s??? d???ng t??nh n??ng T??m ki???m
set str_cautionmsg_8=TNh???p ?????a ch??? trang web (v?? d???: amazon.com) s??? mang l???i k???t qu???
set str_cautionmsg_9=v?? s??? m??? n???u Microsoft Edge ???????c c??i ?????t

set str_edgever=???? c?? phi??n b???n Edge th??nh c??ng
set str_edgeverfail=Kh??ng th??? l???y phi??n b???n Edge! B???n c?? th??? ???? g??? c??i ?????t Edge tr?????c ????y
set str_uninsedge_0=Tr?????c ti??n, t??i c???n s??? phi??n b???n Microsoft Edge c???a b???n
set str_uninsedge_1=M??? Edge, nh???p v??o bi???u t?????ng ba ch???m, sau ???? nh???p v??o C??i ?????t,
set str_uninsedge_2=v?? Gi???i thi???u v??? Microsoft Edge. B???n s??? t??m th???y s??? phi??n b???n
set str_uninsedge_3=c???a m??nh ??? ????
set str_uninsedge_4=Sau ???? nh???p n?? v??o ????y (n???u b???n kh??ng nh???p, ch????ng tr??nh s??? t??? l???y s??? phi??n b???n Edge
set str_uninsedge_5=??ang thay ?????i th?? m???c
set str_uninsedge_6=Kh??ng th??? thay ?????i th?? m???c th??nh
set str_uninsedge_61=
set str_uninsedge_7=Phi??n b???n b???n ???? nh???p c?? th??? ch??a ???????c c??i ?????t, kh??ng ph???i l?? s???
set str_uninsedge_8=phi??n b???n h???p l??? ho???c ch????ng tr??nh l???y s??? phi??n b???n sai
set str_uninsedge_9=???? thay ?????i th??nh c??ng th?? m???c th??nh
set str_uninsedge_91=
set str_uninsedge10=??ang ki???m tra xem c?? th??? lo???i b??? ???????c kh??ng
set str_uninsedge11=N??y! Kh??ng c?? setup.exe trong
set str_uninsedge12=! N???u kh??ng c?? n??,
set str_uninsedge13=qu?? tr??nh g??? c??i ?????t kh??ng th??? ti???p t???c. C?? th??? b???n ???? g??? c??i ?????t Edge tr?????c ????
set str_uninsedge14=Tuy???t v???i! C?? v??? nh?? c?? th??? g??? c??i ?????t
set str_uninsedge15=??ang d??ng setup.exe ????? g??? c??i ?????t Edge... qu?? tr??nh n??y c?? th??? m???t m???t l??c
set str_uninsedge16=N???u c???a s??? n??y kh??ng ph???n h???i sau m???t l??c, h??y ????ng v?? m??? l???i t???p l???nh
set str_uninsedge17=???? tho??t, ??ang ki???m tra tr???ng th??i g??? c??i ?????t Edge
set str_uninsedge18=??? ???. T??i ngh?? ???? l?? setup.exe sai
set str_uninsedge19=G??? c??i ?????t kh??ng th??nh c??ng
set str_uninsedge20=Tuy???t v???i! Microsoft Edge ???? ch??nh th???c bi???n m???t! Nh??ng... n?? v???n c??
set str_uninsedge21=th??? quay l???i khi b???n c??i ?????t c??c b???n c???p nh???t Windows
set str_uninsedge22=V???y... t???i sao b???n kh??ng t???t n?? ngay b??y gi???
set str_uninsedge23=B???n c?? mu???n t???t c??i ?????t l???i Edge kh??ng

set str_edgereins_0=???????c r???i, ch??? m???t l???n ch???nh s???a s??? ????ng k?? v?? Edge s??? bi???n m???t... th??, c?? th??? v???y
set str_edgereins_1=?? k??, ch??? m???t l???n ch???nh s???a s??? ????ng k?? v?? b???n s??? l???y l???i Edge
set str_edgereins_2=Ch??? ????. B???n th???m ch?? c??n ch??a t???t c??i ?????t l???i Edge n???a m??

set str_bing_0=???????c r???i, ch??? c???n m???t l???n ch???nh s???a s??? ????ng k?? v?? kh??ng c???n th??m ????? xu???t Bing n??o n???a
set str_bing_1=???????c, nh??ng ????y l?? m???t ?? t?????ng t???i
set str_bing_2=?????i t??! B???n th???m ch?? c??n ch??a t???t n?? n???a m??
set str_bing_restart_0=NH??NG gi???ng nh?? h???u h???t m???i ch????ng tr??nh th???c hi???n thay ?????i ?????i v???i m??y t??nh c???a b???n
set str_bing_restart_1=th??? d??i* b???n ph???i kh???i ?????ng l???i m??y :( Th???t l?? bu???n
set str_bing_restart_2=Kh???i ?????ng l???i ngay b??y gi???
set str_bing_restart_3=????? xu???t Bing tr??n Windows Search ???? ???????c t???t. T??i ??ang kh???i ?????ng l???i m??y t??nh c???a b???n
set str_bing_restart_4=????? xu???t Bing tr??n Windows Search ???? ???????c b???t. T??i ??ang kh???i ?????ng l???i m??y t??nh c???a b???n
set str_bing_restart_5=???????c th??i! T??i ??o??n tr?????c lu??n l?? b???n s??? chon l???a ch???n ????

set str_manage_error=Th??i ch???t! C?? v???n ????? r???i, m??nh kh??ng th??? ch???nh s???a s??? ????ng k?? ???????c
set str_manage_disable=N??y! N?? ???? t???t r???i
set str_manage_enable=N??y! N?? ???? b???t r???i
set str_manage_success=V?? n?? ???? ho??n th??nh! Ch???nh s???a s??? ????ng k?? th??nh c??ng

goto next

:loadlang_de
set langde=1
set str_help_00=Debug-Modus wird vom Hilfemen?? nicht unterst??tzt. Beenden
set str_help_01=Erm??glicht Ihnen das Entfernen des neuen Microsoft Edge basierend auf Chromium
set str_help_02=das Deaktivieren von Edge f??r die Neuinstallation und das Deaktivieren der Windows-Suche
set str_help_03=Bing-Vorschl??ge
set str_help_04=Normalerweise zum Ausf??hren sind Administratorrechte erforderlich
set str_help_05=Das Skript stellt sie automatisch bereit
set str_help_06=Diese Parameter erfordern keine H??he
set str_help_07=Zeigt diese Hilfemeldung an
set str_help_08=Die folgenden Parameter erfordern eine H??he
set str_help_09=F??hrt das Skript im Debug-Modus aus
set str_help_10=Schaltet das Befehls-Echoing ein und f??hrt das Skript aus
set str_help_11=F??hrt das Skript mit der im Parameter XXXX angegebenen Sprache aus
set str_help_12=z.B. /langvivn f??hrt das Skript auf Vietnamesisch aus
set str_help_13=Beachten Sie, dass Sie den Befehl "help msedgeremover" icht verwenden k??nnen,
set str_help_14=um diese Hilfemeldung anzuzeigen, nda es sich NICHT um ein
set str_help_15=Alle Rechte liegen bei ihren jeweiligen Eigent??mern

set str_title=Microsoft Edge und Suchfeld-Vorschl??ge-Entferner von GWE

set str_uac_0=Keine H??he gefunden! H??he abrufen
set str_uac_1=Danach wird diese Instanz des Skripts geschlossen
set str_uac_2=und mit Administratorrechten ausgef??hrt

set str_menu_0=Willkommen! Sind Sie es leid, dass Microsoft Edge auf 
set str_menu_1=Ihrem Computer installiert ist oder dass Windows beim 
set str_menu_2=Suchen nach Ihren Dateien st??ndig Webergebnisse ausspuckt? 
set str_menu_3=Nun, das endet, sobald Sie sie entfernen
set str_menu_4=Gut! Was soll ich tun
set str_menu_5=Dr??cken Sie eine beliebige Taste um zur??ck zu gehen
set str_menuopt_0=Neuen Microsoft Edge entfernen (Unterst??tzung f??r Version
set str_menuopt_1=Edge-Neuinstallation verwalten
set str_menuopt_2=Suchfeldvorschl??ge verwalten
set str_menuopt_3=Beenden
set str_menuopt_4=Zur??ck
set str_menuopt_5=Sprache ??ndern
set str_menuopt_6=Deaktivieren
set str_menuopt_7=Aktivieren
set str_menuopt_8=Edge-Neuinstallation
set str_menuopt_9=Suchvorschl??ge

set choice=Ihre Wahl

set str_lang=Okay! Auf welche Sprache wechselst du

set str_caution=ACHTUNG
set str_caution_continue=M??chten Sie fortfahren
set str_cautionmsg_0=Nach der Deinstallation von Microsoft Edge k??nnen Sie Edge NUR neu installieren,
set str_cautionmsg_1=indem Sie ein Windows-Update installieren oder Edge von Microsoft beziehen
set str_cautionmsg_2=Wenn diese Funktion erfolgreich ist, bedeutet dies, dass Sie Edge danach nur
set str_cautionmsg_3=on Microsoft herunterladen k??nnen. Wenn Sie Edge weiterhin verwenden m??chten,
set str_cautionmsg_4=aktivieren Sie die Neuinstallation von Edge
set str_cautionmsg_5=so bald wie m??glich.
set str_cautionmsg_6=Wenn diese Funktion erfolgreich ist, bedeutet dies, dass bei Verwendung 
set str_cautionmsg_7=der Suchfunktion keine Webergebnisse angezeigt werden
set str_cautionmsg_8=Die Eingabe einer Website-Adresse (z.B. amazon.com) f??hrt zu einem Ergebnis
set str_cautionmsg_9=und wird ge??ffnet, wenn Microsoft Edge installiert ist

set str_edgever=Edge-Version erfolgreich erhalten
set str_edgeverfail=Edge-Version kann nicht abgerufen werden! Sie haben Edge wahrscheinlich schon einmal deinstalliert
set str_uninsedge_0=Zuerst ben??tige ich Ihre Microsoft Edge-Versionsnummer
set str_uninsedge_1=??ffnen Sie Edge, klicken Sie auf das Drei-Punkte-Symbol, dann auf Einstellungen
set str_uninsedge_2=und ??ber Microsoft Edge. Dort solltest du deine Versionsnummer
set str_uninsedge_3=finden
set str_uninsedge_4=Dann geben Sie es hier ein (wenn Sie dies nicht tun, versucht das Programm, die Edge-Version selbst zu erhalten
set str_uninsedge_5=Versuch das Verzeichnis zu wechseln
set str_uninsedge_6=Verzeichnis konnte nicht in
set str_uninsedge_61= ge??ndert werden
set str_uninsedge_7=Die von Ihnen eingegebene Version ist wahrscheinlich nicht installiert, keine g??ltige Versionsnummer oder
set str_uninsedge_8=das Programm hat die falsche Versionsnummer
set str_uninsedge_9=Verzeichnis erfolgreich in
set str_uninsedge_91= ge??ndert
set str_uninsedge10=??berpr??fen, ob eine Entfernung m??glich ist
set str_uninsedge11=Hey! Ich kann setup.exe in
set str_uninsedge12=nicht finden! Ohne sie
set str_uninsedge13=kann die Deinstallation nicht fortgesetzt werden. Vielleicht hast du Edge vorher deinstalliert
set str_uninsedge14=Gro??artig! Es sieht so aus, als ob eine Deinstallation m??glich ist
set str_uninsedge15=Es wird versucht Edge zu deinstallieren... dies kann eine Weile dauern
set str_uninsedge16=Wenn dieses Fenster nach einiger Zeit nicht mehr reagiert, schlie??en Sie das Skript und ??ffnen Sie es erneut
set str_uninsedge17=wurde beendet. ??berpr??fung des Edge-Deinstallationsstatus
set str_uninsedge18=Oh oh. Das ist die falsche setup.exe, denke ich
set str_uninsedge19=Deinstallation fehlgeschlagen
set str_uninsedge20=Jawohl! Microsoft Edge ist offiziell weg! Aber... es kann immer noch
set str_uninsedge21=zur??ckkehren, wenn Sie Windows-Updates installieren
set str_uninsedge22=Also... warum deaktivierst du das nicht jetzt
set str_uninsedge23=M??chten Sie die Neuinstallation von Edge deaktivieren

set str_edgereins_0=Okay, nur ein Registry-Tweak und Edge ist weg... na ja, vielleicht
set str_edgereins_1=Sicher, nur ein Registry-Tweak und du bekommst Edge zur??ck
set str_edgereins_2=Warten Sie eine Sekunde. Du hast die Neuinstallation von Edge noch nicht einmal deaktiviert

set str_bing_0=Okay, nur ein Registry-Tweak und keine weiteren Bing-Vorschl??ge
set str_bing_1=Klar, aber das ist eine schlechte Idee
set str_bing_2=Warte eine Minute! Du hast es nicht einmal deaktiviert
set str_bing_restart_0=ABER wie fast jedes Programm, das ??nderungen an deinem Computer vornimmt
set str_bing_restart_1=seufzt* du musst neu starten :( Wie traurig
set str_bing_restart_2=Jetzt neu starten
set str_bing_restart_3=Windows Search Bing-Vorschl??ge wurden deaktiviert. Ich starte deinen Computer neu
set str_bing_restart_4=Windows-Suche Bing-Vorschl??ge wurden aktiviert. Ich starte deinen Computer neu
set str_bing_restart_5=Also gut! Ich dachte, das wirst du w??hlen

set str_manage_error=Oh nein! Es gibt ein Problem. Ich kann die Registrierung nicht ??ndern
set str_manage_disable=Hey! Es ist bereits deaktiviert, Mann
set str_manage_enable=Hey! Es ist bereits aktiviert, Mann
set str_manage_success=Und fertig! Registrierungsoptimierung erfolgreich


:next
if %help% == 1 (
if %debug% == 1 echo %str_help_00%. & exit /b
echo %str_help_01%,
echo %str_help_02%
echo %str_help_03%.
echo.
echo %str_help_04%.
echo %str_help_05%.
echo.
echo msedgeremover [/?] [/debug] [/echoon] [/langXXXX]
echo.
echo %str_help_06%:
echo:/?       %str_help_07%.
echo.
echo %str_help_08%:
echo /debug     %str_help_09%.
echo /ECHOON    %str_help_10%.
echo /langXXXX  %str_help_11%.
echo            (%str_help_12%^)
echo.
echo %str_help_13%
if %langde% == 1 (echo %str_help_14%.) else (echo "help msedgeremover" %str_help_14%.)
echo.
echo (c^) 2021 GamingWithEvets Inc. %str_help_15%.
exit /b
)

:: code courtesy of Ben Gripka (edited by GWE)

:: run NET SESSION to check for elevation
net session >nul 2>&1
:: if net session gives system error 5, print no elevation
:: found message and attempt to get elevation
:: or else, cd to "home" directory and run the script
if %errorlevel% neq 0 (
echo %str_uac_0%.
echo %str_uac_1%
echo %str_uac_2%.
goto elevation
) else (goto gotadmin)

:elevation
:: write commands to display a UAC prompt into a VBS script
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
:: store batch params into a variable
set params=%*
echo UAC.ShellExecute "cmd", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
:: after writing to the VBS script, run it with inputted params
"%temp%\getadmin.vbs"
:: then delete it after it has exited
del "%temp%\getadmin.vbs"
:: and exit the script to run it with admin privileges
exit

:gotadmin
pushd "%cd%"
CD /D "%~dp0"

:: set window title and variable for returning to home directory
title %str_title% - v%version%
set retreatdir=%~dp0

:menu
:: clear screen and print menu screen
cls
echo %str_title% - v%version%
if %debug% == 1 (echo :p   %retreatdir%   %*   %~s0) else (echo.)
echo %str_menu_0%
echo %str_menu_1%
echo %str_menu_2%
echo %str_menu_3%!
echo.
echo [1] %str_menuopt_0% 79.0.309+)
echo [2] %str_menuopt_1%
echo [3] %str_menuopt_2%
echo [4] %str_menuopt_5%
echo [5] %str_menuopt_3%
echo.
choice /c 12345 /n /m "%choice%: "
:: if user inputted 1, start function to remove msedge
if %errorlevel% == 1 (goto msedgebegone)
:: if user inputted 2, go to manage edge reinstalling menu
if %errorlevel% == 2 (goto dontreinstalledge)
:: if user inputted 3, go to manage search box suggestions menu
if %errorlevel% == 3 (goto searchmenu)
:: if user inputted 4, go to language select
if %errorlevel% == 4 (goto language)
:: if user inputted 5, exit the program
if %errorlevel% == 5 (
cls
title Command Prompt
exit /b
)

:msedgebegone
:: display caution
cls
echo %str_caution%:
echo %str_cautionmsg_0%
echo %str_cautionmsg_1%.
echo.
choice /n /m "%str_caution_continue%? [Y/N] "
if %errorlevel% == 2 (goto menu)
:: ask user to input msedge version number
:: if user did not input anything, get msedge.exe version
:: if failed, return
cls
echo %str_uninsedge_0%!
echo %str_uninsedge_1%
echo %str_uninsedge_2%
echo %str_uninsedge_3%.
set /p edgever=%str_uninsedge_4%): 
if "%edgever%" neq "" (cls & goto msedgebegone_2)

:getversion
for /f "tokens=2 delims==" %%a in ('wmic datafile where "name='C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe'" get version /value') do set edgever=%%a
if "%edgever%" neq "" (cls & echo %str_edgever%.) else (
cls
echo %str_edgeverfail%.
echo %str_menu_5%.
pause >nul
cd /d %retreatdir%
goto menu
)

:msedgebegone_2
:: attempt to change directory to installer folder of current edge version
echo.
echo %str_uninsedge_5%...
cd /d %programfiles(x86)%\microsoft\edge\application\%edgever%\installer >nul 2>&1
:: if change directory failed, print failure message, change to home directory, and return to menu
:: or else continue uninstallation
if %errorlevel% == 1 (
echo %str_uninsedge_6% C:\Program Files (x86^)\Microsoft\Edge\Application\%edgever%\Installer%str_uninsedge_61%!
echo %str_uninsedge_7%
echo %str_uninsedge_8%!
echo %str_menu_5%.
pause >nul
cd /d %retreatdir%
goto menu
) else (echo %str_uninsedge_9% C:\Program Files (x86^)\Microsoft\Edge\Application\%edgever%\Installer%str_uninsedge_91%)
echo.
:: check for setup.exe in current directory (used to uninstall edge)
echo %str_uninsedge10%...
:: if setup.exe doesn't exist in current directory, print failure message, change to home directory, and return to menu
if not exist setup.exe (
echo %str_uninsedge11% C:\Program Files (x86^)\Microsoft\Edge\Application\%edgever%\Installer%str_uninsedge12%
echo %str_uninsedge13%...
echo %str_menu_5%.
pause >nul
cd /d %retreatdir%
goto menu
)
echo %str_uninsedge14%!
echo.
:: attempt to use setup.exe to uninstall edge
echo %str_uninsedge15%...
echo %str_uninsedge16%.
setup --uninstall --system-level --verbose-logging --force-uninstall
echo.
:: after setup.exe exited, check for msedge executable
echo setup.exe %str_uninsedge17%...
:: if msedge.exe still exists, print wrong setup.exe message, change to home directory, and return to menu
if exist "%programfiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
echo %str_uninsedge18%...
echo %str_uninsedge19%!
echo %str_menu_5%.
pause >nul
cd /d %retreatdir%
goto menu
)
:: if msedge check succeeds, change to home directory, print success message and ask user
:: if they want to disable edge reinstalling
:: if they said yes, go to manage edge reinstall menu, or else return to menu
cd /d %retreatdir%
echo.
echo %str_uninsedge20%
echo %str_uninsedge21%.
echo %str_uninsedge22%?
choice /n /m "%str_uninsedge23%? [Y/N] "
if %errorlevel% == 1 (goto dontreinstalledge) else (goto menu)

:dontreinstalledge
:: clear screen & print manage edge reinstalling menu
cls
echo %str_menu_4%?
echo.
if %langde% == 1 (echo [1] %str_menuopt_8% %str_menuopt_6%) else (echo [1] %str_menuopt_6% %str_menuopt_8%)
if %langde% == 1 (echo [2] %str_menuopt_8% %str_menuopt_7%) else (echo [2] %str_menuopt_7% %str_menuopt_8%)
echo [3] %str_menuopt_4%
echo.
choice /c 123 /n /m "%choice%: "
:: if user inputted 1, go to function to disable edge reinstall
if %errorlevel% == 1 (goto disablechromiumedge)
:: if user inputted 2, go to function to enable edge reinstall
if %errorlevel% == 2 (goto enablechromiumedge)
:: if user inputted 3, return to main menu
if %errorlevel% == 3 (goto menu)

:disablechromiumedge
:: display caution
cls
echo %str_caution%:
echo %str_cautionmsg_2%
echo %str_cautionmsg_3%
echo %str_cautionmsg_4%
echo %str_cautionmsg_5%.
echo.
choice /n /m "%str_caution_continue%? [Y/N]"
if %errorlevel% == 2 (goto dontreinstalledge)
cls
echo %str_edgereins_0%.
:: check for edgeupdate key
reg query HKLM\Software\Microsoft | findstr EdgeUpdate >nul 2>&1
:: if it doesn't exist, create it
if %errorlevel% == 1 (reg add HKLM\Software\Microsoft\EdgeUpdate >nul 2>&1)
:: if command got an error, print error message and return
if %errorlevel% == 1 (
cls
echo %str_edgereins_0%.
echo %str_manage_error%!
echo %str_menu_5%.
pause >nul
goto dontreinstalledge
)
:: check for donotupdatetoedgewithchromium value
reg query HKLM\Software\Microsoft\EdgeUpdate | findstr DoNotUpdateToEdgeWithChromium >nul 2>&1
:: if it doesn't exist, create it and assign its data
if %errorlevel% == 1 (
reg add HKLM\Software\Microsoft\EdgeUpdate /v DoNotUpdateToEdgeWithChromium /t REG_DWORD /d 1 /f >nul 2>&1
) else (
:: if it does, check if it has a value of 1
:: if it does have a value of 1, print "already disabled" message and return
:: or else, change its value to 1 and continue with error check
goto disablechromiumedge_fail
)
:disablechromiumedge_continue
:: if command got an error, print error message and return
if %errorlevel% == 1 (
cls
echo %str_edgereins_0%.
echo %str_manage_error%!
echo %str_menu_5%.
pause >nul
goto dontreinstalledge
)
cls
echo %str_edgereins_0%.
echo %str_manage_success%.
echo %str_menu_5%.
pause >nul
goto dontreinstalledge
:disablechromiumedge_fail
reg query HKLM\Software\Microsoft\EdgeUpdate /v DoNotUpdateToEdgeWithChromium | findstr 0x1 >nul 2>&1
if %errorlevel% == 0 (
cls
echo %str_edgereins_0%.
echo %str_manage_disable%!
echo %str_menu_5%.
pause >nul
goto dontreinstalledge
) else (
reg add HKLM\Software\Microsoft\EdgeUpdate /v DoNotUpdateToEdgeWithChromium /t REG_DWORD /d 1 /f >nul 2>&1
goto disablechromiumedge_continue
)

:enablechromiumedge
cls
echo %str_edgereins_1%...
:: check for edgeupdate key
reg query HKLM\Software\Microsoft | findstr EdgeUpdate >nul 2>&1
:: if it doesn't exist, print "didn't disable" message and return
if %errorlevel% == 1 (
cls
echo %str_edgereins_1%...
echo %str_edgereins_2%.
echo %str_menu_5%.
pause >nul
goto dontreinstalledge
)
:: check for donotupdatetoedgewithchromium value
reg query HKLM\Software\Microsoft\EdgeUpdate | findstr DoNotUpdateToEdgeWithChromium >nul 2>&1
:: if it doesn't exist, print "didn't disable" message and return
if %errorlevel% == 1 (
cls
echo %str_edgereins_1%...
echo %str_edgereins_2%.
echo %str_menu_5%.
pause >nul
goto dontreinstalledge
)
:: if it doesn't, print "already enabled" message and return
if %errorlevel% == 1 (
cls
echo %str_edgereins_1%...
echo %str_manage_enable%!
echo %str_menu_5%.
pause >nul
goto dontreinstalledge
)
:: if it does, assign the value 0 to it
reg add HKLM\Software\Microsoft\EdgeUpdate /v DoNotUpdateToEdgeWithChromium /t REG_DWORD /d 0 /f >nul 2>&1
if %errorlevel% == 1 (
:: if command got an error, print error message and return
cls
echo %str_edgereins_1%...
echo %str_manage_error%!
echo %str_menu_5%.
pause >nul
goto dontreinstalledge
)
:: if command succeeded, print success message and return
cls
echo %str_edgereins_1%...
echo %str_manage_success%.
echo %str_menu_5%.
pause >nul
goto dontreinstalledge

:searchmenu
:: clear screen & print manage search suggestions menu
cls
echo %str_menu_4%?
echo.
if %langde% == 1 (echo [1] %str_menuopt_9% %str_menuopt_6%) else (echo [1] %str_menuopt_6% %str_menuopt_9%)
if %langde% == 1 (echo [2] %str_menuopt_9% %str_menuopt_7%) else (echo [2] %str_menuopt_7% %str_menuopt_9%)
echo [3] %str_menuopt_4%
echo.
choice /n /c 123 /m "%choice%: "
:: if user inputted 1, go to function to disable search suggestions
if %errorlevel% == 1 (goto disablesearch)
:: if user inputted 2, go to function to enable search suggestions
if %errorlevel% == 2 (goto enablesearch)
:: if user inputted 3, return to main menu
if %errorlevel% == 3 (goto menu)

:disablesearch
:: display caution
cls
echo %str_caution%:
echo %str_cautionmsg_6%
echo %str_cautionmsg_7%.
echo %str_cautionmsg_8%
echo %str_cautionmsg_9%.
echo.
choice /n /m "%str_caution_continue%? [Y/N]"
if %errorlevel% == 2 (goto searchmenu)
cls
echo %str_bing_0%...
:: check for explorer key
reg query HKCU\SOFTWARE\Policies\Microsoft\Windows | findstr Explorer >nul 2>&1
:: if it doesn't exist, create it
if %errorlevel% == 1 (reg add HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer >nul 2>&1)
:: if command got an error, print error message and return
if %errorlevel% == 1 (
cls
echo %str_bing_0%...
echo %str_manage_error%!
echo %str_menu_5%.
pause >nul
goto dontreinstalledge
)
:: check for disablesearchboxsuggestions value
reg query HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer | findstr DisableSearchBoxSuggestions >nul 2>&1
:: if it doesn't exist, create it and assign its data
if %errorlevel% == 1 (
reg add HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f >nul 2>&1
) else (
:: if it does, check if it has a value of 1
:: if it does have a value of 1, print "already disabled" message and return
:: or else, continue with error check
goto disablesearch_fail
)
:disablesearch_continue
:: if command got an error, print error message and return
if %errorlevel% == 1 (
cls
echo %str_bing_0%...
echo %str_manage_error%!
echo %str_menu_5%.
pause >nul
goto searchmenu
)
:: if command succeeded, print success message and request restart
cls
echo %str_bing_0%...
echo %str_manage_success%.
echo %str_bing_restart_0%...
echo *%str_bing_restart_1%.
choice /n /c YN /m "%str_bing_restart_2%? (Y/N) "
:: if user chose to restart, use shutdown command to display a message before restarting
if %errorlevel% == 1 (shutdown /r /t 10 /c "%str_bing_restart_3%." & exit /b) else (
:: or else, return
echo %str_bing_restart_5%.
echo %str_menu_5%.
pause >nul
goto searchmenu
)
:disablesearch_fail
reg query HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer /v DisableSearchBoxSuggestions | findstr 0x1 >nul 2>&1
if %errorlevel% == 0 (
cls
echo %str_bing_0%...
echo %str_manage_disable%!
echo %str_menu_5%.
pause >nul
goto searchmenu
) else (
reg add HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f >nul 2>&1
goto disablesearch_continue
)

:enablesearch
cls
echo %str_bing_1%...
:: check for explorer key
reg query HKCU\SOFTWARE\Policies\Microsoft\Windows | findstr Explorer >nul 2>&1
:: if it doesn't exist, print "didn't disable" message and return
if %errorlevel% == 1 (
cls
echo %str_bing_1%...
echo %str_bing_2%!
echo %str_menu_5%.
pause >nul
goto searchmenu
)
:: check for disablesearchboxsuggestions value
reg query HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer | findstr DisableSearchBoxSuggestions >nul 2>&1
:: if it doesn't exist, print "didn't disable" message and return
if %errorlevel% == 1 (
cls
echo %str_bing_1%...
echo %str_bing_2%!
echo %str_menu_5%.
pause >nul
goto searchmenu
)
:: if it doesn't, print "already enabled" message and return
if %errorlevel% == 1 (
cls
echo %str_bing_1%...
echo %str_manage_enable%!
echo %str_menu_5%.
pause >nul
goto searchmenu
)
:: if it does, assign the value 0 to it
reg add HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer /v DisableSearchBoxSuggestions /t REG_DWORD /d 0 /f >nul 2>&1
if %errorlevel% == 1 (
:: if command got an error, print error message and return
cls
echo %str_bing_1%...
echo %str_manage_error%!
echo %str_menu_5%.
pause >nul
goto searchmenu
)
:: if command succeeded, print success message and request restart
cls
echo %str_bing_1%...
echo %str_manage_success%.
echo %str_bing_restart_0%...
echo *%str_bing_restart_1%.
choice /n /c YN /m "%str_bing_restart_2%? (Y/N) "
:: if user chose to restart, use shutdown command to display a message before restarting
if %errorlevel% == 1 (shutdown /r /t 10 /c "%str_bing_restart_4%." & exit /b) else (
:: or else, return
echo %str_bing_restart_5%.
echo %str_menu_5%.
pause >nul
goto searchmenu
)

:language
cls
echo %str_lang%?
echo.
echo [1] English (US)
echo [2] Deutsch (Deutschland)
echo [3] Ti???ng Vi???t (Vi???t Nam)
echo.
echo [4] %str_menuopt_4%
echo.
choice /n /c 1234 /m "%choice%: "
if %errorlevel% == 1 (goto loadlang_en)
if %errorlevel% == 2 (goto loadlang_de)
if %errorlevel% == 3 (goto loadlang_vi)
if %errorlevel% == 4 (goto menu)