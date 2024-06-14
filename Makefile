CXX = g++
CXXFLAGS = -Wall -std=c++11

all: sort

sort: main.o selection_sort.o
	$(CXX) $(CXXFLAGS) -o sort main.o selection_sort.o

main.o: main.cpp selection_sort.h
	$(CXX) $(CXXFLAGS) -c main.cpp

selection_sort.o: selection_sort.cpp selection_sort.h
	$(CXX) $(CXXFLAGS) -c selection_sort.cpp

clean:
	rm -f *.o sort
