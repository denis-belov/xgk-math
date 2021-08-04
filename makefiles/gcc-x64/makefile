SRC=/home/denis/reps/denis-belov/xgk-math/src
BUILD=/home/denis/reps/denis-belov/xgk-math/build/gcc-x64

$(BUILD)/output/a/xgk-math.a : $(BUILD)/internal/o/data/const.o $(BUILD)/internal/o/data/vec4/vec4.o $(BUILD)/internal/o/data/quat/quat.o $(BUILD)/internal/o/data/quat/quat-32.o $(BUILD)/internal/o/data/quat/quat-128.o $(BUILD)/internal/o/data/mat4/mat4.o $(BUILD)/internal/o/data/mat4/mat4-32.o $(BUILD)/internal/o/data/mat4/mat4-128.o 
	mkdir -p $(BUILD)/output/a && mkdir -p $(BUILD)/output/s && ld $(BUILD)/internal/o/data/const.o $(BUILD)/internal/o/data/vec4/vec4.o $(BUILD)/internal/o/data/quat/quat.o $(BUILD)/internal/o/data/quat/quat-32.o $(BUILD)/internal/o/data/quat/quat-128.o $(BUILD)/internal/o/data/mat4/mat4.o $(BUILD)/internal/o/data/mat4/mat4-32.o $(BUILD)/internal/o/data/mat4/mat4-128.o -r -flto -o $(BUILD)/output/a/xgk-math.a && objdump -d -M intel -S $(BUILD)/output/a/xgk-math.a > $(BUILD)/output/s/xgk-math.s

$(BUILD)/internal/o/data/const.o : $(SRC)/data/const.cpp 
	mkdir -p $(BUILD)/internal/o/data && mkdir -p $(BUILD)/internal/s/data && g++ $(SRC)/data/const.cpp -c -std=c++20 -m64 -msse3 -Ofast -funroll-loops -Wall -Wextra -Wpedantic -Wno-cpp -I $(SRC) -o $(BUILD)/internal/o/data/const.o && objdump -d -M intel -S $(BUILD)/internal/o/data/const.o > $(BUILD)/internal/s/data/const.s

$(BUILD)/internal/o/data/vec4/vec4.o : $(SRC)/data/vec4/vec4.cpp 
	mkdir -p $(BUILD)/internal/o/data/vec4 && mkdir -p $(BUILD)/internal/s/data/vec4 && g++ $(SRC)/data/vec4/vec4.cpp -c -std=c++20 -m64 -msse3 -Ofast -funroll-loops -Wall -Wextra -Wpedantic -Wno-cpp -I $(SRC) -o $(BUILD)/internal/o/data/vec4/vec4.o && objdump -d -M intel -S $(BUILD)/internal/o/data/vec4/vec4.o > $(BUILD)/internal/s/data/vec4/vec4.s

$(BUILD)/internal/o/data/quat/quat.o : $(SRC)/data/quat/quat.cpp 
	mkdir -p $(BUILD)/internal/o/data/quat && mkdir -p $(BUILD)/internal/s/data/quat && g++ $(SRC)/data/quat/quat.cpp -c -std=c++20 -m64 -msse3 -Ofast -funroll-loops -Wall -Wextra -Wpedantic -Wno-cpp -I $(SRC) -o $(BUILD)/internal/o/data/quat/quat.o && objdump -d -M intel -S $(BUILD)/internal/o/data/quat/quat.o > $(BUILD)/internal/s/data/quat/quat.s

$(BUILD)/internal/o/data/quat/quat-32.o : $(SRC)/data/quat/quat-32.cpp 
	mkdir -p $(BUILD)/internal/o/data/quat && mkdir -p $(BUILD)/internal/s/data/quat && g++ $(SRC)/data/quat/quat-32.cpp -c -std=c++20 -m64 -msse3 -Ofast -funroll-loops -Wall -Wextra -Wpedantic -Wno-cpp -I $(SRC) -o $(BUILD)/internal/o/data/quat/quat-32.o && objdump -d -M intel -S $(BUILD)/internal/o/data/quat/quat-32.o > $(BUILD)/internal/s/data/quat/quat-32.s

$(BUILD)/internal/o/data/quat/quat-128.o : $(SRC)/data/quat/quat-128.cpp 
	mkdir -p $(BUILD)/internal/o/data/quat && mkdir -p $(BUILD)/internal/s/data/quat && g++ $(SRC)/data/quat/quat-128.cpp -c -std=c++20 -m64 -msse3 -Ofast -funroll-loops -Wall -Wextra -Wpedantic -Wno-cpp -I $(SRC) -o $(BUILD)/internal/o/data/quat/quat-128.o && objdump -d -M intel -S $(BUILD)/internal/o/data/quat/quat-128.o > $(BUILD)/internal/s/data/quat/quat-128.s

$(BUILD)/internal/o/data/mat4/mat4.o : $(SRC)/data/mat4/mat4.cpp 
	mkdir -p $(BUILD)/internal/o/data/mat4 && mkdir -p $(BUILD)/internal/s/data/mat4 && g++ $(SRC)/data/mat4/mat4.cpp -c -std=c++20 -m64 -msse3 -Ofast -funroll-loops -Wall -Wextra -Wpedantic -Wno-cpp -I $(SRC) -o $(BUILD)/internal/o/data/mat4/mat4.o && objdump -d -M intel -S $(BUILD)/internal/o/data/mat4/mat4.o > $(BUILD)/internal/s/data/mat4/mat4.s

$(BUILD)/internal/o/data/mat4/mat4-32.o : $(SRC)/data/mat4/mat4-32.cpp 
	mkdir -p $(BUILD)/internal/o/data/mat4 && mkdir -p $(BUILD)/internal/s/data/mat4 && g++ $(SRC)/data/mat4/mat4-32.cpp -c -std=c++20 -m64 -msse3 -Ofast -funroll-loops -Wall -Wextra -Wpedantic -Wno-cpp -I $(SRC) -o $(BUILD)/internal/o/data/mat4/mat4-32.o && objdump -d -M intel -S $(BUILD)/internal/o/data/mat4/mat4-32.o > $(BUILD)/internal/s/data/mat4/mat4-32.s

$(BUILD)/internal/o/data/mat4/mat4-128.o : $(SRC)/data/mat4/mat4-128.cpp 
	mkdir -p $(BUILD)/internal/o/data/mat4 && mkdir -p $(BUILD)/internal/s/data/mat4 && g++ $(SRC)/data/mat4/mat4-128.cpp -c -std=c++20 -m64 -msse3 -Ofast -funroll-loops -Wall -Wextra -Wpedantic -Wno-cpp -I $(SRC) -o $(BUILD)/internal/o/data/mat4/mat4-128.o && objdump -d -M intel -S $(BUILD)/internal/o/data/mat4/mat4-128.o > $(BUILD)/internal/s/data/mat4/mat4-128.s
