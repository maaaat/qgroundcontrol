function(build_sdl2)
    include(FetchContent)

    set(SDL2_DISABLE_INSTALL TRUE CACHE INTERNAL "")
    set(SDL2_DISABLE_UNINSTALL TRUE CACHE INTERNAL "")
    set(SDL2_DISABLE_SDL2MAIN TRUE CACHE INTERNAL "")
    set(SDL_SHARED FALSE CACHE INTERNAL "")
    set(SDL_STATIC TRUE CACHE INTERNAL "")
    set(SDL_TEST FALSE CACHE INTERNAL "")

    set(SDL_ATOMIC TRUE CACHE INTERNAL "")
    set(SDL_AUDIO FALSE CACHE INTERNAL "")
    set(SDL_CPUINFO TRUE CACHE INTERNAL "")
    set(SDL_EVENTS TRUE CACHE INTERNAL "")
    set(SDL_FILE FALSE CACHE INTERNAL "")
    set(SDL_FILESYSTEM FALSE CACHE INTERNAL "")
    set(SDL_HAPTIC FALSE CACHE INTERNAL "")
    set(SDL_HIDAPI TRUE CACHE INTERNAL "")
    set(SDL_JOYSTICK TRUE CACHE INTERNAL "")
    set(SDL_LOADSO TRUE CACHE INTERNAL "")
    set(SDL_LOCALE TRUE CACHE INTERNAL "")
    set(SDL_MISC FALSE CACHE INTERNAL "")
    set(SDL_POWER FALSE CACHE INTERNAL "")
    set(SDL_RENDER FALSE CACHE INTERNAL "")
    set(SDL_SENSOR FALSE CACHE INTERNAL "")
    set(SDL_THREADS TRUE CACHE INTERNAL "")
    set(SDL_TIMERS FALSE CACHE INTERNAL "")
    set(SDL_VIDEO FALSE CACHE INTERNAL "")

    set(SDL_3DNOW FALSE CACHE INTERNAL "")
    set(SDL_MMX FALSE CACHE INTERNAL "")
    set(SDL_VIRTUAL_JOYSTICK FALSE CACHE INTERNAL "")

    FetchContent_Declare(SDL
        GIT_REPOSITORY https://github.com/libsdl-org/SDL.git
        GIT_TAG release-2.30.2
        GIT_SHALLOW TRUE
        GIT_PROGRESS TRUE
    )
    FetchContent_MakeAvailable(SDL)

    set(SDL2_FOUND TRUE PARENT_SCOPE)
endfunction()