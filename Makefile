CC=gcc
CC_FLAGS=-Wall -Wextra -std=c99 -g

SRC_DIR=src
HDR_DIR=includes
OBJ_DIR=obj

SRC_FILES=$(wildcard $(SRC_DIR)/*.c)
OBJ_FILES=$(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_FILES))

all: $(OBJ_DIR) $(TBN_DIR) $(OBJ_FILES)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CC_FLAGS) -I$(HDR_DIR)/ -c $^ -o $@

$(OBJ_DIR):
	mkdir -f $@

clean:
	rm -rf $(BIN_FILE) $(OBJ_DIR) $(TBN_DIR)

.PHONY: clean all
