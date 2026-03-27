
# Compiler and flags
CC := gcc
CFLAGS := -Wall -Wextra

# Debug flags with sanitizers
DEBUG_FLAGS := -fsanitize=address,undefined

# Source and object files
SRC_DIR := ./src
INCLUDE_DIR := ./include
OBJ_DIR := ./obj
BIN_DIR := ./bin
SRC_FILES := $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES := $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_FILES))

# Installation directory
INSTALL_DIR := /usr/local/bin

# Output target
TARGET := a

# Phony targets
.PHONY: all debug release run install uninstall clean new

# Default target
all: debug

# Build rule
$(BIN_DIR)/$(TARGET): $(OBJ_FILES)
	@mkdir -p $(BIN_DIR)
	$(CC) -I $(INCLUDE_DIR) $(CFLAGS) $^ -o $@

# Compile source files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	$(CC) -I $(INCLUDE_DIR) $(CFLAGS) -c $< -o $@

# Debug target
debug: CFLAGS += $(DEBUG_FLAGS)
debug: $(BIN_DIR)/$(TARGET)

# Release target
release: $(BIN_DIR)/$(TARGET)

# Run target
run: $(BIN_DIR)/$(TARGET)
	./$(BIN_DIR)/$(TARGET)

# Install target
install: $(BIN_DIR)/$(TARGET)
	install -m 755 $(BIN_DIR)/$(TARGET) $(INSTALL_DIR)

# Uninstall target
uninstall:
	rm -f $(INSTALL_DIR)/$(TARGET)

# Clean target
clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

# New target to setup project structure
new:
	@mkdir -p $(SRC_DIR) $(INCLUDE_DIR)
	@if [ ! -f $(SRC_DIR)/a.c ]; then \
		printf "\n#include <stdio.h>\n\nint main()\n{\n    printf(\"Hello, World!\");\n\n    return 0;\n}\n" > $(SRC_DIR)/a.c; \
		echo "Created $(SRC_DIR)/a.c with a basic 'Hello, World!' program."; \
	else \
		echo "$(SRC_DIR)/a.c already exists. Skipping creation."; \
	fi
	@echo "Project structure created successfully."
