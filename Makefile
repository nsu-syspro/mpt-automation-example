SRC = $(wildcard *.c)

INPUT = $(wildcard tests/*.in)
EXPECTED = $(INPUT:.in=.expected)
TESTS = $(INPUT:.in=.test)

# Goal

# <goal>: <dependencies>
#   ......

all: main

clean:
	@echo "Cleaning up..."
	rm -f main

main: $(SRC)
	$(CC) $^ -o $@

test: $(TESTS)

%.test: %.in %.expected main
	./main <$*.in | diff -u $*.expected -


