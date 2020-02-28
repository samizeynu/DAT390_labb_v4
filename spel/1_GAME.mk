##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=1_GAME
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/Andre/Desktop/DAT390_labb_v4
ProjectPath            :=C:/Users/Andre/Desktop/DAT390_labb_v4/spel
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Andre
Date                   :=28/02/2020
CodeLitePath           :=C:/cseapp/CodeLite
LinkerName             :=$(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-g++.exe
SharedObjectLinkerName :=$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi-g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).elf
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="1_GAME.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=
LinkOptions            :=  -T$(ProjectPath)/md407-ram.x -L$(ARM_V6LIB) -L$(ARM_GCC_V6LIB) -nostartfiles
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)gcc $(LibrarySwitch)c_nano 
ArLibs                 :=  "gcc" "c_nano" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-ar.exe rcu
CXX      := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-g++.exe
CC       := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-gcc.exe
CXXFLAGS :=  -g -O0 -W $(Preprocessors)
CFLAGS   :=  -Wa,-adhln=test.s -g -O0 -w -mthumb -march=armv6-m  -mfloat-abi=soft -std=c99 -mthumb -march=armv6-m $(Preprocessors)
ASFLAGS  := 
AS       := $(CodeLiteDir)/tools/gcc-arm/bin/arm-none-eabi-as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\cseapp\CodeLite
ARM_V6LIB:=$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi/lib/thumb/v6-m
ARM_GCC_V6LIB:=$(CodeLiteDir)/tools/gcc-arm/lib/gcc/arm-none-eabi/7.2.1/thumb/v6-m
ARM_M4FPLIB:=$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard
ARM_GCC_M4FPLIB:=$(CodeLiteDir)/tools/gcc-arm/lib/gcc/arm-none-eabi/7.2.1/thumb/v7e-m
Objects0=$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IntermediateDirectory)/game_structs.c$(ObjectSuffix) $(IntermediateDirectory)/game_graphics.c$(ObjectSuffix) $(IntermediateDirectory)/game_keyboard.c$(ObjectSuffix) $(IntermediateDirectory)/game_delays.c$(ObjectSuffix) $(IntermediateDirectory)/game_ascii.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

PostBuild:
	@echo Executing Post Build commands ...
	arm-none-eabi-objcopy -S -O srec  ./Debug/1_GAME.elf ./Debug/1_GAME.s19
	arm-none-eabi-objdump -D -S ./Debug/1_GAME.elf > ./Debug/1_GAME.dass
	@echo Done

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.c$(ObjectSuffix): main.c $(IntermediateDirectory)/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/main.c$(DependSuffix) -MM main.c

$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix) main.c

$(IntermediateDirectory)/game_structs.c$(ObjectSuffix): game_structs.c $(IntermediateDirectory)/game_structs.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/game_structs.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/game_structs.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/game_structs.c$(DependSuffix): game_structs.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/game_structs.c$(ObjectSuffix) -MF$(IntermediateDirectory)/game_structs.c$(DependSuffix) -MM game_structs.c

$(IntermediateDirectory)/game_structs.c$(PreprocessSuffix): game_structs.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/game_structs.c$(PreprocessSuffix) game_structs.c

$(IntermediateDirectory)/game_graphics.c$(ObjectSuffix): game_graphics.c $(IntermediateDirectory)/game_graphics.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/game_graphics.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/game_graphics.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/game_graphics.c$(DependSuffix): game_graphics.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/game_graphics.c$(ObjectSuffix) -MF$(IntermediateDirectory)/game_graphics.c$(DependSuffix) -MM game_graphics.c

$(IntermediateDirectory)/game_graphics.c$(PreprocessSuffix): game_graphics.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/game_graphics.c$(PreprocessSuffix) game_graphics.c

$(IntermediateDirectory)/game_keyboard.c$(ObjectSuffix): game_keyboard.c $(IntermediateDirectory)/game_keyboard.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/game_keyboard.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/game_keyboard.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/game_keyboard.c$(DependSuffix): game_keyboard.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/game_keyboard.c$(ObjectSuffix) -MF$(IntermediateDirectory)/game_keyboard.c$(DependSuffix) -MM game_keyboard.c

$(IntermediateDirectory)/game_keyboard.c$(PreprocessSuffix): game_keyboard.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/game_keyboard.c$(PreprocessSuffix) game_keyboard.c

$(IntermediateDirectory)/game_delays.c$(ObjectSuffix): game_delays.c $(IntermediateDirectory)/game_delays.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/game_delays.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/game_delays.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/game_delays.c$(DependSuffix): game_delays.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/game_delays.c$(ObjectSuffix) -MF$(IntermediateDirectory)/game_delays.c$(DependSuffix) -MM game_delays.c

$(IntermediateDirectory)/game_delays.c$(PreprocessSuffix): game_delays.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/game_delays.c$(PreprocessSuffix) game_delays.c

$(IntermediateDirectory)/game_ascii.c$(ObjectSuffix): game_ascii.c $(IntermediateDirectory)/game_ascii.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Andre/Desktop/DAT390_labb_v4/spel/game_ascii.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/game_ascii.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/game_ascii.c$(DependSuffix): game_ascii.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/game_ascii.c$(ObjectSuffix) -MF$(IntermediateDirectory)/game_ascii.c$(DependSuffix) -MM game_ascii.c

$(IntermediateDirectory)/game_ascii.c$(PreprocessSuffix): game_ascii.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/game_ascii.c$(PreprocessSuffix) game_ascii.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


