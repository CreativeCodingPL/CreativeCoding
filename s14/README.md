# Sezon 14 - OSC i Wekinator

## Processing

- Biblioteka oscP5
  - do zainstalownia via Add Library
  - strona biblioteki http://www.sojamo.de/libraries/oscP5/
  - bibilotek pozwala na wysylanie i odbieranie komunikatów OSC zarówno miedzy kilkom niezależnymi sketchami Processing, jak rówmież porozumiewać się z innymi aplikacjami wspierającymi ten protokół - np. Ableton Live, Resolume, patche Pure Data. max/msp i wiele innych
  
- protokół OSC
	- http://opensoundcontrol.org/introduction-osc
	- OSC = Open Sound Control, początkowo OSC miało być następcą MIDI, ale szybko znalazło zncznie szersze zstosowanie jako uniwersalny "język" pozwalajacy na wymianę danchy miedzy różnymi aplikacjami w czasie rzeczywistym zarówno na danynm komputerze jak i poprzez sieć lokalną czy nawet internet
    - opary o protokół UDP ("lżejsza" i szybsza wersja TCP/IP ale nie gwarantuje że dane dotrą do odbiorcy)- https://pl.wikipedia.org/wiki/User_Datagram_Protocol
    - widomość osc musi mieć swoją nazwę tzw. "address pattern"
nazwa musi rozpoczynać się od "/", reszta jest dowolna, czasem przyjmuje forme podobna do adresu url np. `/myApp/mouse/position`
	- przy wysyłaniu wiadomosci musimy podać adres na jaki wysyłamy, skłądajacy się z adresu IP urządzenia (jeśli działamy w obrebie naszego komputera to adres ten to `127.0.0.1` czyli tzw. "localhost" (zwykle można wpisać po prostu "localhost" zamiast w/w adresu IP)
    - druga skałdową adresu jest tzw. "port" - np. 12000, generalnie opowinna to być dość wysoka liczna by nie było konfliktu z portami zajętymi przez inne aplikacje dzialajace na komputerze, wiecej o portach tu: https://www.utilizewindows.com/list-of-common-network-port-numbers/
    - istotne by aplikacja która wysyla osc nie zajmowałą tego samego portu ja jakim nasłcuchuje aplikacja odbierajaca wiadomości - vide przykłady oscSend, oscReceive
    - wiadmośco może zawierać praktycznie dowolnie długą sekwencje zmiennych typu `float`, `int`, `String` - inne typy też potencjalnie mogą być wspierane ale bezpieczniej trzymać się tych trzech
    
- WEKINATOR
	- http://www.wekinator.org/
    - program który za pomoca OSC pozawala wytrenować proste sieci neuronowe na p[odstawie danych pochodzących z jednej aplikacji i na inteligentą ich transformację na potrzeby drugiej aplikacji - np. ruch myszki zamieniamy na bardzoiej złożoiy dżwięk, głos na ruch obiektu, obraz z kamery na odpalanie adekwatnych interakcji...
    - wspierane typy treningu sieci to: 
    	- continous - kiedy kmamy jakieś plynnie zmienajace sie wartosci jak np. pozycja myszy i chcemy by wplywaly na cos w drugiej aplikacji w mniej oczywisty sposób
        - classifiers - gdy chcemy jakiś bardzie jzłożopny zestaw danych np. bitmapę zakalsyfikować do którejś z konkretnych kategorii - np. czy na obrazku jest kot czy pies, lub czy zasłaniamy kamerę czy nie...
        - dynamic time warping - gdy chcemy reagować na zmieniajacą się w czasie sekwencję danych, np. nasz głos, czy gest wykoanany na tablecie 
        
    - pamietajmy by przy tpwrzeniu projektu wekinatora (pierwsze okienko po odpalieniu programu) wybrac adekwatny typ treningu oraz podac wlasciwa ilosć inputów i otputów 
    	- w przypadku przykładu `SimpleSynth` wybieramy typ Continous, oraz mamy 2 inputy (pozycja kwadratu w okienku) i 3 outputy - trzy parametry syntezy FM dźwięku
        - w przypadku `SamplePlayer` wybieramy typ Classifiers, oraz definiujemy 100 inputów (100 pikseli z kamery, de facto tylko ich jasność) oraz jeden output ale z 4 klasami - w zaleznosci od danego obrazu z kamery odpalamy jeden z 4 sampli
        - w przypadku `DTW` (dynamic time warping) wybieramy Dynamic Time Warping, 13 inputów (13 czestotliwosci), output moze być w tym wypadku tylko 1, a ilość klas to 3 - lewo, prawo, góra... 
	- jeśli bedziecie pisać własne programy do inputu / outputu korzystajace z Wekinatora, pamietajcie by odpowiednio skonfigurować nr. portów tak by Wekinator dostawał osc z programu wysylajacego ( domyślnie port 6448 ) i wysylał przetworzone dane do odbierajacego ( domyślnie port 12000 )
    


## Materiały pomocnicze

- [WEKINATOR](http://www.wekinator.org/)
- [Kanał YT Wekinatora z tutorialami](https://www.youtube.com/channel/UCot7vfr_9hTy2qp3ksTxGmg)
- [OSC](https://en.wikipedia.org/wiki/Open_Sound_Control)

## Inspiracje

- [Przykłady wykorzystania WEKINATORA ](http://www.wekinator.org/example-projects/)
