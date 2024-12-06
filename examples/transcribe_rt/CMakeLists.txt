# stream
set(TARGET transcribe_rt)
add_executable(${TARGET} transcribe.cpp)

include(DefaultTargetOptions)

target_link_libraries(${TARGET} PRIVATE common whisper ${CMAKE_THREAD_LIBS_INIT})
