NAME=xgk-math

BUILD_TYPE=gnu-x64

ROOT=~

DIR=$(ROOT)/reps/denis-belov/$(NAME)

SRC=$(DIR)/src

BUILD=$(DIR)/build/$(BUILD_TYPE)

ASSEMBLER=gcc

ASSEMBLER_ARG=-c -o # trailing space

COMPILER=g++

COMPILER_ARG=\
	-c \
	-m64 -msse3 -Ofast -funroll-loops \
	-I $(SRC) \
	-o # trailing space

BUILDER=ld

BUILDER_ARG=-r -flto -o # trailing space

#file extensions
a=a
o=o
s=s

makeBuild=echo mkdir -p $(DIR)/build && mkdir -p $(BUILD)
makeA=mkdir -p $(BUILD)/$(a)
makeO=mkdir -p $(BUILD)/$(o)
makeS=mkdir -p $(BUILD)/$(s)



$(BUILD)/$(a)/$(NAME).$(a) :\
$(BUILD)/$(o)/const.$(o) \
$(BUILD)/$(o)/vec4.$(o) \
$(BUILD)/$(o)/vec4-32.$(o) \
$(BUILD)/$(o)/vec4-128.$(o) \
$(BUILD)/$(o)/quat.$(o) \
$(BUILD)/$(o)/quat-32.$(o) \
$(BUILD)/$(o)/quat-128.$(o) \
$(BUILD)/$(o)/mat4.$(o) \
$(BUILD)/$(o)/mat4-32.$(o) \
$(BUILD)/$(o)/mat4-128.$(o) \
$(BUILD)/$(o)/object.$(o) \
$(BUILD)/$(o)/util.$(o) \
$(BUILD)/$(o)/util-asm-x64.$(o)
	$(makeBuild) && $(makeA) &&	$(makeS) && \
	$(BUILDER) \
		$(BUILD)/$(o)/const.$(o) \
		$(BUILD)/$(o)/vec4.$(o) \
		$(BUILD)/$(o)/vec4-32.$(o) \
		$(BUILD)/$(o)/vec4-128.$(o) \
		$(BUILD)/$(o)/quat.$(o) \
		$(BUILD)/$(o)/quat-32.$(o) \
		$(BUILD)/$(o)/quat-128.$(o) \
		$(BUILD)/$(o)/mat4.$(o) \
		$(BUILD)/$(o)/mat4-32.$(o) \
		$(BUILD)/$(o)/mat4-128.$(o) \
		$(BUILD)/$(o)/object.$(o) \
		$(BUILD)/$(o)/util.$(o) \
		$(BUILD)/$(o)/util-asm-x64.$(o) \
	$(BUILDER_ARG)$(BUILD)/$(a)/$(NAME).$(a) && \
	objdump -d -M intel -S $(BUILD)/$(a)/$(NAME).$(a) > $(BUILD)/s/$(NAME).s



$(BUILD)/$(o)/const.$(o) : $(SRC)/data/const.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/data/const.cpp $(COMPILER_ARG)$(BUILD)/$(o)/const.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/const.$(o) > $(BUILD)/s/const.s



$(BUILD)/$(o)/vec4.$(o) : $(SRC)/data/vec4/vec4.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/data/vec4/vec4.cpp $(COMPILER_ARG)$(BUILD)/$(o)/vec4.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/vec4.$(o) > $(BUILD)/s/vec4.s



$(BUILD)/$(o)/vec4-32.$(o) : $(SRC)/data/vec4/vec4-32.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/data/vec4/vec4-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/vec4-32.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/vec4-32.$(o) > $(BUILD)/s/vec4-32.s



$(BUILD)/$(o)/vec4-128.$(o) : $(SRC)/data/vec4/vec4-128.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/data/vec4/vec4-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/vec4-128.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/vec4-128.$(o) > $(BUILD)/s/vec4-128.s



$(BUILD)/$(o)/quat.$(o) : $(SRC)/data/quat/quat.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/data/quat/quat.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/quat.$(o) > $(BUILD)/s/quat.s



$(BUILD)/$(o)/quat-32.$(o) : $(SRC)/data/quat/quat-32.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/data/quat/quat-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat-32.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/quat-32.$(o) > $(BUILD)/s/quat-32.s



$(BUILD)/$(o)/quat-128.$(o) : $(SRC)/data/quat/quat-128.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/data/quat/quat-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat-128.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/quat-128.$(o) > $(BUILD)/s/quat-128.s



$(BUILD)/$(o)/mat4.$(o) : $(SRC)/data/mat4/mat4.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/data/mat4/mat4.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/mat4.$(o) > $(BUILD)/s/mat4.s



$(BUILD)/$(o)/mat4-32.$(o) : $(SRC)/data/mat4/mat4-32.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/data/mat4/mat4-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4-32.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/mat4-32.$(o) > $(BUILD)/s/mat4-32.s



$(BUILD)/$(o)/mat4-128.$(o) : $(SRC)/data/mat4/mat4-128.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/data/mat4/mat4-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4-128.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/mat4-128.$(o) > $(BUILD)/s/mat4-128.s



$(BUILD)/$(o)/object.$(o) :\
$(SRC)/data/data.h \
$(SRC)/object/object.h \
$(SRC)/object/object.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/object/object.cpp $(COMPILER_ARG)$(BUILD)/$(o)/object.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/object.$(o) > $(BUILD)/s/object.s



$(BUILD)/$(o)/util.$(o) :\
$(SRC)/data/data.h \
$(SRC)/util/util.cpp
	$(makeBuild) && $(makeO) && $(makeS) && \
	$(COMPILER) $(SRC)/util/util.cpp $(COMPILER_ARG)$(BUILD)/$(o)/util.$(o) && \
	objdump -d -M intel -S $(BUILD)/$(o)/util.$(o) > $(BUILD)/s/util.s




$(BUILD)/$(o)/util-asm-x64.$(o) : $(SRC)/util/util-asm-x64.$(s)
	$(makeBuild) && $(makeO) && \
	$(ASSEMBLER) $(SRC)/util/util-asm-x64.$(s) $(ASSEMBLER_ARG)$(BUILD)/$(o)/util-asm-x64.$(o)
