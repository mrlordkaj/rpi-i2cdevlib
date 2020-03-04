#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/64e570a/Arduino.o \
	${OBJECTDIR}/_ext/64e570a/I2Cdev.o \
	${OBJECTDIR}/_ext/29dd86f/MPU6050.o \
	${OBJECTDIR}/demo_3d.o \
	${OBJECTDIR}/main_3d.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=`pkg-config --libs gtkmm-3.0`  

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk /home/pi/MPU6050/demo_3d

/home/pi/MPU6050/demo_3d: ${OBJECTFILES}
	${MKDIR} -p /home/pi/MPU6050
	${LINK.cc} -o /home/pi/MPU6050/demo_3d ${OBJECTFILES} ${LDLIBSOPTIONS} -lwiringPi

${OBJECTDIR}/_ext/64e570a/Arduino.o: ../../../I2Cdev/Arduino.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/64e570a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DDMP_FIFO_RATE=9 -I../.. -I../../../I2Cdev -include Arduino.h `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/64e570a/Arduino.o ../../../I2Cdev/Arduino.cpp

${OBJECTDIR}/_ext/64e570a/I2Cdev.o: ../../../I2Cdev/I2Cdev.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/64e570a
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DDMP_FIFO_RATE=9 -I../.. -I../../../I2Cdev -include Arduino.h `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/64e570a/I2Cdev.o ../../../I2Cdev/I2Cdev.cpp

${OBJECTDIR}/_ext/29dd86f/MPU6050.o: ../../MPU6050.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/29dd86f
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DDMP_FIFO_RATE=9 -I../.. -I../../../I2Cdev -include Arduino.h `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/29dd86f/MPU6050.o ../../MPU6050.cpp

${OBJECTDIR}/demo_3d.o: demo_3d.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DDMP_FIFO_RATE=9 -I../.. -I../../../I2Cdev -include Arduino.h `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/demo_3d.o demo_3d.cpp

${OBJECTDIR}/main_3d.o: main_3d.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -DDMP_FIFO_RATE=9 -I../.. -I../../../I2Cdev -include Arduino.h `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main_3d.o main_3d.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc