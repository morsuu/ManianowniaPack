# ManianowniaPack

Modpack Fabric 1.20.1 dla Manianowni: Create, klasy RPG, przygoda, budowanie i questy.
Paczka **aktualizuje się sama** przy każdym uruchomieniu gry.

## Instalacja (raz)

1. Zainstaluj [Prism Launcher](https://prismlauncher.org/) i zaloguj się kontem Microsoft.
2. Pobierz [`instalacja/ManianowniaPack-Prism.zip`](instalacja/ManianowniaPack-Prism.zip?raw=true).
3. W Prism kliknij **Dodaj instancję → Importuj** i wskaż pobrany plik zip.
4. Uruchom instancję. Za pierwszym razem pobierze się ok. 150 MB modów, więc chwilę to potrwa.

Od teraz przy każdym starcie gra sama sprawdza, czy jest nowa wersja paczki, i dociąga zmiany.

## W grze

- **U**: księga questów (FTB Quests). Jeśli klawisz nie działa, przypisz „Open Quests” w Opcje → Sterowanie albo kliknij ikonkę w lewym górnym rogu ekwipunku.
- Zacznij od rozdziału **Witaj w Manianowni**: opisuje mody, skróty i cel gry.
- **K**: drzewka umiejętności (Pufferfish's Skills). Wspólne „Przetrwanie” + drzewko twojej klasy (odblokujesz je questem pod wybraną klasą).
- Skróty w nowych instalacjach: **J** punkty na mapie (Xaero), **N** plecak na plecach, **R** przewrót. W starszych instalacjach Xaero ma punkty pod **U**, tak jak księga questów: zmień to w Opcje → Sterowanie.

## Ręcznie (bez zipa)

W istniejącej instancji Fabric 1.20.1 (loader 0.19.5):
1. Wrzuć [`packwiz-installer-bootstrap.jar`](https://github.com/packwiz/packwiz-installer-bootstrap/releases/download/v0.0.3/packwiz-installer-bootstrap.jar) do folderu `.minecraft` instancji.
2. Edytuj instancję → Ustawienia → Własne komendy → Komenda przed uruchomieniem:

```
"$INST_JAVA" -jar packwiz-installer-bootstrap.jar https://raw.githubusercontent.com/morsuu/ManianowniaPack/main/pack.toml
```

## Serwer

Pliki pomocnicze są w [`instalacja/serwer`](instalacja/serwer): `packwiz-installer-bootstrap.jar`, `start.sh` / `start.bat`, wzór `server.properties` i `server-icon.png`.

1. Serwer **Fabric 1.20.1**, loader **0.19.5**, **Java 17**, RAM **6–8 GB** (minimum 6 GB).
   Jeśli panel hostingu nie ma Fabrica do wyboru, pobierz serwer z fabricmc.net (Download → Server, Minecraft 1.20.1, loader 0.19.5)
   i zmień nazwę pliku na `fabric-server-launch.jar` (tak go uruchamia `start.sh`). Jeśli panel ma Fabrica, użyj jego pliku i popraw nazwę w `start.sh`.
2. Wrzuć do folderu serwera `packwiz-installer-bootstrap.jar` i `start.sh` (albo `start.bat`).
3. Komenda startowa: `sh start.sh`. Przy każdym starcie serwer sam dociągnie aktualizację paczki (mody i configi).
   Jeśli panel nie pozwala na własną komendę, raz uruchom instalator na swoim komputerze w pustym folderze:
   `java -jar packwiz-installer-bootstrap.jar -g -s server https://raw.githubusercontent.com/morsuu/ManianowniaPack/main/pack.toml`
   i wyślij foldery `mods` i `config` na serwer (przy każdej aktualizacji paczki powtórz).
4. Przepisz ustawienia z wzoru `server.properties` (ważne: `allow-flight=true`, `max-tick-time=-1`, `white-list=true`) i dodaj graczy: `/whitelist add nick`.
5. Wygeneruj świat z góry: `/chunky radius 2000`, potem `/chunky start`.

Na serwerze dodatkowo działają (tylko po stronie serwera, gracze nic nie instalują):
- **Textile Backup**: kopia świata co godzinę, gdy ktoś gra, i przy wyłączaniu serwera; trzyma 8 ostatnich w folderze `backup/`. Ręcznie: `/backup start`.
- **spark**: diagnoza lagów, `/spark profiler start`, po minucie `/spark profiler stop` daje link z raportem.
