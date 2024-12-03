# stream
set(TARGET stream)
add_executable(${TARGET} transcribe.cpp)

include(DefaultTargetOptions)

target_link_libraries(${TARGET} PRIVATE common miniaudio whisper ${CMAKE_THREAD_LIBS_INIT})
