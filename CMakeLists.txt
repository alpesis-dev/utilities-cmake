CMAKE_MINIMUM_REQUIRED ( VERSION 2.8 )

# ----------------------------------------------------------------------------
# Project settings

# Project name
PROJECT ( PROJECT_NAME CXX C )

# project version
SET ( PROJECT_NAME_MAJOR_VERSION 0 )
SET ( PROJECT_NAME_MINOR_VERSION 0 )
SET ( PROJECT_NAME_PATCH_VERSION 1 )
SET ( PROJECT_NAME_VERSION
    ${PROJECT_NAME_MAJOR_VERSION}.
    ${PROJECT_NAME_MINOR_VERSION}.
    ${PROJECT_NAME_PATCH_VERSION}
)

# ----------------------------------------------------------------------------
# CMake settings

# cmake packages
SET ( CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake" )

# include libraries
INCLUDE ( EnableCXX11 )
INCLUDE ( Eigen )

# ----------------------------------------------------------------------------
# Build options

# build options
OPTION ( WITH_TEST "Compile and run unittest for deepbrain" ON )

IF ( WITH_TEST )
    INCLUDE ( GTest )
    ENABLE_TESTING ()
ENDIF ()

# ----------------------------------------------------------------------------
# Project sources

# project root
SET ( PROJECT_ROOT ${CMAKE_SOURCE_DIR} )
INCLUDE_DIRECTORIES ( "${PROJECT_ROOT}" )

# project modules
# ADD_SUBDIRECTORY ( module1 )
# ADD_SUBDIRECTORY ( module2 )
# ADD_SUBDIRECTORY ( modulo3 )

# data
# FILE ( COPY ${PROJECT_ROOT}/data DESTINATION ${CMAKE_CURRENT_BINARY_DIR} )

# ----------------------------------------------------------------------------

