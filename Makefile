SRC = $(wildcard *.c)

# Goal

# <goal>: <dependencies>
#   ......

all: main

clean:
	@echo "Cleaning up..."
	rm -f main

main: $(SRC)
	@echo "$(SRC)"
	$(CC) $^ -o $@

