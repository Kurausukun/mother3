cmake_minimum_required(VERSION 3.13)
project(salsa CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_BUILD_TYPE Debug)
add_compile_options(-ggdb)
add_executable(salsa main.cpp)

target_sources(salsa PUBLIC
    convLogic.cpp
    convTextMisc.cpp
    convTextScript.cpp
    salsa.hpp
    salsaBinary.hpp
    salsaContainer.hpp
    salsaLogic.cpp
    salsaLogic.hpp
    salsaLogicCommands.cpp
    salsaLogicCommands.hpp
    salsaLogicMaps.cpp
    salsaText.cpp
    salsaText.hpp
    salsaTextDynamic.cpp
    salsaTextFixed.cpp
    salsaTextMap.cpp
)
