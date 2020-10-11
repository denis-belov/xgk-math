ROOT=C:

DIR=$(ROOT)/reps/denis-belov/xgk-math

SRC=$(DIR)/src

BUILD=$(DIR)/build/msvs-x64

ASSEMBLER=ml64

ASSEMBLER_ARG=/c /Fo

COMPILER=cl

COMPILER_ARG=\
  /c /EHsc /MD /MP999 /std:c++17 \
  /O2 \
  /I$(SRC) \
	/Fo

BUILDER=lib /OUT:

BUILDER_ARG=

#file extensions
a=lib
o=obj
s=asm

makeBuildFolder=(IF NOT EXIST $(DIR)/build cd /d $(DIR) && mkdir build) && (IF NOT EXIST $(BUILD) cd /d $(DIR)/build && mkdir msvs-x64)
makeAFolder=(IF NOT EXIST $(BUILD)/lib cd /d $(BUILD) && mkdir lib)
makeOFolder=(IF NOT EXIST $(BUILD)/obj cd /d $(BUILD) && mkdir obj)
makeSFolder=(IF NOT EXIST $(BUILD)/asm cd /d $(BUILD) && mkdir asm)



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
	$(BUILD)/$(o)/util-asm-x64.$(o)




$(BUILD)/$(o)/const.$(o) : $(SRC)/data/const.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/data/const.cpp $(COMPILER_ARG)$(BUILD)/$(o)/const.$(o)




$(BUILD)/$(o)/vec4.$(o) : $(SRC)/data/vec4/vec4.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/data/vec4/vec4.cpp	$(COMPILER_ARG)$(BUILD)/$(o)/vec4.$(o)




$(BUILD)/$(o)/vec4-32.$(o) : $(SRC)/data/vec4/vec4-32.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/data/vec4/vec4-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/vec4-32.$(o)




$(BUILD)/$(o)/vec4-128.$(o) : $(SRC)/data/vec4/vec4-128.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/data/vec4/vec4-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/vec4-128.$(o)




$(BUILD)/$(o)/quat.$(o) : $(SRC)/data/quat/quat.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/data/quat/quat.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat.$(o)




$(BUILD)/$(o)/quat-32.$(o) : $(SRC)/data/quat/quat-32.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/data/quat/quat-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat-32.$(o)




$(BUILD)/$(o)/quat-128.$(o) : $(SRC)/data/quat/quat-128.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/data/quat/quat-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat-128.$(o)




$(BUILD)/$(o)/mat4.$(o) : $(SRC)/data/mat4/mat4.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/data/mat4/mat4.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4.$(o)




$(BUILD)/$(o)/mat4-32.$(o) : $(SRC)/data/mat4/mat4-32.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/data/mat4/mat4-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4-32.$(o)




$(BUILD)/$(o)/mat4-128.$(o) : $(SRC)/data/mat4/mat4-128.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/data/mat4/mat4-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4-128.$(o)




$(BUILD)/$(o)/object.$(o) : \
$(SRC)/data/data.h \
$(SRC)/object/object.h \
$(SRC)/object/object.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/object/object.cpp $(COMPILER_ARG)$(BUILD)/$(o)/object.$(o)




$(BUILD)/$(o)/util.$(o) : \
$(SRC)/data/data.h \
$(SRC)/util/util.cpp
	$(makeBuildFolder) && $(makeOFolder) &&	$(makeSFolder) && \
	$(COMPILER) $(SRC)/util/util.cpp $(COMPILER_ARG)$(BUILD)/$(o)/util.$(o)




$(BUILD)/$(o)/util-asm-x64.$(o) : $(SRC)/util/util-asm-x64.asm
	$(makeBuildFolder) && $(makeOFolder) && \
	$(ASSEMBLER) $(SRC)/util/util-asm-x64.asm $(ASSEMBLER_ARG)$(BUILD)/$(o)/util-asm-x64.$(o)
