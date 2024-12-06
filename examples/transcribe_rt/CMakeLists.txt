# stream
set(TARGET transcribe_rt)
add_executable(${TARGET} transcribe.cpp)

include(DefaultTargetOptions)

target_include_directories(${TARGET} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/readerwriterqueue)
target_link_libraries(${TARGET} PRIVATE common whisper ${CMAKE_THREAD_LIBS_INIT})
