##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=autopong
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/Andre/Desktop/DAT390_labb_v2
ProjectPath            :=C:/Users/Andre/Desktop/DAT390_labb_v2/autopong
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Andre
Date                   :=18/02/2020
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
ObjectsFileList        :="autopong.txt"
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
Objects0=$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IntermediateDirectory)/delays.c$(ObjectSuffix) $(IntermediateDirectory)/graphics.c$(ObjectSuffix) 



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
	arm-none-eabi-objcopy -S -O srec  ./Debug/autopong.elf ./Debug/autopong.s19
	arm-none-eabi-objdump -D -S ./Debug/autopong.elf > ./Debug/autopong.dass
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
	$(CC) $(SourceSwitch) "C:/Users/Andre/Desktop/DAT390_labb_v2/autopong/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/main.c$(DependSuffix) -MM main.c

$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix) main.c

$(IntermediateDirectory)/delays.c$(ObjectSuffix): delays.c $(IntermediateDirectory)/delays.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Andre/Desktop/DAT390_labb_v2/autopong/delays.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/delays.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/delays.c$(DependSuffix): delays.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/delays.c$(ObjectSuffix) -MF$(IntermediateDirectory)/delays.c$(DependSuffix) -MM delays.c

$(IntermediateDirectory)/delays.c$(PreprocessSuffix): delays.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/delays.c$(PreprocessSuffix) delays.c

$(IntermediateDirectory)/graphics.c$(ObjectSuffix): graphics.c $(IntermediateDirectory)/graphics.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Andre/Desktop/DAT390_labb_v2/autopong/graphics.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/graphics.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/graphics.c$(DependSuffix): graphics.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/graphics.c$(ObjectSuffix) -MF$(IntermediateDirectory)/graphics.c$(DependSuffix) -MM graphics.c

$(IntermediateDirectory)/graphics.c$(PreprocessSuffix): graphics.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/graphics.c$(PreprocessSuffix) graphics.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


