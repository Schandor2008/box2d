project "box2d"
	kind "StaticLib"
	language "C++"
	systemversion "latest"
	staticruntime "On"

	targetdir (vartargetdir .. "/%{prj.name}")
	objdir (varobjdir .. "/%{prj.name}")

	files {
		"include/box2d/**.h",
		"include/box2d/**.cpp",
		"src/**.h",
		"src/**.cpp"
	}

	includedirs {
		"include", 
		"src"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"