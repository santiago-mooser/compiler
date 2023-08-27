# Default is nas
nas2: nas2.c nas2.tab.c nas2.tab.h

all: nas2
	gcc -o nas2 nas2.c nas2.tab.c

nas2.c: nas2.l
	flex -o nas2.c nas2.l

nas2.tab.h nas2.tab.c: nas2.y
	bison -d nas2.y

cleannas:
	$(RM) nas.c nas nas.tab.c nas.tab.h


clean:
	$(RM) nas2.c nas2 nas2.tab.c nas2.tab.h
