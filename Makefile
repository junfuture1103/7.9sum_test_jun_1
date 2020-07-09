all: sum_test_jun


sum_test_jun: sum.o main.o
	g++ -o sum_test_jun sum.o main.o

sum.o : sum.cpp sum.h
	g++ -c -o sum.o sum.cpp

main.o : main.cpp sum.h
	g++ -c -o main.o main.cpp

clean:
	rm -f sum_test_jun *.o
