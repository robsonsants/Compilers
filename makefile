all: exemplo_flex.l
	flex -i exemplo_flex.l
	gcc lex.yy.c -o MeuCompilador
	./MeuCompilador