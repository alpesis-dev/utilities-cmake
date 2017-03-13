# Caffe
SET ( Caffe_INCLUDE_DIR )
LIST ( APPEND Caffe_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/caffe/include/" )
LIST ( APPEND Caffe_INCLUDE_DIR "${CMAKE_SOURCE_DIR}/caffe/build/src/" )

SET ( Caffe_LIBS 
    "-Wl, --whole-archive
    ${CMAKE_SOURCE_DIR}/caffe/build/lib/libcaffe.a
    -Wl,--no-whole-archive"
)

INCLUDE_DIRECTORIES ( ${Caffe_INCLUDE_DIR} )
