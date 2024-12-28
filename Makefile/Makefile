# Modify 
CXX := g++
DEBUG ?= 1
ifeq ($(DEBUG), 1)
	CXXFLAGS := -std=c++17 -Wall -Wextra -Werror -MD -g
else
	CXXFLAGS := -std=c++17 -O3 -DNDEBUG
endif
BUILDDIR := build
SRCDIR := src
BIN := bin
LIBS :=

# Don't modify
OBJS := $(shell find $(SRCDIR) -name '*.cc')
OBJS := $(patsubst %.cc, %.o, $(OBJS))
OBJS := $(patsubst $(SRCDIR)/%, $(BUILDDIR)/%, $(OBJS))

.PHONY: clean

$(BIN): $(BUILDDIR) $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) $(LIBS) -o $@

$(BUILDDIR):
	mkdir -p $(BUILDDIR)

$(OBJS): $(BUILDDIR)/%.o: $(SRCDIR)/%.cc
	$(CXX) -c $(CXXFLAGS) -o $@ $<

-include $(OBJS:.o=.d)

clean:
	rm -rf $(BUILDDIR) $(BIN)
