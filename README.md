PKGBUILD recips for MSYS2.

bgfx directory contain recipes for https://github.com/bkaradzic/bgfx.git repo.
bgfx.cmake directory contain recipes for https://github.com/bkaradzic/bgfx.cmake.git repo.

There is two builds:
	bgfx - Release striped
	bgfxd - Debug no striped

Both with tools and examples enabled in option. But in bgfx directory installing
can't remove current config from installed file names but create examples executables.
In bgfx.cmake installing properly naming files but building can't create examples.

Last clone of bgfx.cmake don't works on my Windows 7 with compilation error 
somewhere on "... rpch.h ... bla ... bla".
That is a tag of bgfx.cmake wich works on my machine.
https://github.com/bkaradzic/bgfx.cmake/releases/tag/v1.115.7933-417f8b8

Both with tools and examples.