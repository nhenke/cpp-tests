#------------------------------------------------------------------------------
SOURCE=hello.cpp
PROGRAM=HelloWorld
CC=g++
CFLAGS=-Wall

#------------------------------------------------------------------------------
OBJECTS=$(SOURCE:.cpp=.o)
all: $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	$(CC) $(CFLAGS) $(SOURCE) -o$@

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(PROGRAM) *.o