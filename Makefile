CFLAGS=-std=c11 -g -static

ccc: ccc.c

sh:
	docker-compose run ubuntu sh

test: ccc
	./test.sh

clean:
	rm -f ccc *.o *~ tmp*

.PHONY: test clean sh
