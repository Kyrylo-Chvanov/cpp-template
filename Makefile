CXX := g++
CXXFLAGS := -Wall -Wextra -Werror -MD
BUILD := ./build
BIN := ./bin
LIBS :=
OBJS :=
OBJS := $(addprefix $(BUILD)/, $(OBJS))

.PHONY: clean

$(BIN): $(BUILD) $(OBJS)
	$(CXX) $(OBJS) -static $(LIBS) -o $@

$(BUILD):
	mkdir -p $(BUILD)

$(OBJS): $(BUILD)/%.o: ./src/%.cc
	$(CXX) -c $(CXXFLAGS) -o $@ $<

-include $(OBJS:.o=.d)

clean:
	rm -rf $(BUILD) $(BIN)
