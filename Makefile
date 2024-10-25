all: compile exe

compile:
	gcc -o main main.c -fopenmp

exe:
	./all.sh

clean:
	rm -f main *.bin*
	rm -f images/*.bin images/*.bin.new rm -f images/*.bin images/*.bin.PNG 
