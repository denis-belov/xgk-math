DIR=~/reps/denis-belov/xgk-math

SRC=$(DIR)/src

BUILD=$(DIR)/build/gnu-x64

COMP_ARGS= \
	-c \
	-m64 -msse3 -Ofast -funroll-loops \
	-I $(SRC)



$(BUILD)/a/xgk-math.a : \
$(BUILD)/o/const.o \
$(BUILD)/o/vec4.o \
$(BUILD)/o/vec4-32.o \
$(BUILD)/o/vec4-128.o \
$(BUILD)/o/quat.o \
$(BUILD)/o/quat-32.o \
$(BUILD)/o/quat-128.o \
$(BUILD)/o/mat4.o \
$(BUILD)/o/mat4-32.o \
$(BUILD)/o/mat4-128.o \
$(BUILD)/o/object.o \
$(BUILD)/o/util-asm-x64.o \
$(BUILD)/o/util.o
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/a && \
	ld -o $(BUILD)/a/xgk-math.a \
	-r \
	-flto \
	$(BUILD)/o/const.o \
	$(BUILD)/o/vec4.o \
	$(BUILD)/o/vec4-32.o \
	$(BUILD)/o/vec4-128.o \
	$(BUILD)/o/quat.o \
	$(BUILD)/o/quat-32.o \
	$(BUILD)/o/quat-128.o \
	$(BUILD)/o/mat4.o \
	$(BUILD)/o/mat4-32.o \
	$(BUILD)/o/mat4-128.o \
	$(BUILD)/o/object.o \
	$(BUILD)/o/util-asm-x64.o \
	$(BUILD)/o/util.o \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/a/xgk-math.a > $(BUILD)/s/xgk-math.s



$(BUILD)/o/const.o : $(SRC)/data/const.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/const.o \
	$(SRC)/data/const.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/const.o > $(BUILD)/s/const.s



$(BUILD)/o/vec4.o : $(SRC)/data/vec4/vec4.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/vec4.o \
	$(SRC)/data/vec4/vec4.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/vec4.o > $(BUILD)/s/vec4.s



$(BUILD)/o/vec4-32.o : $(SRC)/data/vec4/vec4-32.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/vec4-32.o \
	$(SRC)/data/vec4/vec4-32.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/vec4-32.o > $(BUILD)/s/vec4-32.s



$(BUILD)/o/vec4-128.o : $(SRC)/data/vec4/vec4-128.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/vec4-128.o \
	$(SRC)/data/vec4/vec4-128.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/vec4-128.o > $(BUILD)/s/vec4-128.s



$(BUILD)/o/quat.o : $(SRC)/data/quat/quat.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/quat.o \
	$(SRC)/data/quat/quat.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/quat.o > $(BUILD)/s/quat.s



$(BUILD)/o/quat-32.o : $(SRC)/data/quat/quat-32.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/quat-32.o \
	$(SRC)/data/quat/quat-32.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/quat-32.o > $(BUILD)/s/quat-32.s



$(BUILD)/o/quat-128.o : $(SRC)/data/quat/quat-128.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/quat-128.o \
	$(SRC)/data/quat/quat-128.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/quat-128.o > $(BUILD)/s/quat-128.s



$(BUILD)/o/mat4.o : $(SRC)/data/mat4/mat4.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/mat4.o \
	$(SRC)/data/mat4/mat4.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/mat4.o > $(BUILD)/s/mat4.s



$(BUILD)/o/mat4-32.o : $(SRC)/data/mat4/mat4-32.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/mat4-32.o \
	$(SRC)/data/mat4/mat4-32.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/mat4-32.o > $(BUILD)/s/mat4-32.s



$(BUILD)/o/mat4-128.o : $(SRC)/data/mat4/mat4-128.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/mat4-128.o \
	$(SRC)/data/mat4/mat4-128.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/mat4-128.o > $(BUILD)/s/mat4-128.s



$(BUILD)/o/object.o : \
$(SRC)/data/data.h \
$(SRC)/object/object.h \
$(SRC)/object/object.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/object.o \
	$(SRC)/object/object.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/object.o > $(BUILD)/s/object.s



$(BUILD)/o/util-asm-x64.o : $(SRC)/util/util-asm-x64.s
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	gcc -o $(BUILD)/o/util-asm-x64.o \
	-c \
	$(SRC)/util/util-asm-x64.s



$(BUILD)/o/util.o : \
$(SRC)/data/data.h \
$(SRC)/util/util.cpp
	mkdir -p $(BUILD) && mkdir -p $(BUILD)/o && \
	g++ -o $(BUILD)/o/util.o \
	$(SRC)/util/util.cpp \
	$(COMP_ARGS) \
	&& mkdir -p $(BUILD) && mkdir -p $(BUILD)/s && \
	objdump -d -M intel -S $(BUILD)/o/util.o > $(BUILD)/s/util.s
