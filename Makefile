all : packet_print


packet_print: main.o packet.o
	g++ -o packet_print main.o packet.o


main.o: main.cpp packet.h
	g++ -c -o main.o main.cpp


packet.o: packet.h packet.cpp
	g++ -c -o packet.o packet.cpp


clean:
	rm -f *.o packet_print



