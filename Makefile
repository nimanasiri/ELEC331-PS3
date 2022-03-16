all: prog2_ab prog2_gbn

prog2_ab: prog2_ab.c
	gcc -o prog2_ab prog2_ab.c

prog2_gbn: prog2_gbn.c
	gcc -o prog2_gbn prog2_gbn.c

test:
	printf '10\n0.1\n0.3\n1000\n2\n' | ./prog2_ab > prog2_ab.txt
	printf '41\n0.2\n0.2\n10\n2\n' | ./prog2_gbn > prog2_gbn.txt

clean:
	rm -rf prog2_ab prog2_gbn