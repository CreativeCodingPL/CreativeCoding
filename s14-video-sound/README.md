# Sezon 14 - Wideo i dźwięk

## Processing
- bibliotka processing.video.
- Capture - obiekty tej klasy pozwalają przechwytywać obraz z kamery. Przećwiczyliśmy polecenia: list(), start(), read(), available().
- Movie - obiekty tej klasy pozwalają odtwarzać wideo z plików. Przećwiczyliśmy polecenia: read(), play(), jump(), pause(), available(), duration()
- set() jako szybsza alternatywa dla image()
- biblioteka processing.sound.
- SinOsc - obiekty tej klasy pozwalają generować falę dźwiękową o przebiegu sinusoidalnym. Przećwiczyliśmy polecenia: play(), amp(), freq(), pan()
- AudioIn - obiekty tej klasy pozwalają pobierać dźwięk z wejścia audio lub mikrofonu. Przećwiczyliśmy polecenia: start() 
- Amplitude - obiekty tej klasy pozwalają analizować natężenie dźwięku. Przećwiczyliśmy polecenia: input(), analyze()
- SoundFile - obiekty tej klasy pozwalają odtwarzać pliki dźwiękowe (aiff, mp3). Przećwiczyliśmy polecenia: loop(), play()

## Zadanie domowe
Generowanie dźwięków za pomocą obrazu z kamery. Parametry obrazu powodują powstawanie dźwięków, np. może decydować nasycenie, barwa, jasność, cokolwiek sobie wymyślicie. Dźwięki generowane za pomocą SinOsc, a obraz przechwytywany za pomocą Capture.

## Materiały pomocnicze
- [Sound library](https://processing.org/reference/libraries/sound/index.html)
- [Video library (również capture)](https://processing.org/reference/libraries/video/index.html)
- [Sound tutorial](https://processing.org/tutorials/sound/)
- [Video tutorial](https://processing.org/tutorials/video/)

## Inspiracje
- [Paper Note ~ Tangible Paper Waveform](https://vimeo.com/37554411)