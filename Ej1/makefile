# This makefile is inspired from: https://stackoverflow.com/questions/7004702/how-can-i-create-a-makefile-for-c-projects-with-src-obj-and-bin-subdirectories

# project name (generate executable with this name)
TARGET   = example

CC       = g++
CFLAGS   = -Wall -I .

LINKER   = g++
LFLAGS   = -Wall -I . -lm

# change these to proper directories where each file should be
SRCDIR   = src
OBJDIR   = obj
BINDIR   = bin

SOURCES  := $(wildcard *.cpp)
INCLUDES := $(wildcard *.h)
OBJECTS  := $(SOURCES:%.cpp=$(OBJDIR)/%.o)
rm       = rm -f

$(BINDIR)/$(TARGET): $(OBJECTS)
	@mkdir -p bin
	@$(LINKER) $(OBJECTS) $(LFLAGS) -o $@
	@echo "Linking complete!":
	
$(OBJECTS): $(OBJDIR)/%.o : %.cpp
	@mkdir -p obj
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiled "$<" successfully!"

test: $(BINDIR)/$(TARGET)
	
compile: $(OBJECTS)
	@mkdir -p bin
	@$(LINKER) $(OBJECTS) $(LFLAGS) -o $(BINDIR)/$(TARGET)
	@echo "Linking complete!"

clean: 
	@$(rm) $(OBJECTS)
	@echo "Cleanup complete!"
	@$(rm) $(BINDIR)/$(TARGET)
	@echo "Executable removed!"
	@$(rm) -rf $(BINDIR)
	@$(rm) -rf $(OBJDIR)
