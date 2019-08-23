@echo off
mode 80,25 & title Animu-Quizu & setlocal EnableDelayedExpansion
call cl.bat	& rem https://github.com/hXR16F/cl
if %time:~-2,2% leq 100 (set "txtCol=yellow") & if %time:~-2,2% leq 75 (set "txtCol=green") & if %time:~-2,2% leq 50 (set "txtCol=blue") & if %time:~-2,2% leq 25 (set "txtCol=red")

:menu
	cls
	for /l %%i in (1,1,8) do echo.
	echo                              %`i% Witaj w moim quizie^^! %`r%
	echo.
	echo                               Nowa gra       (1) 
	echo                               %fg`white-%Instrukcja%`r%     (2) 
	echo                               %fg`white-%Informacje%`r%     (3) 
	echo                               %fg`red%Wyjdz z gry%`r%    (4) 
	echo.
	set /p "odp=%fg`black-%                             %bg`white% %`r% %fg`white-%Wybor: %fg`white%"
	if /i "%odp%" equ "1" goto :rozpocznij_nowa_gre
	if /i "%odp%" equ "2" goto :instrukcja
	if /i "%odp%" equ "3" goto :info
	if /i "%odp%" equ "4" exit
	goto :menu

:rozpocznij_nowa_gre
	cls
	echo.
	echo   %fg`cyan%Pozw¢l, ¾e najpierw zadam Ci pytanie...%`r%
	set /p "imie=%fg`black-% %fg`white% %fg`cyan-%Twe imi© brzmi? %fg`white%" 
	cls
	for /l %%i in (1,1,8) do echo.
	echo  %`u%%fg`cyan%Witaj %fg`white%%imie%%fg`cyan%^^!%`r%
	echo.
	
	:rozpocznij_nowa_gre_2
		echo   %fg`cyan-%Wybierz poziom trudno˜ci:%`r%
		echo   %fg`white-%Normalny%`r% (1)
		echo   %fg`white-%Trudny%`r%   (2)
		echo.
		set /p "odp=%fg`black-% %`r%%fg`white%Wybor: %fg`white-%
		if /i "%odp%" equ "1" goto :normalny
		if /i "%odp%" equ "2" goto :trudny
		goto :rozpocznij_nowa_gre_2

:normalny
	cls
	echo.
	echo  %fg`white%±!fg`%txtCol%! Istoty ¾ywi¥ce si© ludzkim mi©sem, wygl¥daj¥ce zupeˆnie jak ludzie chodz¥%`r%
	echo  %fg`white%±!fg`%txtCol%-! po ˜wiecie. Tokyo zostaje podzielone na dzielnice, w kt¢rych goˆ©bie%`r%
	echo  %fg`white%±!fg`%txtCol%! "zajmuj¥" si© takimi osobami. Gˆ¢wny bohater na skutek wypadku staje si©%`r%
	echo  %fg`white%±!fg`%txtCol%-! jednym z nich.%`r%
	echo.
	echo    %fg`white%±%fg`white% a) High School of the dead
	echo    %fg`white%±%fg`white-% b) Zombieland Saga
	echo    %fg`white%±%fg`white% c) Tokyo Ghoul
	echo.
	set /p "odp=%fg`black-%     %fg`white%±!fg`%txtCol%! Odpowied«: %fg`white%"
	if /i "%odp%" equ "a" goto :zle
	if /i "%odp%" equ "b" goto :zle
	if /i "%odp%" equ "c" goto :gra2
	goto :help

:gra2
	cls
	echo.
	echo  %fg`white%±!fg`%txtCol%! Mlody chlopak chce zostac Hokage%`r%
	echo.
	echo    %fg`white%±%fg`white% a) Naruto
	echo    %fg`white%±%fg`white-% b) Bleach
	echo    %fg`white%±%fg`white% c) Sword Art Online
	echo.
	set /p "odp=%fg`black-%     %fg`white%±!fg`%txtCol%! Odpowied«: %fg`white%"
	if /i "%odp%" equ "a" goto :gra3
	if /i "%odp%" equ "b" goto :zle
	if /i "%odp%" equ "c" goto :zle
	goto :help

:gra3
	cls
	echo.
	echo  %fg`white%±!fg`%txtCol%! Akcja zaczyna si© od doˆ¥czenia do gildii Lucy Heartfilii.
	echo  %fg`white%±!fg`%txtCol%-! Poznaje ona pozostaˆych czˆonk¢w, mi©dzyinnymi Natsu, jego najlepszego
	echo  %fg`white%±!fg`%txtCol%! przyjaciela Happy, ci¥gle rozbieraj¥cego si© Graya oraz
	echo  %fg`white%±!fg`%txtCol%-! wszechmocn¥ Erza Scarlet. Wraz z nimi przezywa wiele przyg¢d.
	echo.
	echo    %fg`white%±%fg`white% a) Nanatsu no Taizai
	echo    %fg`white%±%fg`white-% b) Fairy Tail
	echo    %fg`white%±%fg`white% c) Soul Eater
	echo.
	set /p "odp=%fg`black-%     %fg`white%±!fg`%txtCol%! Odpowied«: %fg`white%"
	if /i "%odp%" equ "a" goto :zle
	if /i "%odp%" equ "b" goto :gra4
	if /i "%odp%" equ "c" goto :zle
	goto :help

:gra4
	cls
	echo.
	echo  %fg`white%±!fg`%txtCol%! Wracaj¥c ze sklepu, Subaru Natsuki, japoäski licealista, niespodziewanie
	echo  %fg`white%±!fg`%txtCol%-! zostaje przyzwany do innego ˜wiata. Nie do˜†, ¾e znajduje si© w
	echo  %fg`white%±!fg`%txtCol%! najtrudniejszej sytuacji w swoim ¾yciu i nie ma ˜ladu osoby, kt¢ra go
	echo  %fg`white%±!fg`%txtCol%-! przywoˆaˆa, to jeszcze zostaje zaatakowany. Ratuje go tajemnicza
	echo  %fg`white%±!fg`%txtCol%! srebrnowˆosa dziewczyna z kotkiem - duszkiem, postanawia wi©c wsp¢ˆpracowa†
	echo  %fg`white%±!fg`%txtCol%-! z wybawicielk¥, aby spˆacic sw¢j dˆug.
	echo.
	echo    %fg`white%±%fg`white% a) Kono Subarashii Sekai ni Shukufuku wo^^!
	echo    %fg`white%±%fg`white-% b) Re:Zero kara Hajimeru Isekai Seikatsu
	echo    %fg`white%±%fg`white% c) Steins;Gate
	echo.
	set /p "odp=%fg`black-%     %fg`white%±!fg`%txtCol%! Odpowied«: %fg`white%"
	if /i "%odp%" equ "a" goto :zle
	if /i "%odp%" equ "b" goto :gra5
	if /i "%odp%" equ "c" goto :zle
	goto :help

:gra5
	cls
	echo.
	echo  %fg`white%±!fg`%txtCol%! Mˆody chˆopiec o imieniu Ash Ketchum razem z Pikachu, wyrusza w podr¢¾.
	echo  %fg`white%±!fg`%txtCol%-! Jego celem jest zostanie "Mistrzem". Podczas wielu przyg¢d udaje mu si©
	echo  %fg`white%±!fg`%txtCol%! pozna† nowych przyjaci¢ˆ. Caˆa tr¢jka postanawia wsp¢lnie wyruszy† w
	echo  %fg`white%±!fg`%txtCol%-! drog©. W podr¢¾y co jaki˜ czas przeszkadzaj¥ im tzw. "czarne charaktery",
	echo  %fg`white%±!fg`%txtCol%! znane jako Druzyna R.
	echo.
	echo    %fg`white%±%fg`white% a) Digimon Adventure
	echo    %fg`white%±%fg`white-% b) Z/X: Ignition
	echo    %fg`white%±%fg`white% c) Pokemon
	echo.
	set /p "odp=%fg`black-%     %fg`white%±!fg`%txtCol%! Odpowied«: %fg`white%"
	if /i "%odp%" equ "a" goto :zle
	if /i "%odp%" equ "b" goto :zle
	if /i "%odp%" equ "c" goto :gra6
	goto :help

:gra6 
	cls
	echo.
	echo  %fg`white%±!fg`%txtCol%! Tytuˆowa i gˆ¢wna bohaterka tego anime jest Usagi Tsukino, czternastolatka
	echo  %fg`white%±!fg`%txtCol%-! mieszkaj¥ca w Tokio. Pewnego dnia id¥c do szkoˆy ratuje kotk© przed band¥
	echo  %fg`white%±!fg`%txtCol%! chuligan¢w. To wydarzenie zmienia jej ¾ycie. Kot okazuje si© bowiem nie
	echo  %fg`white%±!fg`%txtCol%-! by† zwyczajnym zwierz¥tkiem, nie do˜† ¾e m¢wi, to w dodatku informuje
	echo  %fg`white%±!fg`%txtCol%! Usagi, i¾ jest jedn¥ z wielu czarodziejek - obroäczyä galaktyki.
	echo.
	echo    %fg`white%±%fg`white% a) DokiDoki^^! Precure
	echo    %fg`white%±%fg`white-% b) Mahou Shoujo Madoka Magica
	echo    %fg`white%±%fg`white% c) Bishoujo Senshi Sailor Moon
	echo.
	set /p "odp=%fg`black-%     %fg`white%±!fg`%txtCol%! Odpowied«: %fg`white%"
	if /i "%odp%" equ "a" goto :zle
	if /i "%odp%" equ "b" goto :zle
	if /i "%odp%" equ "c" goto :gra7
	goto :help

:gra7
	cls
	echo.
	echo  %fg`white%±!fg`%txtCol%! Dawno dawno temu, za g¢rami, za lasami mieszkaˆ sobie Son Goku. Naiwny
	echo  %fg`white%±!fg`%txtCol%-! malec o czystym sercu i pot©¾nej sile. Pewnego dnia spotyka on Bulme,
	echo  %fg`white%±!fg`%txtCol%! kt¢ra poszukuje Smoczych Kul. S¥ to magiczne kule, kt¢re, gdy zebra†
	echo  %fg`white%±!fg`%txtCol%-! komplet czyli 7 sztuk, potrafi¥ wywoˆa† Shenlonga - smoczego boga,
	echo  %fg`white%±!fg`%txtCol%! kt¢ry speˆnia jedno ¾yczenie. Son Goku i Bulma wyruszaj¥ na peˆne
	echo  %fg`white%±!fg`%txtCol%-! przyg¢d poszukiwania Smoczych Kul, w lokalizacji kt¢rych pomaga
	echo  %fg`white%±!fg`%txtCol%! Smoczy Radar.
	echo.
	echo    %fg`white%±%fg`white% a) Dragon Ball
	echo    %fg`white%±%fg`white-% b) Hellsing
	echo    %fg`white%±%fg`white% c) Kuroshistuji
	echo.
	set /p "odp=%fg`black-%     %fg`white%±!fg`%txtCol%! Odpowied«: %fg`white%"
	if /i "%odp%" equ "a" goto :gra8
	if /i "%odp%" equ "b" goto :zle
	if /i "%odp%" equ "c" goto :zle
	goto :help

:gra8
	cls
	echo.
	echo  %fg`white%±!fg`%txtCol%! Anime opowiada o r¢wnolegˆym ˜wiecie, w kt¢rym zamiast techniki
	echo  %fg`white%±!fg`%txtCol%-! rozwini©to alchemi©. ½yje tam dw¢jka braci, Edward oraz Alphonse Elric,
	echo  %fg`white%±!fg`%txtCol%! kt¢rych ojcem jest jeden z najlepszych alchemik¢w w caˆym paästwie.
	echo.
	echo    %fg`white%±%fg`white% a) Fullmetal Alchemist: Brotherhood
	echo    %fg`white%±%fg`white-% b) D.Gray-man
	echo    %fg`white%±%fg`white% c) Dororo
	echo.
	set /p "odp=%fg`black-%     %fg`white%±!fg`%txtCol%! Odpowied«: %fg`white%"
	if /i "%odp%" equ "a" goto :gra9
	if /i "%odp%" equ "b" goto :zle
	if /i "%odp%" equ "c" goto :zle
	goto :help

:gra9
	cls
	echo.
	echo  %fg`white%±!fg`%txtCol%! Alternatywny ˜wiat w klimacie ˜redniowiecznego fantasy. Bezbronna ludzko˜†
	echo  %fg`white%±!fg`%txtCol%-! na skraju wygini©cia chowa si© za olbrzymimi, zesˆanymi przez samych bog¢w
	echo  %fg`white%±!fg`%txtCol%! murami. Wrogiem s¥ nie˜miertelne, mi©so¾erne, gigantyczne istoty o ludzkich
	echo  %fg`white%±!fg`%txtCol%-! ksztaˆtach, tytani.
	echo.
	echo    %fg`white%±%fg`white% a) Koutetsujou no Kabaneri
	echo    %fg`white%±%fg`white-% b) Shingeki no Kyojin
	echo    %fg`white%±%fg`white% c) Owari no Seraph
	echo.
	set /p "odp=%fg`black-%     %fg`white%±!fg`%txtCol%! Odpowied«: %fg`white%"
	if /i "%odp%" equ "a" goto :zle
	if /i "%odp%" equ "b" goto :gra10
	if /i "%odp%" equ "c" goto :zle
	goto :help

:gra10
	cls
	echo.
	echo  %fg`white%±!fg`%txtCol%! W pewnym niebezpiecznym, peˆnym strasznych i wielkich kreatur ˜wiecie
	echo  %fg`white%±!fg`%txtCol%-! fantasy, mˆodziutki protagonista Gon marzy o tym, by p¢j˜† w ˜lady
	echo  %fg`white%±!fg`%txtCol%! ojca i zosta† owc¥. Wkr¢tce po wyruszeniu z rodzinnej wioski
	echo  %fg`white%±!fg`%txtCol%-! i rozpocz©ciu przygody, dzi©ki swemu pozytywnemu nastawieniu, Gon 
	echo  %fg`white%±!fg`%txtCol%! zaprzyja«nia si© z mn¢stwem r¢¾nych ludzi. Kilku postanawia si© do niego
	echo  %fg`white%±!fg`%txtCol%-! przyˆ¥czy† i podr¢¾owa† wsp¢lnie. Gˆ¢wnemu bohaterowi nieodˆ¥cznie
	echo  %fg`white%±!fg`%txtCol%! towarzysza: Leorio, Kurapika oraz Killua.
	echo.
	echo    %fg`white%±%fg`white% a) Sword Art Online
	echo    %fg`white%±%fg`white-% b) One Punch Man
	echo    %fg`white%±%fg`white% c) Hunter x Hunter
	echo.
	set /p "odp=%fg`black-%     %fg`white%±!fg`%txtCol%! Odpowied«: %fg`white%"
	if /i "%odp%" equ "a" goto :zle
	if /i "%odp%" equ "b" goto :zle
	if /i "%odp%" equ "c" goto :winner
	goto :help

:winner
	cls
	for /l %%i in (1,1,3) do echo.
	echo                              %fg`white% %`u%%fg`magenta%WYGRALES SLODZIAKU%`r% %fg`white%%`r%
	for /l %%i in (1,1,3) do echo.
	echo                            ÜÜÜÜ                       ÜÜÜÜÜ
	echo                    Û   ÜßÛßßÜ  ßßßÜ     Û         ÜßÛßßÜ    Û
	echo                   Û   ß  Û   Û     ß    Û        ß  Û   Û    Û
	echo                  Û       ßÜÜß           ÛÜÜ         ßÜÜß      Û
	echo                  Û                        ßÛ                  Û
	echo                  Û                         Û                  Û
	echo                  Û                         Û                  Û
	echo                  Û                   ÛÜ   ÜÛ                  Û
	echo                   Û                   ßÛÛÛß                  Û
	echo                   Û               ßÜ          Üß             Û
	echo                    Û                ßÜÜÜÜÜÜÜßß              Û
	pause >nul
	goto :menu

:trudny
cls
echo.
echo Pytanie 1
echo.
echo Glowny bohater to samuraj zyjacy w czasach,
echo w ktorych samuraje zostali pozbawieni honoru i dumy,
echo zakazano im nawet noszenia mieczy.
echo Akcja nie rozgrywa siÂ© jednak w erze Meiji,
echo lecz w jej alternatywnej wersji, w ktorej kultura feudalnej Japoni
echo przeplata siÂ© z technika.
set /p "odp=>> "
if /i %odp% equ Gintama goto bohaterowie1
goto inne

:bohaterowie1
cls
echo Brawo GINTAMA jest prawidlowa odpowiedzia,
echo teraz twym zadanie jest podanie imion 3 glownych bohaterow.
set /p "odp=>> "
if /i %odp% equ Gintoki goto 2bohater
if /i %odp% equ Kagura goto 2bohater
if /i %odp% equ Shinpachi goto 2bohater
goto inne

:2bohater
echo Brawo^^!
echo Czas na kolejnego bohatera
set /p "odp=>> "
if /i %odp% equ Gintoki goto 3bohater
if /i %odp% equ Kagura goto 3bohater
if /i %odp% equ Shinpachi goto 3bohater
goto inne

:3bohater
echo Jeszcze jeden.
set /p "odp=>> "
if /i %odp% equ Gintoki goto gierka2
if /i %odp% equ Kagura goto gierka2
if /i %odp% equ Shinpachi goto gierka2
goto inne

:gierka2
cls
echo.
echo Pytanie 2
echo.
echo W niedalekiej przyszÂˆosci
echo w ludziach obudziÂˆy siÂ© nadnaturalne zdolnosci.
echo Od tej pory u kolejnych pokolen moc
echo pojawiala sie czesciej i byla silniejsza.
echo W tym momencie juÂ¾ ponad 80% populacji posiada swoj wlasny dar.
echo Z reguly ukazuje siÂ© on w okolicach czwartego roku zycia.
echo Glowny gohater jest wyjÂ¥tkiem w tym Â˜wiecie - choÂ† ma juÂ¾ 14 lat,
echo to nie posiada Â¾adnych zdolnoÂ˜ci specjalnych.
echo Co wiecej, lekarze stwierdzili,
echo Â¾e takowe siÂ© w nim nigdy nie przebudza.
echo Nadal jednak marzy on o zostaniu bohaterem.
echo Pewnego dnia zostaje zaatakowany przez potwora
echo i w ostatniej chwili ratuje go jego idol, 
echo najsilniejszy z bohaterow.
set /p "odp=>> "
if /i "%odp%" equ "b"oku no Hero Academia goto bohater
if /i "%odp%" equ "b"NHA goto bohater
goto inne

:bohater 
cls
echo Brawo^^!
echo Boku no Hero Academia jest prawidlowa odpowiedzia
echo Czas na bohaterow
echo Dla ulatwienia podam ich krotki opis
cls
echo Zielonowlosy chlopak
echo Nie posiada wrodzonego daru
set /p "odp=>> "
if /i %odp% equ Midoriya goto ohater2
if /i %odp% equ Izuku goto ohater2
goto inne

:ohater2
echo Posiada dar manipulowania grawitacja
echo Optymistyczna dziewczyna
set /p "odp=>> "
if /i %odp% equ Uraraka goto ohater3
if /i %odp% equ Ochako goto ohater3
goto inne

:ohater3
echo Posiada dar Engine
echo Ma czarne wˆosy i nosi prostok¥tne okulary.
set /p "odp=>> "
if /i %odp% equ Tenya goto ohater4
if /i %odp% equ Iida  goto ohater4
goto inne

:ohater4
echo Posiada dar eksplozji
echo Surowy, brutalny, arogancki i agresywny
set /p "odp=>> "
if /i %odp% equ  Bakugou goto ohater5
if /i %odp% equ Katsuki goto ohater5
goto inne

:ohater5
echo Superbohater nazywany "Symbolem pokoju"
echo Posiada moc One For All
set /p "odp=>> "
if /i %odp% equ Toshinori goto gierka3
if /i "%odp%" equ "a"ll.Might goto gierka3
goto inne

:gierka3
cls
echo.
echo Pytanie3
echo.
echo Bohaterami tej opowiesci jest dwojka niewychodzÂ¥cych z domu graczy.
echo Brat z siostra osiÂ¥gaja w rozgrywkach tak cudowne wyniki,
echo Â¾e zrodziÂˆo to sporo krazacych po internecie legend.
echo Dwojka ta nawet swiat rzeczywisty
echo traktuje jako swego rodzaju kolejnÂ¥ "gÂˆupia gre".
echo Pewnego dnia dostaja tajemniczy e-mail
echo dzieki ktoremu zostaja przeniesieni do innego swiata.
echo Na miejscu wychodzi na jaw, ze zabronil on tam prowadzenia wojen,
echo zas wszystkie problemy rozwiazuje sie poprzez wszelakie gry.
echo a) No Game No Life
echo b) Sword Art Online
echo c) Log Horizon
echo d) Code Geass: Hangyaku no Lelouch
echo e) Re:Zero kara Hajimeru Isekai Seikatsu
echo f) Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka
set /p "odp=>> "
if /i "%odp%" equ "a" goto bohate1
if /i "%odp%" equ "b" goto :zle
if /i "%odp%" equ "c" goto :zle
if /i %odp% equ d goto :zle
if /i %odp% equ e goto :zle
if /i %odp% equ f goto :zle
goto inne

:bohate1
cls
echo Brawo No Game No Life jest prawidlowa odpowiedzia,
echo teraz twym zadanie jest podanie imion 3 glownych bohaterow.
set /p "odp=>> "
if /i %odp% equ Shiro goto bohate2
if /i %odp% equ Sora goto bohate2
if /i %odp% equ Stephanie goto bohate2
if /i %odp% equ Dola goto bohate2
if /i %odp% equ Stefka goto bohate2
goto inne

:bohate2
echo Brawo^^!
echo Czas na kolejnego bohatera
set /p "odp=>> "
if /i %odp% equ Shiro goto bohate3
if /i %odp% equ Sora goto bohate3
if /i %odp% equ Stephanie goto bohate3
if /i %odp% equ Dola goto bohate3
if /i %odp% equ Stefka goto bohate3
goto inne

:bohate3
echo Jeszcze jeden.
set /p "odp=>> "
if /i %odp% equ Shiro goto gierka4
if /i %odp% equ Sora goto gierka4
if /i %odp% equ Stephanie goto gierka4
if /i %odp% equ Dola goto gierka4
if /i %odp% equ Stefka goto gierka4
goto inne

:gierka4
cls
echo.
echo Pytanie 4
echo.
echo W prywatnej akademii Hyakkaou
echo uczyc mogÂ¥ siÂ© jedynie dzieci z najbogatszych rodzin.
echo To instytucja, w ktÂ¢rej obowiazuje dosc specyficzny program nauczania, 
echo bowiem gÂˆÂ¢wnÂ¥ umiejÂ©tnosciÂ¥,
echo ktÂ¢rÂ¥ maja przyswoic sobie studenci szkoly,
echo jest przewidywanie ruchow przeciwnika podczas gier hazardowych.
echo Zwyciezcy zyja tu jak krolowie,
echo natomiast przegrani muszÂ¥ pogodzic sie z rola poddanych.
set /p "odp=>> "
if /i %odp% equ Kakegurui goto boha1
goto inne

:boha1
cls
echo Brawo Kakegurui jest prawidlowa odpowiedzia,
echo teraz twym zadanie jest podanie imion 3 glownych bohaterow.
set /p "odp=>> "
if /i %odp% equ Ryouta goto boha2
if /i %odp% equ Suzui goto boha2
if /i %odp% equ Meari goto boha2
if /i %odp% equ Saotome  goto boha2
if /i %odp% equ Yumeko goto boha2
if /i %odp% equ Jabami goto boha2
goto inne

:boha2
echo Brawo^^!
echo Czas na kolejnego bohatera
set /p "odp=>> "
if /i %odp% equ Ryouta goto boha3
if /i %odp% equ Suzui goto boha3
if /i %odp% equ Meari goto boha3
if /i %odp% equ Saotome  goto boha3
if /i %odp% equ Yumeko goto boha3
if /i %odp% equ Jabami goto boha3
goto inne

:boha3
echo Jeszcze jeden.
set /p "odp=>> "
if /i %odp% equ Ryouta goto gierka5
if /i %odp% equ Suzui goto gierka5
if /i %odp% equ Meari goto gierka5
if /i %odp% equ Saotome  goto gierka5
if /i %odp% equ Yumeko goto gierka5
if /i %odp% equ Jabami goto gierka5
goto inne

:gierka5
cls
echo.
echo Pytanie 5
echo.
echo W pewnym momencie cel glownego bohatera siÂ© spelnia
echo - uzyskuje nadludzka sile,
echo dziÂ©ki ktÂ¢rej moze pokonaÂ† kazdego przeciwnika jednym ciosem.
echo Niestety, po pewnym czasie dopada go znuzenie,
echo gdyz nic juÂ¾ nie jest dla niego wyzwaniem.
echo a) Mob Psycho 100
echo b) Overlord
echo c) Haikyuu^^!^^!
echo d) Shijou Saikyou no Deshi Kenichi
echo e) One Punch Man
echo f) Saiki Kusuo no ? Nan
set /p "odp=>> "
if /i %odp% equ e goto boh1
if /i "%odp%" equ "a" goto :zle
if /i "%odp%" equ "b" goto :zle
if /i "%odp%" equ "c" goto :zle
if /i %odp% equ d goto :zle
if /i %odp% equ f goto :zle
goto inne

:boh1
cls
echo Brawo One Punch Man jest prawidlowa odpowiedzia,
echo teraz twym zadanie jest podanie imion 2 glownych bohaterow.
set /p "odp=>> "
if /i %odp% equ Saitama goto boh2
if /i %odp% equ Genos  goto boh2
goto inne

:boh2
echo Brawo^^!
echo Czas na kolejnego bohatera
set /p "odp=>> "
if /i %odp% equ Saitama goto gierka6
if /i %odp% equ Genos  goto gierka6
goto inne

:gierka6
cls
echo.
echo Pytanie 6
echo.
echo Bog codziennie ubiera siÂ© w ten sam znoszony dres,
echo sypia pod golym niebem na oÂˆtarzu rzadko odwiedzanej swiatyni
echo i za symboliczny datek w wysokosci pieciu yenow 
echo podejmuje siÂ© kazdego zadania. 
echo Od czasu do czasu jednak trafiaja mu siÂ© powazne zlecenia,
echo podczas ktÂ¢rych musi dobyÂ† broni i rozprawiÂ† siÂ©
echo z nekajÂ¥cymi niewinnych ludzi zlymi duchami.
set /p "odp=>> "
if /i %odp% equ Noragami goto bo1
goto inne 

:bo1
cls
echo Brawo Noragami jest prawidlowa odpowiedzia,
echo teraz twym zadanie jest podanie imion 3 glownych bohaterow.
set /p "odp=>> "
if /i %odp% equ Yato goto bo2
if /i %odp% equ Yukine goto bo2
if /i %odp% equ Hiyori goto bo2
if /i %odp% equ Iki goto bo2
goto inne

:bo2
echo Brawo^^!
set /p "odp=>> "
if /i %odp% equ Yato goto bo3
if /i %odp% equ Yukine goto bo3
if /i %odp% equ Hiyori goto bo3
if /i %odp% equ Iki goto bo3
goto inne

:bo3
echo Jeszcze jeden.
set /p "odp=>> "
if /i %odp% equ Yato goto gierka7
if /i %odp% equ Yukine goto gierka7
if /i %odp% equ Hiyori goto gierka7
if /i %odp% equ Iki goto gierka7
goto inne

:gierka7
cls
echo.
echo Pytanie 7
echo.
echo Najwiekszym marzeniem glownego bohatera jest zostac kucharzem
echo i przescignac na tym polu wlasnego ojca.
echo Gdy jednak zamkniecie
echo rodzinnej restauracji pozbawia go najprostszej metody
echo na osiÂ¥gniecie tego celu,
echo ojciec zapisuje go do elitarnej kulinarnej placowki
echo z poziomem wysokim na tyle, ze absolwentami zostaje 
echo zaledwie 10% wszystkich uczniow. 
echo a) Sakurasou no Pet na Kanojo
echo b) Shokugeki no Souma
echo c) Baccano^^!
echo d) Hellsing
echo e) Kuroshitsuji
echo f) Durarara^^!^^!
set /p "odp=>> "
if /i %odp% equ e goto :zle
if /i "%odp%" equ "a" goto :zle
if /i "%odp%" equ "b" goto b1
if /i "%odp%" equ "c" goto :zle
if /i %odp% equ d goto :zle
if /i %odp% equ f goto :zle
goto inne

:b1
cls
echo Brawo Shokugeki no Souma jest prawidlowa odpowiedzia,
echo teraz twym zadanie jest podanie imion 3 glownych bohaterow.
set /p "odp=>> "
if /i %odp% equ Erina goto b2
if /i %odp% equ Nakiri goto b2
if /i %odp% equ Tadokoro goto b2
if /i %odp% equ Megumi goto b2
if /i %odp% equ Souma goto b2
if /i %odp% equ Yukihira goto b2
goto inne

:b2
echo Brawo^^!
set /p "odp=>> "
if /i %odp% equ Erina goto b3
if /i %odp% equ Nakiri goto b3
if /i %odp% equ Tadokoro goto b3
if /i %odp% equ Megumi goto b3
if /i %odp% equ Souma goto b3
if /i %odp% equ Yukihira goto b3
goto inne

:b3
echo Jeszcze jeden.
set /p "odp=>> "
if /i %odp% equ Erina goto gierka8
if /i %odp% equ Nakiri goto gierka8
if /i %odp% equ Tadokoro goto gierka8
if /i %odp% equ Megumi goto gierka8
if /i %odp% equ Souma goto gierka8
if /i %odp% equ Yukihira goto gierka8
goto inne

:gierka8
cls
echo.
echo Pytanie 8
echo.
echo Akcja toczy siÂ© w Anglii w czasach wiktorianskich.
echo W Londynskiej posiadlosci pracuje
echo dosc niezwykly lokaj.
echo Jego panem, a zarazem glowa
echo i ostatnim potomkiem znakomitego rodu 
echo oraz wÂˆascicielem popularnej firmy zabawkarskiej i cukierniczej,
echo echojest dwunastoletni chlopak.
echo Po stracie rodzicÂ¢w zawiera pakt z demonem,
echo na mocy ktorego jego dusza zostaje sprzedana
echo w zamian za sÂˆuzbe demona u jego boku 
echo oraz pomoc w zemscie na sprawcach smierci jego rodzicow.
set /p "odp=>> "
if /i %odp% equ Kuroshitsuji goto charakters1
goto inne

:charakters1
cls
echo Brawo Kuroshitsuji jest prawidlowa odpowiedzia,
echo teraz twym zadanie jest podanie imion 2 glownych bohaterow.
set /p "odp=>> "
if /i %odp% equ Sebastian goto charakters2
if /i %odp% equ Michaelis  goto charakters2
if /i "%odp%" equ "c"iel goto charakters2
if /i %odp% equ Phantomhive goto charakters2
goto inne

:charakters2
echo Brawo^^!
echo Czas na kolejnego bohatera
set /p "odp=>> "
if /i %odp% equ Sebastian goto gierka9
if /i %odp% equ Michaelis  goto gierka9
if /i "%odp%" equ "c"iel goto gierka9
if /i %odp% equ Phantomhive goto gierka9
goto inne

:gierka9
cls
echo.
echo Pytanie 9
echo.
echo Glowny bohater jest mÂˆodym, utalentowanym,
echo grajacym na gitarze wokalista.
echo Marzy o sÂˆawie gwiazdy popu.
echo To bardzo wrazliwy i mily chÂˆopiec, jednoczesnie bedacy...
echo liderem metalowej kapeli Detroit Metal City.
echo Na scenie przyjmuje postac swego alter ego.
echo a) Zombieland Saga
echo b) Nana
echo c) Detroit Metal City
echo d) Fuuka
echo e) Macross Delta
echo f) K-On^^!^^!
set /p "odp=>> "
if /i %odp% equ e goto :zle
if /i "%odp%" equ "a" goto :zle
if /i "%odp%" equ "b" goto :zle
if /i "%odp%" equ "c" goto 1charakter
if /i %odp% equ d goto :zle
if /i %odp% equ f goto :zle
goto inne


:1charakter
cls
echo Brawo Detroit Metal City jest prawidlowa odpowiedzia,
echo teraz twym zadanie jest podanie imion 4 czlonkow zwspolu.
set /p "odp=>> "
if /i %odp% equ Negishi goto 2charakter
if /i %odp% equ Souichi  goto 2charakter
if /i %odp% equ Krauser-tan goto 2charakter
if /i %odp% equ Makoto goto 2charakter
if /i %odp% equ Hokazono goto 2charakter
if /i %odp% equ Wada goto 2charakter
if /i %odp% equ Masayuki goto 2charakter
goto inne

:2charakter
echo Brawo^^!
echo Czas na kolejnego bohatera
set /p "odp=>> "
if /i %odp% equ Negishi goto 3charakter
if /i %odp% equ Souichi  goto 3charakter
if /i %odp% equ Krauser-tan goto 3charakter
if /i %odp% equ Makoto goto 3charakter
if /i %odp% equ Hokazono goto 3charakter
if /i %odp% equ Wada goto 3charakter
if /i %odp% equ Masayuki goto 3charakter
goto inne

:3charakter
echo Brawo^^!
set /p "odp=>> "
if /i %odp% equ Negishi goto 4charakter
if /i %odp% equ Souichi  goto 4charakter
if /i %odp% equ Krauser-tan goto 4charakter
if /i %odp% equ Makoto goto 4charakter
if /i %odp% equ Hokazono goto 4charakter
if /i %odp% equ Wada goto 4charakter
if /i %odp% equ Masayuki goto 4charakter
goto inne

:4charakter
echo Jeszcze jeden.
set /p "odp=>> "
if /i %odp% equ Negishi goto gierka10
if /i %odp% equ Souichi  goto gierka10
if /i %odp% equ Krauser-tan goto gierka10
if /i %odp% equ Makoto goto gierka10
if /i %odp% equ Hokazono goto gierka10
if /i %odp% equ Wada goto gierka10
if /i %odp% equ Masayuki goto gierka10
goto inne

:gierka10
cls
echo.
echo Pytanie 10
echo. 
echo Ogromny system jaskin, zwany Otchlania,
echo jest jedynym niezbadanym miejscem na swiecie.
echo Nikt nie zna jej aktualnej glebokoÂ˜ci,
echo gdyz zejsciu w glab otchlani towarzyszy klatwa,
echo ktora utrudnia powrocenie na powierzchnie.
echo Orth to miasto polozone na skraju Otchlani, 
echo mieszka tam mala sierota,
echo ktora marzy o tym, aby zostaÂ† wielkim odkrywca,
echo jak jej matka i rozwiazac wielka tajemnice otchlani.
echo Pewnego dnia podczas wykopalisk na gornych warstwach otchlani
echo Riko spotyka malego chlopca,
echo ktory moze okazac sie najwiekszym odkryciem Riko
echo i kluczem do rozwiazania tajemnicy otchlani,
echo gdyz tajemniczy chlopiec okazuje sie byÂ† robotem...
echo a) Wolf's Rain
echo b) Shoujo Shuumatsu Ryokou
echo c) Mahou Shoujo Ikusei Keikaku
echo d) Zankyo no Terror 
echo e) Made in Abyss
echo f) Nanatsu no Taizai
set /p "odp=>> "
if /i %odp% equ e goto 1charakt
if /i "%odp%" equ "a" goto :zle
if /i "%odp%" equ "b" goto :zle
if /i "%odp%" equ "c" goto :zle
if /i %odp% equ d goto :zle
if /i %odp% equ f goto :zle
goto inne

:1charakt
cls
echo Brawo Made in Abyss jest prawidlowa odpowiedzia,
echo teraz twym zadanie jest podanie 3 imion glownych postaci.
set /p "odp=>> "
if /i %odp% equ Nanachi goto 2charakt
if /i %odp% equ Regu  goto 2charakt
if /i %odp% equ Riko goto 2charakt
goto inne

:2charakt
echo Brawo^^!
set /p "odp=>> "
if /i %odp% equ Nanachi goto 3charakt
if /i %odp% equ Regu  goto 3charakt
if /i %odp% equ Riko goto 3charakt
goto inne

:3charakt
echo Jeszcze jeden.
set /p "odp=>> "
if /i %odp% equ Nanachi goto jej
if /i %odp% equ Regu  goto jej
if /i %odp% equ Riko goto jej
goto inne

:jej
cls
echo -------------------------------------------------------------------
echo --------------------------%fg`cyan%WYGRALES SLODZIAKU%`r%-----------------------
echo ---------------------------%fg`cyan%MOZESZ BYC DUMNY%`r%------------------------
echo -------------------------------------------------------------------
echo.
echo.
echo.
echo                       ÜÜÜÜ                       ÜÜÜÜÜ
echo              Û    ÜßÛßßÜ  ßßßÜ     Û         ÜßÛßßÜ    Û
echo             Û    ß  Û   Û     ß    Û        ß  Û   Û    Û
echo            Û        ßÜÜß           ÛÜÜ         ßÜÜß      Û
echo            Û                         ßÛ                  Û
echo            Û                          Û                  Û
echo            Û                          Û                  Û
echo            Û                    ÛÜ   ÜÛ                  Û
echo             Û                    ßÛÛÛß                  Û
echo             Û                ßÜ          Üß             Û
echo              Û                 ßÜÜÜÜÜÜÜßß              Û
pause >nul
cls
goto :menu

:info
	cls
	echo.
	echo   %fg`cyan%Gra stworzona przez nooba programowania.%`r%
	echo   %fg`cyan-%Adrian nie bij pliska.%`r%
	echo.
	echo   Aby kontynuowa†, naci˜nij dowolny klawisz...
	pause >nul
	goto :menu

:instrukcja
	cls
	echo. 
	echo                                     %`u%%fg`yellow%Normalny%`r%
	echo.
	echo  %fg`white-%Na ekranie pojawi sie krotki opis najbardziej kultowych serii. Twym zadaniem
	echo  jest podac nazwe serii.%`r%
	echo.
	echo                                      %`u%%fg`yellow-%Trudny%`r%
	echo.
	echo  %fg`white-%Na ekranie pojawi sie krotki opis z mniej znanych serii. Dodatkowo pojawi sie
	echo  opis glownych bohaterow. Twym zadaniem jest podac nazwe serii, imie oraz
	echo  nazwisko glownych bohaterow.%`r%
	echo.
	rem echo ---------------------------trudny---------------------------------
	rem echo.
	rem echo Na ekranie pojawi sie opis serii, z ktorymi nowicjusze nie dadza
	rem echo rady.
	rem echo Dodatkowo musisz podac imie oraz nazwisko glownych bohaterow.
	rem echo.
	rem echo Pamietaj musisz wpisac a,b badz c^^!
	echo.
	echo  %`u%%fg`white%Powodzenia^^!%`r%
	pause >nul
	goto :menu

:help
	cls
	echo.
	echo   %fg`cyan%Chyba co˜ Ci si© myli.%`r%
	echo   %fg`cyan-%Masz odpowiada† na pytania, a nie wymy˜la† jakie˜ dziwne rzeczy^^!%`r%
	echo.
	echo   %fg`white%W ci¥gu 10-ciu sekund zostaniesz przeniesiony/a do menu...%`r%
	timeout /t 10 >nul
	goto :menu

:inne
	cls
	echo.
	echo   %fg`cyan%Niestety, jest to zˆa odpowied«.%`r%
	echo   %fg`cyan-%Sprawd«, czy wszystko dobrze napisaˆe˜/a˜.%`r%
	echo.
	echo   %fg`white%W ci¥gu 10-ciu sekund zostaniesz przeniesiony/a do menu...%`r%
	timeout /t 10 >nul
	goto :menu
	
:zle
	cls
	echo.
	echo   %fg`cyan%Niestety, jest to zˆa odpowied«%`r%
	echo.
	echo   %fg`white%W ci¥gu 5-ciu sekund zostaniesz przeniesiony/a do menu...%`r%
	timeout /t 5 >nul
	goto :menu