CC := clang
CFLAGS := -std=c2x -Wall -Werror -Wextra -pedantic -pthread

OBJ := main.o
TARGET := dcc

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $^ $@ 


%.o:%.cpp
	$(CC) -c $^ $@