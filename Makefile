SOURCES := $(wildcard *.cpp)

CXXFLAGS := -std=c++11 -O0 -ggdb

PROGRAM := demo 
#demo is the name of the executable

$(PROGRAM) : $(SOURCES)
	$(CXX) $(CXXFLAGS) $^ -o $@

.PHONY : clean

clean :
	-rm -rf $(PROGRAM)
#.PHONY not a real target, action is to clean
