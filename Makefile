## Compiler stuff
CC	 	 =	gcc
CPPFLAGS 	 =	-g3
LDFLAGS	 	 =
LDLIBS		 = 	-lstdc++
SILENT   	 = 	@
ECHO 	 	 =	echo
OBJ_HELLO_WORLD	 =	hello_world.o
MODULES		 = 	hello_world
INCLUDE		 = 	

all: $(MODULES)

#disable built-in standard-rule
%: %.cpp

hello_word: $(OBJ_HELLO_WORLD)
	$(SILENT) $(ECHO) "--- Creating $@ ---"
	$(SILENT) $(CC) $^ -o $@ $(LDFLAGS)

%.o: src/%.cpp
	$(SILENT) echo "---Compiling $< ---"
	$(SILENT) $(CC) -c $< $(CPPFLAGS) $(INCLUDE) 

clean: 
	$(SILENT)rm -f $(MODULES)
	$(SILENT)rm -f *.o
