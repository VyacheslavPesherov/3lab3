all: hello

hello: main.o factorial.o hello.o
	g++ -Wall main.o factorial.o hello.o hello.cpp

main.o: main.cpp
	g++ -c main.cpp

factorial.o: factorial.cpp
	g++ -c factorial.cpp


hello.o: hello.cpp
	g++ -c hello.cpp

clean:
	rm -rf *.o hello

