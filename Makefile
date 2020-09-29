APPNAME:=test.exe

LDFLAGS:=-lglfw3 -lopengl32 -lglu32 -lgdi32
CFLAGS:= -Wall -O3
CFLAGS+= -std=c11 

SRC:=$(wildcard src/*.c)
OBJ:=$(SRC:src/%.c=obj/%.o)


CC=gcc

$(APPNAME): $(OBJ)
	$(CC) $(OBJ) -o $(APPNAME) $(LDFLAGS)

$(OBJ): obj/%.o : src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: debug release
debug: CFLAGS+= -g $(INSTR)
debug: LDFLAGS+= $(INSTR)

release: CFLAGS+= -O3

debug release: clean $(APPNAME)

.PHONY:	clean
clean:
	del obj\* /Q
	del $(APPNAME) /Q

style: $(SRC) $(INC)
	astyle -A10 -s4 -S -p -xg -j -z2 -n src/* include/*