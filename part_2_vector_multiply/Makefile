.DEFAULT_GOAL := all
BUILD_DIR=build
BINARY_NAME=TbVD
BSC_FLAGS=--aggressive-conditions -vdir $(BUILD_DIR) -bdir $(BUILD_DIR) -simdir $(BUILD_DIR) -o 
TOP_MODULE=mkTb
BSV_FILES_TRACKED=TbVD.bsv
BSC=/home/sankalp/courses/cca/lab1/part_1_combinational/bsc-2023.07-ubuntu-22.04/bin/bsc

.PHONY: clean all $(BINARY_NAME)


$(BINARY_NAME):
	mkdir -p $(BUILD_DIR)
	$(BSC) $(BSC_FLAGS) $@ -sim -g $(TOP_MODULE) -u $@.bsv
	$(BSC) $(BSC_FLAGS) $@ -sim -e $(TOP_MODULE)

clean:
	rm -rf $(BUILD_DIR)
	rm -f $(BINARY_NAME)
	rm -f *.so

all: clean $(BINARY_NAME)

