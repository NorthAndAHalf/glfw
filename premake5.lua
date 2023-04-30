project "GLFW"
    kind "StaticLib"
    language "C"
<<<<<<< HEAD
    staticruntime "on"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    
    files
    {
=======
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
>>>>>>> b4b43190ce623f1a75c94f7100c2d5b0b7bbb4f8
        "include/GLFW/glfw3.h",
        "include/GLFW/glfw3native.h",
        "src/glfw_config.h",
        "src/context.c",
        "src/init.c",
        "src/input.c",
        "src/monitor.c",
        "src/vulkan.c",
        "src/window.c"
    }
    
	filter "system:windows"
<<<<<<< HEAD
        systemversion "latest"
=======
        buildoptions { "-std=c11", "-lgdi32" }
        systemversion "10.0.17134.0"
        staticruntime "On"
>>>>>>> b4b43190ce623f1a75c94f7100c2d5b0b7bbb4f8
        
        files
        {
            "src/win32_init.c",
            "src/win32_joystick.c",
            "src/win32_monitor.c",
            "src/win32_time.c",
            "src/win32_thread.c",
            "src/win32_window.c",
            "src/wgl_context.c",
            "src/egl_context.c",
            "src/osmesa_context.c"
        }

<<<<<<< HEAD
        defines 
        { 
            "_GLFW_WIN32",
            "_CRT_SECURE_NO_WARNINGS"
        }
        
        filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
        
        filter "configurations:Release"
        runtime	"Release"
        optimize "on"
=======
		defines 
		{ 
            "_GLFW_WIN32",
            "_CRT_SECURE_NO_WARNINGS"
		}
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
>>>>>>> b4b43190ce623f1a75c94f7100c2d5b0b7bbb4f8