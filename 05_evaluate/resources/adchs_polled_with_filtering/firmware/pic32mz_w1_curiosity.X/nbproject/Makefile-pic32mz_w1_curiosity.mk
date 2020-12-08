#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_w1_curiosity.mk)" "nbproject/Makefile-local-pic32mz_w1_curiosity.mk"
include nbproject/Makefile-local-pic32mz_w1_curiosity.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_w1_curiosity
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32mz_w1_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32mz_w1_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/lowpass.c ../src/median.c ../src/config/pic32mz_w1_curiosity/peripheral/adchs/plib_adchs.c ../src/config/pic32mz_w1_curiosity/peripheral/uart/plib_uart1.c ../src/main.c ../src/config/pic32mz_w1_curiosity/initialization.c ../src/config/pic32mz_w1_curiosity/interrupts.c ../src/config/pic32mz_w1_curiosity/exceptions.c ../src/config/pic32mz_w1_curiosity/stdio/xc32_monitor.c ../src/config/pic32mz_w1_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mz_w1_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mz_w1_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mz_w1_curiosity/system_pmu_mldo_trim.c ../src/config/pic32mz_w1_curiosity/peripheral/tmr1/plib_tmr1.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/lowpass.o ${OBJECTDIR}/_ext/1360937237/median.o ${OBJECTDIR}/_ext/1744647343/plib_adchs.o ${OBJECTDIR}/_ext/1303798346/plib_uart1.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1737632808/initialization.o ${OBJECTDIR}/_ext/1737632808/interrupts.o ${OBJECTDIR}/_ext/1737632808/exceptions.o ${OBJECTDIR}/_ext/1903942254/xc32_monitor.o ${OBJECTDIR}/_ext/1481979610/plib_clk.o ${OBJECTDIR}/_ext/1303395403/plib_gpio.o ${OBJECTDIR}/_ext/1303341575/plib_evic.o ${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/1303780020/plib_tmr1.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/lowpass.o.d ${OBJECTDIR}/_ext/1360937237/median.o.d ${OBJECTDIR}/_ext/1744647343/plib_adchs.o.d ${OBJECTDIR}/_ext/1303798346/plib_uart1.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1737632808/initialization.o.d ${OBJECTDIR}/_ext/1737632808/interrupts.o.d ${OBJECTDIR}/_ext/1737632808/exceptions.o.d ${OBJECTDIR}/_ext/1903942254/xc32_monitor.o.d ${OBJECTDIR}/_ext/1481979610/plib_clk.o.d ${OBJECTDIR}/_ext/1303395403/plib_gpio.o.d ${OBJECTDIR}/_ext/1303341575/plib_evic.o.d ${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o.d ${OBJECTDIR}/_ext/1303780020/plib_tmr1.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/lowpass.o ${OBJECTDIR}/_ext/1360937237/median.o ${OBJECTDIR}/_ext/1744647343/plib_adchs.o ${OBJECTDIR}/_ext/1303798346/plib_uart1.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1737632808/initialization.o ${OBJECTDIR}/_ext/1737632808/interrupts.o ${OBJECTDIR}/_ext/1737632808/exceptions.o ${OBJECTDIR}/_ext/1903942254/xc32_monitor.o ${OBJECTDIR}/_ext/1481979610/plib_clk.o ${OBJECTDIR}/_ext/1303395403/plib_gpio.o ${OBJECTDIR}/_ext/1303341575/plib_evic.o ${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/1303780020/plib_tmr1.o

# Source Files
SOURCEFILES=../src/lowpass.c ../src/median.c ../src/config/pic32mz_w1_curiosity/peripheral/adchs/plib_adchs.c ../src/config/pic32mz_w1_curiosity/peripheral/uart/plib_uart1.c ../src/main.c ../src/config/pic32mz_w1_curiosity/initialization.c ../src/config/pic32mz_w1_curiosity/interrupts.c ../src/config/pic32mz_w1_curiosity/exceptions.c ../src/config/pic32mz_w1_curiosity/stdio/xc32_monitor.c ../src/config/pic32mz_w1_curiosity/peripheral/clk/plib_clk.c ../src/config/pic32mz_w1_curiosity/peripheral/gpio/plib_gpio.c ../src/config/pic32mz_w1_curiosity/peripheral/evic/plib_evic.c ../src/config/pic32mz_w1_curiosity/system_pmu_mldo_trim.c ../src/config/pic32mz_w1_curiosity/peripheral/tmr1/plib_tmr1.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mz_w1_curiosity.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic32mz_w1_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ1025W104132
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32mz_w1_curiosity\p32MZ1025W104132.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/lowpass.o: ../src/lowpass.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lowpass.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lowpass.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/lowpass.o.d" -o ${OBJECTDIR}/_ext/1360937237/lowpass.o ../src/lowpass.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/lowpass.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/median.o: ../src/median.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/median.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/median.o.d" -o ${OBJECTDIR}/_ext/1360937237/median.o ../src/median.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/median.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1744647343/plib_adchs.o: ../src/config/pic32mz_w1_curiosity/peripheral/adchs/plib_adchs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1744647343" 
	@${RM} ${OBJECTDIR}/_ext/1744647343/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744647343/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1744647343/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1744647343/plib_adchs.o ../src/config/pic32mz_w1_curiosity/peripheral/adchs/plib_adchs.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744647343/plib_adchs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1303798346/plib_uart1.o: ../src/config/pic32mz_w1_curiosity/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1303798346" 
	@${RM} ${OBJECTDIR}/_ext/1303798346/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1303798346/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1303798346/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1303798346/plib_uart1.o ../src/config/pic32mz_w1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1303798346/plib_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1737632808/initialization.o: ../src/config/pic32mz_w1_curiosity/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1737632808" 
	@${RM} ${OBJECTDIR}/_ext/1737632808/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1737632808/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1737632808/initialization.o.d" -o ${OBJECTDIR}/_ext/1737632808/initialization.o ../src/config/pic32mz_w1_curiosity/initialization.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1737632808/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1737632808/interrupts.o: ../src/config/pic32mz_w1_curiosity/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1737632808" 
	@${RM} ${OBJECTDIR}/_ext/1737632808/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1737632808/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1737632808/interrupts.o.d" -o ${OBJECTDIR}/_ext/1737632808/interrupts.o ../src/config/pic32mz_w1_curiosity/interrupts.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1737632808/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1737632808/exceptions.o: ../src/config/pic32mz_w1_curiosity/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1737632808" 
	@${RM} ${OBJECTDIR}/_ext/1737632808/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1737632808/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1737632808/exceptions.o.d" -o ${OBJECTDIR}/_ext/1737632808/exceptions.o ../src/config/pic32mz_w1_curiosity/exceptions.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1737632808/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1903942254/xc32_monitor.o: ../src/config/pic32mz_w1_curiosity/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1903942254" 
	@${RM} ${OBJECTDIR}/_ext/1903942254/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1903942254/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1903942254/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1903942254/xc32_monitor.o ../src/config/pic32mz_w1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1903942254/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1481979610/plib_clk.o: ../src/config/pic32mz_w1_curiosity/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1481979610" 
	@${RM} ${OBJECTDIR}/_ext/1481979610/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1481979610/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1481979610/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1481979610/plib_clk.o ../src/config/pic32mz_w1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1481979610/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1303395403/plib_gpio.o: ../src/config/pic32mz_w1_curiosity/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1303395403" 
	@${RM} ${OBJECTDIR}/_ext/1303395403/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1303395403/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1303395403/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1303395403/plib_gpio.o ../src/config/pic32mz_w1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1303395403/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1303341575/plib_evic.o: ../src/config/pic32mz_w1_curiosity/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1303341575" 
	@${RM} ${OBJECTDIR}/_ext/1303341575/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1303341575/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1303341575/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1303341575/plib_evic.o ../src/config/pic32mz_w1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1303341575/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o: ../src/config/pic32mz_w1_curiosity/system_pmu_mldo_trim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1737632808" 
	@${RM} ${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o ../src/config/pic32mz_w1_curiosity/system_pmu_mldo_trim.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1303780020/plib_tmr1.o: ../src/config/pic32mz_w1_curiosity/peripheral/tmr1/plib_tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1303780020" 
	@${RM} ${OBJECTDIR}/_ext/1303780020/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1303780020/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1303780020/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1303780020/plib_tmr1.o ../src/config/pic32mz_w1_curiosity/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1303780020/plib_tmr1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1360937237/lowpass.o: ../src/lowpass.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lowpass.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/lowpass.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/lowpass.o.d" -o ${OBJECTDIR}/_ext/1360937237/lowpass.o ../src/lowpass.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/lowpass.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/median.o: ../src/median.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/median.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/median.o.d" -o ${OBJECTDIR}/_ext/1360937237/median.o ../src/median.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/median.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1744647343/plib_adchs.o: ../src/config/pic32mz_w1_curiosity/peripheral/adchs/plib_adchs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1744647343" 
	@${RM} ${OBJECTDIR}/_ext/1744647343/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1744647343/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1744647343/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1744647343/plib_adchs.o ../src/config/pic32mz_w1_curiosity/peripheral/adchs/plib_adchs.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1744647343/plib_adchs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1303798346/plib_uart1.o: ../src/config/pic32mz_w1_curiosity/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1303798346" 
	@${RM} ${OBJECTDIR}/_ext/1303798346/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1303798346/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1303798346/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1303798346/plib_uart1.o ../src/config/pic32mz_w1_curiosity/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1303798346/plib_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1737632808/initialization.o: ../src/config/pic32mz_w1_curiosity/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1737632808" 
	@${RM} ${OBJECTDIR}/_ext/1737632808/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1737632808/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1737632808/initialization.o.d" -o ${OBJECTDIR}/_ext/1737632808/initialization.o ../src/config/pic32mz_w1_curiosity/initialization.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1737632808/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1737632808/interrupts.o: ../src/config/pic32mz_w1_curiosity/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1737632808" 
	@${RM} ${OBJECTDIR}/_ext/1737632808/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1737632808/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1737632808/interrupts.o.d" -o ${OBJECTDIR}/_ext/1737632808/interrupts.o ../src/config/pic32mz_w1_curiosity/interrupts.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1737632808/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1737632808/exceptions.o: ../src/config/pic32mz_w1_curiosity/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1737632808" 
	@${RM} ${OBJECTDIR}/_ext/1737632808/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1737632808/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1737632808/exceptions.o.d" -o ${OBJECTDIR}/_ext/1737632808/exceptions.o ../src/config/pic32mz_w1_curiosity/exceptions.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1737632808/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1903942254/xc32_monitor.o: ../src/config/pic32mz_w1_curiosity/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1903942254" 
	@${RM} ${OBJECTDIR}/_ext/1903942254/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1903942254/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1903942254/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1903942254/xc32_monitor.o ../src/config/pic32mz_w1_curiosity/stdio/xc32_monitor.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1903942254/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1481979610/plib_clk.o: ../src/config/pic32mz_w1_curiosity/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1481979610" 
	@${RM} ${OBJECTDIR}/_ext/1481979610/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1481979610/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1481979610/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1481979610/plib_clk.o ../src/config/pic32mz_w1_curiosity/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1481979610/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1303395403/plib_gpio.o: ../src/config/pic32mz_w1_curiosity/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1303395403" 
	@${RM} ${OBJECTDIR}/_ext/1303395403/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1303395403/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1303395403/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1303395403/plib_gpio.o ../src/config/pic32mz_w1_curiosity/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1303395403/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1303341575/plib_evic.o: ../src/config/pic32mz_w1_curiosity/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1303341575" 
	@${RM} ${OBJECTDIR}/_ext/1303341575/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1303341575/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1303341575/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1303341575/plib_evic.o ../src/config/pic32mz_w1_curiosity/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1303341575/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o: ../src/config/pic32mz_w1_curiosity/system_pmu_mldo_trim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1737632808" 
	@${RM} ${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o ../src/config/pic32mz_w1_curiosity/system_pmu_mldo_trim.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1737632808/system_pmu_mldo_trim.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1303780020/plib_tmr1.o: ../src/config/pic32mz_w1_curiosity/peripheral/tmr1/plib_tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1303780020" 
	@${RM} ${OBJECTDIR}/_ext/1303780020/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1303780020/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_w1_curiosity" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1303780020/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1303780020/plib_tmr1.o ../src/config/pic32mz_w1_curiosity/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1303780020/plib_tmr1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic32mz_w1_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mz_w1_curiosity/p32MZ1025W104132.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD4=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32mz_w1_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD4=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic32mz_w1_curiosity.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mz_w1_curiosity/p32MZ1025W104132.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32mz_w1_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz_w1_curiosity=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/pic32mz_w1_curiosity.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mz_w1_curiosity
	${RM} -r dist/pic32mz_w1_curiosity

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
