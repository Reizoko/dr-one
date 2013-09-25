CC=g++
CFLAGS=-W -Wall -Wextra -O0 -g -ggdb -Iincludes
LDFLAGS=-Iincludes
EXEC=dr-one
SRC= $(wildcard src/*.cpp)
OBJ= $(SRC:.cpp=.o)

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CC) -o $@ -c $< $(CFLAGS)
