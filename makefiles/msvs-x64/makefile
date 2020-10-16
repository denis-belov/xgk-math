NAME=xgk-math

BUILD_TYPE=gnu-x64

ROOT=C:

DIR=$(ROOT)/reps/denis-belov/$(NAME)

SRC=$(DIR)/src

BUILD=$(DIR)/build/$(BUILD_TYPE)

ASSEMBLER=ml64

ASSEMBLER_ARG=/Fo

COMPILER=cl

COMPILER_ARG=\
	/c /EHsc /MP999 /std:c++17 \
	/O2 \
	/I$(SRC) \
	/Fo

BUILDER=lib

BUILDER_ARG=/SUBSYSTEM:CONSOLE /OUT:

#file extensions
a=lib
o=obj
s=asm

makeBuild=(IF NOT EXIST $(DIR)/build cd /d $(DIR) && mkdir build) && (IF NOT EXIST $(BUILD) cd /d $(DIR)/build && mkdir $(BUILD_TYPE))
makeA=(IF NOT EXIST $(BUILD)/lib cd /d $(BUILD) && mkdir lib)
makeO=(IF NOT EXIST $(BUILD)/obj cd /d $(BUILD) && mkdir obj)
makeS=(IF NOT EXIST $(BUILD)/asm cd /d $(BUILD) && mkdir asm)



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
	$(BUILDER_ARG)$(BUILD)/$(a)/$(NAME).$(a) \
	&& dumpbin /disasm $(BUILD)/$(a)/$(NAME).$(a) /out:$(BUILD)/$(s)/$(NAME).$(s)



$(BUILD)/$(o)/const.$(o) : $(SRC)/data/const.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/data/const.cpp $(COMPILER_ARG)$(BUILD)/$(o)/const.$(o) \
	/FA /Fa$(BUILD)/$(s)/const.$(s)



$(BUILD)/$(o)/vec4.$(o) : $(SRC)/data/vec4/vec4.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/data/vec4/vec4.cpp $(COMPILER_ARG)$(BUILD)/$(o)/vec4.$(o) \
	/FA /Fa$(BUILD)/$(s)/vec4.$(s)



$(BUILD)/$(o)/vec4-32.$(o) : $(SRC)/data/vec4/vec4-32.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/data/vec4/vec4-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/vec4-32.$(o) \
	/FA /Fa$(BUILD)/$(s)/vec4-32.$(s)



$(BUILD)/$(o)/vec4-128.$(o) : $(SRC)/data/vec4/vec4-128.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/data/vec4/vec4-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/vec4-128.$(o) \
	/FA /Fa$(BUILD)/$(s)/vec4-128.$(s)



$(BUILD)/$(o)/quat.$(o) : $(SRC)/data/quat/quat.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/data/quat/quat.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat.$(o) \
	/FA /Fa$(BUILD)/$(s)/quat.$(s)



$(BUILD)/$(o)/quat-32.$(o) : $(SRC)/data/quat/quat-32.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/data/quat/quat-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat-32.$(o) \
	/FA /Fa$(BUILD)/$(s)/quat-32.$(s)



$(BUILD)/$(o)/quat-128.$(o) : $(SRC)/data/quat/quat-128.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/data/quat/quat-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/quat-128.$(o) \
	/FA /Fa$(BUILD)/$(s)/quat-128.$(s)



$(BUILD)/$(o)/mat4.$(o) : $(SRC)/data/mat4/mat4.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/data/mat4/mat4.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4.$(o) \
	/FA /Fa$(BUILD)/$(s)/mat4.$(s)



$(BUILD)/$(o)/mat4-32.$(o) : $(SRC)/data/mat4/mat4-32.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/data/mat4/mat4-32.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4-32.$(o) \
	/FA /Fa$(BUILD)/$(s)/mat4-32.$(s)



$(BUILD)/$(o)/mat4-128.$(o) : $(SRC)/data/mat4/mat4-128.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/data/mat4/mat4-128.cpp $(COMPILER_ARG)$(BUILD)/$(o)/mat4-128.$(o) \
	/FA /Fa$(BUILD)/$(s)/mat4-128.$(s)



$(BUILD)/$(o)/object.$(o) :\
$(SRC)/data/data.h \
$(SRC)/object/object.h \
$(SRC)/object/object.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/object/object.cpp $(COMPILER_ARG)$(BUILD)/$(o)/object.$(o) \
	/FA /Fa$(BUILD)/$(s)/object.$(s)



$(BUILD)/$(o)/util.$(o) :\
$(SRC)/data/data.h \
$(SRC)/util/util.cpp
	$(makeBuild) && $(makeO) &&	$(makeS) && \
	$(COMPILER) $(SRC)/util/util.cpp $(COMPILER_ARG)$(BUILD)/$(o)/util.$(o) \
	/FA /Fa$(BUILD)/$(s)/util.$(s)



# "/c" and asm source file must be placed at the end
$(BUILD)/$(o)/util-asm-x64.$(o) : $(SRC)/util/util-asm-x64.$(s)
	$(makeBuild) && $(makeO) && \
	$(ASSEMBLER) $(ASSEMBLER_ARG)$(BUILD)/$(o)/util-asm-x64.$(o) /c $(SRC)/util/util-asm-x64.$(s)
