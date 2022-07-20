CC="gcc"
#CC = i586-poky-linux-gcc -m32 -march=i586 --sysroot=/opt/poky/2.5/sysroots/i586-poky-linux

install: main.o test.o
	${CC} main.o test.o -o lancement
  

main.o: main.c test.h
	${CC} -I . -c main.c

  
module.o: test.c
	test.h ${CC} -I . -c test.c
  

clean:
	rm -rf *.o
	rm lancement
