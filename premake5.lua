project "Box2D"
	kind "StaticLib" -- A static Library .lib
	language "C++"
	cppdialect "C++11"
	staticruntime "off"

	-- Output dir e.g.: "~\2D-Builder\bin\Dist\Windows\x64\2D-Builder"
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	-- Include files
	files
	{
		"src/**.h",
		"src/**.cpp",
		"include/**.h"
	}

	-- Include paths for other directories
	includedirs{
		"include",
		"src"
	}

	-- Windows
	filter "system:windows"
		systemversion "latest"

	-- Debug Configs
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	-- Release Configs
	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	-- Distribution Configs	
	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
    symbols "off"