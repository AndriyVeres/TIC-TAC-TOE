main: main.o ./MainMenu/MainMenu.o ./readKey/readKey.o
	g++ main.o ./MainMenu/MainMenu.o ./readKey/readKey.o -lncurses -o main
	./main
main.o: main.cpp
	g++ -c main.cpp
./MainMenu/MainMenu.o: ./MainMenu/MainMenu.cpp
	g++ -c ./MainMenuMainMenu.cpp -o ./MainMenu/MainMenu.o
./readKey/readKey.o: ./readKey/readKey.c
	g++ -c ./readKey/readKey.c -o ./readKey/readKey.o
