c6c: lex.yy.c y.tab.c c6c.c
	gcc -o c6c lex.yy.c y.tab.c c6c.c

lex.yy.c: c6.l
	flex c6.l

y.tab.c: c6.y
	bison -y -d c6.y

all: c6c

clean:
	$(RM) c6c lex.yy.c y.tab.c y.tab.h