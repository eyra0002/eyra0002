all: program1 # all används för att skapa en exekverbar fil program1.


program1: main.o a_functions.o b_functions.o c_functions.o d_functions.o
	gcc main.o a_functions.o b_functions.o c_functions.o d_functions.o -o program1


a_functions.o: a_functions.c a_functions.h
	gcc -c a_functions.c

b_functions.o: b_functions.c b_functions.h
	gcc -c b_functions.c

c_functions.o: c_functions.c c_functions.h
	gcc -c c_functions.c

d_functions.o: d_functions.c d_functions.h
	gcc -c d_functions.c



install:
	install program1 ~/.local/bin/



uninstall: # uninstall ta bort det som gjordes av install.
	rm -f ~/.local/bin/program1



clean: # clean används för att kunna ta bort objektfiler och exekverbara filen.
	rm -f *.o program1