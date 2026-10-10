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

Serwer **aktualizuje się sam**: przy każdym starcie mod *Manianownia Aktualizator* pobiera z GitHuba nowe mody, configi i datapacki.
Jeśli doszły nowe mody, serwer wyłączy się z komunikatem „URUCHOM GO PONOWNIE” - wtedy kliknij **Start** jeszcze raz. Tyle.

### Pierwsza instalacja (Craftserve, raz)
1. Panel → **Ustawienia → Silnik → Fabric**, wersja **1.20.1**.
2. Zatrzymaj serwer. W zakładce **Pliki** usuń foldery `mods`, `config` i `moonlight-global-datapacks` (świat zostaje).
3. Pobierz [`ManianowniaPack-serwer.zip`](https://github.com/morsuu/ManianowniaPack/releases/download/serwer/ManianowniaPack-serwer.zip),
   wgraj go w **Pliki** (główny folder), kliknij na nim prawym → **Rozpakuj**, potem usuń ZIP.
4. Uruchom serwer. Od teraz aktualizacja = restart serwera (nie wgrywaj już ZIP-ów ręcznie).
5. `server.properties`: ważne `allow-flight=true`, `max-tick-time=-1`, `white-list=true` (wzór w [`instalacja/serwer`](instalacja/serwer)); graczy dodaje się `/whitelist add nick`.
6. Świat z góry: `/chunky radius 2000`, potem `/chunky start`.

### Most z Discordem
Czat z gry trafia na kanał Discorda i odwrotnie (wejścia/wyjścia, śmierci, osiągnięcia, `/list` na Discordzie).
1. [Discord Developer Portal](https://discord.com/developers/applications) → Twoja aplikacja → **Bot**: włącz **Server Members Intent** i **Message Content Intent**, zapisz.
2. Zaproś bota na swój serwer Discord (link zaproszenia ze strony OAuth2 → URL Generator: `bot` + `applications.commands`,
   uprawnienia: View Channels, Send Messages, Embed Links, Read Message History, Manage Webhooks).
3. Discord → Ustawienia → Zaawansowane → **Tryb dewelopera**; prawy klik na kanał → **Kopiuj ID kanału**.
4. Craftserve → Pliki → `config/Discord-Integration.toml`: wpisz token w `botToken` i ID kanału w `botChannel`, zapisz, zrestartuj serwer.
   Aktualizacje paczki tego pliku nie nadpisują. **Tokenu nie wrzucaj nigdzie indziej** (jeśli wycieknie: Developer Portal → Bot → Reset Token).

### Hosting z własną komendą startową (inny niż Craftserve)
Pliki w [`instalacja/serwer`](instalacja/serwer): `start.sh` / `start.bat` same pobierają paczkę przez `packwiz-installer-bootstrap.jar`
(Fabric 1.20.1, loader 0.19.5, Java 17, RAM 6-8 GB).

Na serwerze dodatkowo działają (tylko po stronie serwera, gracze nic nie instalują):
- **Textile Backup**: kopia świata co godzinę, gdy ktoś gra, i przy wyłączaniu serwera; trzyma 8 ostatnich w folderze `backup/`. Ręcznie: `/backup start`.
- **Discord Integration**: most czatu z Discordem (wyżej).
- **Styled Chat + Styled Player List + Manianownia Tytuły**: klasa i poziom przed nickiem w czacie i TAB-ie, np. `[Mag 7] morsu`; nad głową poziom klasy.
- **Server-Side Horror**: po kilku dniach gry świat zaczyna być... dziwny. Nic nie trzeba instalować.
- **spark**: diagnoza lagów, `/spark profiler start`, po minucie `/spark profiler stop` daje link z raportem.
