ROOT=~

DIR=$(ROOT)/reps/denis-belov/xgk-math

SRC=$(DIR)/src

BUILD=$(DIR)/build/gnu-x64

ASSEMBLER=gcc

ASSEMBLER_ARG=-c -o

COMPILER=g++

COMPILER_ARG=\
	-c \
	-m64 -msse3 -Ofast -funroll-loops \
	-I $(SRC) \
	-o

BUILDER=ld -o

BUILDER_ARG=-r -flto

#file extensions
a=a
o=o
s=s

makeBuildFolder=echo mkdir -p $(DIR)/build && mkdir -p $(BUILD)
makeAFolder=mkdir -p $(BUILD)/$(a)
makeOFolder=mkdir -p $(BUILD)/$(o)
makeSFolder=mkdir -p $(BUILD)/$(s)



$(BUILD)/$(a)/xgk-math.$(a) : \
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
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(BUILDER)$(BUILD)/$(a)/xgk-math.$(a) \
	$(BUILDER_ARG)
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
	objdump -d -M intel -S $(BUILD)/$(a)/xgk-math.$(a) > $(BUILD)/s/xgk-math.s



$(BUILD)/$(o)/const.$(o) : $(SRC)/data/const.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/data/const.cpp $(COMPILER_ARG)$(BUILD)/$(o)/const.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/const.$(o) > $(BUILD)/s/const.s



$(BUILD)/$(o)/vec4.$(o) : $(SRC)/data/vec4/vec4.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/data/vec4/vec4.cpp	$(COMPILER_ARG)$(BUILD)/$(o)/vec4.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/vec4.$(o) > $(BUILD)/s/vec4.s



$(BUILD)/$(o)/vec4-32.$(o) : $(SRC)/data/vec4/vec4-32.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/data/vec4/vec4-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/vec4-32.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/vec4-32.$(o) > $(BUILD)/s/vec4-32.s



$(BUILD)/$(o)/vec4-128.$(o) : $(SRC)/data/vec4/vec4-128.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/data/vec4/vec4-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/vec4-128.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/vec4-128.$(o) > $(BUILD)/s/vec4-128.s



$(BUILD)/$(o)/quat.$(o) : $(SRC)/data/quat/quat.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/data/quat/quat.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/quat.$(o) > $(BUILD)/s/quat.s



$(BUILD)/$(o)/quat-32.$(o) : $(SRC)/data/quat/quat-32.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/data/quat/quat-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat-32.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/quat-32.$(o) > $(BUILD)/s/quat-32.s



$(BUILD)/$(o)/quat-128.$(o) : $(SRC)/data/quat/quat-128.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/data/quat/quat-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat-128.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/quat-128.$(o) > $(BUILD)/s/quat-128.s



$(BUILD)/$(o)/mat4.$(o) : $(SRC)/data/mat4/mat4.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/data/mat4/mat4.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/mat4.$(o) > $(BUILD)/s/mat4.s



$(BUILD)/$(o)/mat4-32.$(o) : $(SRC)/data/mat4/mat4-32.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/data/mat4/mat4-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4-32.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/mat4-32.$(o) > $(BUILD)/s/mat4-32.s



$(BUILD)/$(o)/mat4-128.$(o) : $(SRC)/data/mat4/mat4-128.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/data/mat4/mat4-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4-128.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/mat4-128.$(o) > $(BUILD)/s/mat4-128.s



$(BUILD)/$(o)/object.$(o) : \
$(SRC)/data/data.h \
$(SRC)/object/object.h \
$(SRC)/object/object.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/object/object.cpp $(COMPILER_ARG)$(BUILD)/$(o)/object.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/object.$(o) > $(BUILD)/s/object.s
	


$(BUILD)/$(o)/util.$(o) : \
$(SRC)/data/data.h \
$(SRC)/util/util.cpp
	$(makeBuildFolder) && $(makeOFolder) && $(makeSFolder) && \
	$(COMPILER) $(SRC)/util/util.cpp $(COMPILER_ARG)$(BUILD)/$(o)/util.$(o) \
	objdump -d -M intel -S $(BUILD)/$(o)/util.$(o) > $(BUILD)/s/util.s



$(BUILD)/$(o)/util-asm-x64.$(o) : $(SRC)/util/util-asm-x64.s
	$(makeBuildFolder) && $(makeOFolder) && \
	$(ASSEMBLER) $(SRC)/util/util-asm-x64.s $(ASSEMBLER_ARG)$(BUILD)/$(o)/util-asm-x64.$(o)
