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
set str_help_00=Chế độ gỡ lỗi không được hỗ trợ với menu trợ giúp. Đang thoát
set str_help_01=Cho phép bạn xóa Microsoft Edge mới dựa trên Chromium
set str_help_02=tắt cài đặt lại Edge và tắt các đề xuất Bing của Windows
set str_help_03=Search
set str_help_04=Chạy bình thường yêu cầu đặc quyền của quản trị viên
set str_help_05=Tập lệnh tự động cung cấp chúng
set str_help_06=Các thông số này không yêu cầu đặc quyền quản trị viên
set str_help_07=Hiển thị thông báo trợ giúp này
set str_help_08=Các thông số dưới đây yêu cầu đặc quyền quản trị viên
set str_help_09=Chạy tập lệnh trong Chế độ gỡ lỗi
set str_help_10=Bật chế độ lặp lệnh và chạy tập lệnh
set str_help_11=Chạy tập lệnh với ngôn ngữ được chỉ định trong tham số XX của nó
set str_help_12=ví dụ: /langvivn chạy script bằng tiếng Việt
set str_help_13=Lưu ý rằng vì đây KHÔNG phải là chương trình Windows được tích hợp sẵn, bạn không thể sử dụng lệnh
set str_help_14=để hiển thị thông báo trợ giúp này
set str_help_15=Tất cả các quyền thuộc về chủ sở hữu tương ứng của họ

set str_title=Phần mềm Gỡ bỏ Microsoft Edge và đề xuất Hộp tìm kiếm của GWE

set str_uac_0=Không tìm thấy đặc quyền quản trị viên! Đang nhận đặc quyền quản trị viên
set str_uac_1=Sau đó, cửa sổ tập lệnh này sẽ được đóng và chạy lại với
set str_uac_2=đặc quyền quản trị viên

set str_menu_0=Chào mừng! Bạn cảm thấy mệt mỏi với việc Microsoft Edge có trên
set str_menu_1=máy tính của mình hoặc Windows liên tục xuất hiện các kết quả web
set str_menu_2=khi bạn đang tìm kiếm các tệp của mình? Chà, điều đó sẽ kết thúc
set str_menu_3=ngay sau khi bạn xóa chúng
set str_menu_4=Được rồi! Bạn muốn tôi làm gì
set str_menu_5=Nhấn phím bất kỳ để quay lại
set str_menuopt_0=Xóa Microsoft Edge Mới (hỗ trợ cho phiên bản
set str_menuopt_1=Quản lý cài đặt lại Edge
set str_menuopt_2=Quản lý Đề xuất Hộp Tìm kiếm
set str_menuopt_3=Thoát
set str_menuopt_4=Quay lại
set str_menuopt_5=Thay đổi ngôn ngữ
set str_menuopt_6=Tắt
set str_menuopt_7=Bật
set str_menuopt_8=cài đặt lại Edge
set str_menuopt_9=Đề xuất Tìm kiếm

set choice=Lựa chọn của bạn

set str_lang=Ô kê luôn, bạn muốn đổi ra ngôn ngứ nào

set str_caution=CẢNH BÁO
set str_caution_continue=Bạn có muốn tiếp tục
set str_cautionmsg_0=Sau khi gỡ cài đặt Microsoft Edge, bạn CHỈ có thể cài đặt lại Edge
set str_cautionmsg_1=bằng cách cài đặt bản cập nhật Windows hoặc tải Edge từ Microsoft
set str_cautionmsg_2=Nếu chức năng này thành công, điều đó có nghĩa là bạn chỉ có thể
set str_cautionmsg_3=tải xuống Edge từ Microsoft sau khi thực hiện việc này. Nếu bạn
set str_cautionmsg_4=muốn tiếp tục sử dụng Edge, hãy bật cài đặt lại Edge
set str_cautionmsg_5=càng sớm càng tốt
set str_cautionmsg_6=Nếu chức năng này thành công, điều đó có nghĩa là bạn sẽ không
set str_cautionmsg_7=hiển thị kết quả web khi sử dụng tính năng Tìm kiếm
set str_cautionmsg_8=TNhập địa chỉ trang web (ví dụ: amazon.com) sẽ mang lại kết quả
set str_cautionmsg_9=và sẽ mở nếu Microsoft Edge được cài đặt

set str_edgever=Đã có phiên bản Edge thành công
set str_edgeverfail=Không thể lấy phiên bản Edge! Bạn có thể đã gỡ cài đặt Edge trước đây
set str_uninsedge_0=Trước tiên, tôi cần số phiên bản Microsoft Edge của bạn
set str_uninsedge_1=Mở Edge, nhấp vào biểu tượng ba chấm, sau đó nhấp vào Cài đặt,
set str_uninsedge_2=và Giới thiệu về Microsoft Edge. Bạn sẽ tìm thấy số phiên bản
set str_uninsedge_3=của mình ở đó
set str_uninsedge_4=Sau đó nhập nó vào đây (nếu bạn không nhập, chương trình sẽ tự lấy số phiên bản Edge
set str_uninsedge_5=Đang thay đổi thư mục
set str_uninsedge_6=Không thể thay đổi thư mục thành
set str_uninsedge_61=
set str_uninsedge_7=Phiên bản bạn đã nhập có thể chưa được cài đặt, không phải là số
set str_uninsedge_8=phiên bản hợp lệ hoặc chương trình lấy số phiên bản sai
set str_uninsedge_9=Đã thay đổi thành công thư mục thành
set str_uninsedge_91=
set str_uninsedge10=Đang kiểm tra xem có thể loại bỏ được không
set str_uninsedge11=Này! Không có setup.exe trong
set str_uninsedge12=! Nếu không có nó,
set str_uninsedge13=quá trình gỡ cài đặt không thể tiếp tục. Có thể bạn đã gỡ cài đặt Edge trước đó
set str_uninsedge14=Tuyệt vời! Có vẻ như có thể gỡ cài đặt
set str_uninsedge15=Đang dùng setup.exe để gỡ cài đặt Edge... quá trình này có thể mất một lúc
set str_uninsedge16=Nếu cửa sổ này không phản hồi sau một lúc, hãy đóng và mở lại tập lệnh
set str_uninsedge17=đã thoát, đang kiểm tra trạng thái gỡ cài đặt Edge
set str_uninsedge18=Ồ ồ. Tôi nghĩ đó là setup.exe sai
set str_uninsedge19=Gỡ cài đặt không thành công
set str_uninsedge20=Tuyệt vời! Microsoft Edge đã chính thức biến mất! Nhưng... nó vẫn có
set str_uninsedge21=thể quay lại khi bạn cài đặt các bản cập nhật Windows
set str_uninsedge22=Vậy... tại sao bạn không tắt nó ngay bây giờ
set str_uninsedge23=Bạn có muốn tắt cài đặt lại Edge không

set str_edgereins_0=Được rồi, chỉ một lần chỉnh sửa sổ đăng ký và Edge sẽ biến mất... thì, có thể vậy
set str_edgereins_1=Ô kê, chỉ một lần chỉnh sửa sổ đăng ký và bạn sẽ lấy lại Edge
set str_edgereins_2=Chờ đã. Bạn thậm chí còn chưa tắt cài đặt lại Edge nữa mà

set str_bing_0=Được rồi, chỉ cần một lần chỉnh sửa sổ đăng ký và không cần thêm đề xuất Bing nào nữa
set str_bing_1=Được, nhưng đây là một ý tưởng tồi
set str_bing_2=Đợi tí! Bạn thậm chí còn chưa tắt nó nữa mà
set str_bing_restart_0=NHƯNG giống như hầu hết mọi chương trình thực hiện thay đổi đối với máy tính của bạn
set str_bing_restart_1=thở dài* bạn phải khởi động lại máy :( Thật là buồn
set str_bing_restart_2=Khởi động lại ngay bây giờ
set str_bing_restart_3=Đề xuất Bing trên Windows Search đã được tắt. Tôi đang khởi động lại máy tính của bạn
set str_bing_restart_4=Đề xuất Bing trên Windows Search đã được bật. Tôi đang khởi động lại máy tính của bạn
set str_bing_restart_5=Được thôi! Tôi đoán trước luôn là bạn sẽ chon lựa chọn đó

set str_manage_error=Thôi chết! Có vấn đề rồi, mình không thể chỉnh sửa sổ đăng ký được
set str_manage_disable=Này! Nó đã tắt rồi
set str_manage_enable=Này! Nó đã bật rồi
set str_manage_success=Và nó đã hoàn thành! Chỉnh sửa sổ đăng ký thành công

goto next

:loadlang_de
set langde=1
set str_help_00=Debug-Modus wird vom Hilfemenü nicht unterstützt. Beenden
set str_help_01=Ermöglicht Ihnen das Entfernen des neuen Microsoft Edge basierend auf Chromium
set str_help_02=das Deaktivieren von Edge für die Neuinstallation und das Deaktivieren der Windows-Suche
set str_help_03=Bing-Vorschläge
set str_help_04=Normalerweise zum Ausführen sind Administratorrechte erforderlich
set str_help_05=Das Skript stellt sie automatisch bereit
set str_help_06=Diese Parameter erfordern keine Höhe
set str_help_07=Zeigt diese Hilfemeldung an
set str_help_08=Die folgenden Parameter erfordern eine Höhe
set str_help_09=Führt das Skript im Debug-Modus aus
set str_help_10=Schaltet das Befehls-Echoing ein und führt das Skript aus
set str_help_11=Führt das Skript mit der im Parameter XXXX angegebenen Sprache aus
set str_help_12=z.B. /langvivn führt das Skript auf Vietnamesisch aus
set str_help_13=Beachten Sie, dass Sie den Befehl "help msedgeremover" icht verwenden können,
set str_help_14=um diese Hilfemeldung anzuzeigen, nda es sich NICHT um ein
set str_help_15=Alle Rechte liegen bei ihren jeweiligen Eigentümern

set str_title=Microsoft Edge und Suchfeld-Vorschläge-Entferner von GWE

set str_uac_0=Keine Höhe gefunden! Höhe abrufen
set str_uac_1=Danach wird diese Instanz des Skripts geschlossen
set str_uac_2=und mit Administratorrechten ausgeführt

set str_menu_0=Willkommen! Sind Sie es leid, dass Microsoft Edge auf 
set str_menu_1=Ihrem Computer installiert ist oder dass Windows beim 
set str_menu_2=Suchen nach Ihren Dateien ständig Webergebnisse ausspuckt? 
set str_menu_3=Nun, das endet, sobald Sie sie entfernen
set str_menu_4=Gut! Was soll ich tun
set str_menu_5=Drücken Sie eine beliebige Taste um zurück zu gehen
set str_menuopt_0=Neuen Microsoft Edge entfernen (Unterstützung für Version
set str_menuopt_1=Edge-Neuinstallation verwalten
set str_menuopt_2=Suchfeldvorschläge verwalten
set str_menuopt_3=Beenden
set str_menuopt_4=Zurück
set str_menuopt_5=Sprache ändern
set str_menuopt_6=Deaktivieren
set str_menuopt_7=Aktivieren
set str_menuopt_8=Edge-Neuinstallation
set str_menuopt_9=Suchvorschläge

set choice=Ihre Wahl

set str_lang=Okay! Auf welche Sprache wechselst du

set str_caution=ACHTUNG
set str_caution_continue=Möchten Sie fortfahren
set str_cautionmsg_0=Nach der Deinstallation von Microsoft Edge können Sie Edge NUR neu installieren,
set str_cautionmsg_1=indem Sie ein Windows-Update installieren oder Edge von Microsoft beziehen
set str_cautionmsg_2=Wenn diese Funktion erfolgreich ist, bedeutet dies, dass Sie Edge danach nur
set str_cautionmsg_3=on Microsoft herunterladen können. Wenn Sie Edge weiterhin verwenden möchten,
set str_cautionmsg_4=aktivieren Sie die Neuinstallation von Edge
set str_cautionmsg_5=so bald wie möglich.
set str_cautionmsg_6=Wenn diese Funktion erfolgreich ist, bedeutet dies, dass bei Verwendung 
set str_cautionmsg_7=der Suchfunktion keine Webergebnisse angezeigt werden
set str_cautionmsg_8=Die Eingabe einer Website-Adresse (z.B. amazon.com) führt zu einem Ergebnis
set str_cautionmsg_9=und wird geöffnet, wenn Microsoft Edge installiert ist

set str_edgever=Edge-Version erfolgreich erhalten
set str_edgeverfail=Edge-Version kann nicht abgerufen werden! Sie haben Edge wahrscheinlich schon einmal deinstalliert
set str_uninsedge_0=Zuerst benötige ich Ihre Microsoft Edge-Versionsnummer
set str_uninsedge_1=Öffnen Sie Edge, klicken Sie auf das Drei-Punkte-Symbol, dann auf Einstellungen
set str_uninsedge_2=und Über Microsoft Edge. Dort solltest du deine Versionsnummer
set str_uninsedge_3=finden
set str_uninsedge_4=Dann geben Sie es hier ein (wenn Sie dies nicht tun, versucht das Programm, die Edge-Version selbst zu erhalten
set str_uninsedge_5=Versuch das Verzeichnis zu wechseln
set str_uninsedge_6=Verzeichnis konnte nicht in
set str_uninsedge_61= geändert werden
set str_uninsedge_7=Die von Ihnen eingegebene Version ist wahrscheinlich nicht installiert, keine gültige Versionsnummer oder
set str_uninsedge_8=das Programm hat die falsche Versionsnummer
set str_uninsedge_9=Verzeichnis erfolgreich in
set str_uninsedge_91= geändert
set str_uninsedge10=Überprüfen, ob eine Entfernung möglich ist
set str_uninsedge11=Hey! Ich kann setup.exe in
set str_uninsedge12=nicht finden! Ohne sie
set str_uninsedge13=kann die Deinstallation nicht fortgesetzt werden. Vielleicht hast du Edge vorher deinstalliert
set str_uninsedge14=Großartig! Es sieht so aus, als ob eine Deinstallation möglich ist
set str_uninsedge15=Es wird versucht Edge zu deinstallieren... dies kann eine Weile dauern
set str_uninsedge16=Wenn dieses Fenster nach einiger Zeit nicht mehr reagiert, schließen Sie das Skript und öffnen Sie es erneut
set str_uninsedge17=wurde beendet. Überprüfung des Edge-Deinstallationsstatus
set str_uninsedge18=Oh oh. Das ist die falsche setup.exe, denke ich
set str_uninsedge19=Deinstallation fehlgeschlagen
set str_uninsedge20=Jawohl! Microsoft Edge ist offiziell weg! Aber... es kann immer noch
set str_uninsedge21=zurückkehren, wenn Sie Windows-Updates installieren
set str_uninsedge22=Also... warum deaktivierst du das nicht jetzt
set str_uninsedge23=Möchten Sie die Neuinstallation von Edge deaktivieren

set str_edgereins_0=Okay, nur ein Registry-Tweak und Edge ist weg... na ja, vielleicht
set str_edgereins_1=Sicher, nur ein Registry-Tweak und du bekommst Edge zurück
set str_edgereins_2=Warten Sie eine Sekunde. Du hast die Neuinstallation von Edge noch nicht einmal deaktiviert

set str_bing_0=Okay, nur ein Registry-Tweak und keine weiteren Bing-Vorschläge
set str_bing_1=Klar, aber das ist eine schlechte Idee
set str_bing_2=Warte eine Minute! Du hast es nicht einmal deaktiviert
set str_bing_restart_0=ABER wie fast jedes Programm, das Änderungen an deinem Computer vornimmt
set str_bing_restart_1=seufzt* du musst neu starten :( Wie traurig
set str_bing_restart_2=Jetzt neu starten
set str_bing_restart_3=Windows Search Bing-Vorschläge wurden deaktiviert. Ich starte deinen Computer neu
set str_bing_restart_4=Windows-Suche Bing-Vorschläge wurden aktiviert. Ich starte deinen Computer neu
set str_bing_restart_5=Also gut! Ich dachte, das wirst du wählen

set str_manage_error=Oh nein! Es gibt ein Problem. Ich kann die Registrierung nicht ändern
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
echo [3] Tiếng Việt (Việt Nam)
echo.
echo [4] %str_menuopt_4%
echo.
choice /n /c 1234 /m "%choice%: "
if %errorlevel% == 1 (goto loadlang_en)
if %errorlevel% == 2 (goto loadlang_de)
if %errorlevel% == 3 (goto loadlang_vi)
if %errorlevel% == 4 (goto menu)