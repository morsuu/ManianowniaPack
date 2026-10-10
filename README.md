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

Przed startem serwera (w folderze serwera):

```
java -jar packwiz-installer-bootstrap.jar -g -s server https://raw.githubusercontent.com/morsuu/ManianowniaPack/main/pack.toml
```

Pobierze tylko mody potrzebne serwerowi i config z questami.
