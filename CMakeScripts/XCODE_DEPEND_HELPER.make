# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.MCOneWeek.Debug:
PostBuild.glad.Debug: /Users/milantiejiang/XCodeProject/MineCraft/mc/Debug/MCOneWeek
/Users/milantiejiang/XCodeProject/MineCraft/mc/Debug/MCOneWeek:\
	/Users/milantiejiang/XCodeProject/MineCraft/mc/Debug/libglad.a\
	/opt/local/lib/libsfml-graphics.dylib\
	/opt/local/lib/libsfml-network.dylib\
	/opt/local/lib/libsfml-audio.dylib\
	/opt/local/lib/libsfml-window.dylib\
	/opt/local/lib/libsfml-system.dylib
	/bin/rm -f /Users/milantiejiang/XCodeProject/MineCraft/mc/Debug/MCOneWeek


PostBuild.glad.Debug:
/Users/milantiejiang/XCodeProject/MineCraft/mc/Debug/libglad.a:
	/bin/rm -f /Users/milantiejiang/XCodeProject/MineCraft/mc/Debug/libglad.a


PostBuild.MCOneWeek.Release:
PostBuild.glad.Release: /Users/milantiejiang/XCodeProject/MineCraft/mc/Release/MCOneWeek
/Users/milantiejiang/XCodeProject/MineCraft/mc/Release/MCOneWeek:\
	/Users/milantiejiang/XCodeProject/MineCraft/mc/Release/libglad.a\
	/opt/local/lib/libsfml-graphics.dylib\
	/opt/local/lib/libsfml-network.dylib\
	/opt/local/lib/libsfml-audio.dylib\
	/opt/local/lib/libsfml-window.dylib\
	/opt/local/lib/libsfml-system.dylib
	/bin/rm -f /Users/milantiejiang/XCodeProject/MineCraft/mc/Release/MCOneWeek


PostBuild.glad.Release:
/Users/milantiejiang/XCodeProject/MineCraft/mc/Release/libglad.a:
	/bin/rm -f /Users/milantiejiang/XCodeProject/MineCraft/mc/Release/libglad.a


PostBuild.MCOneWeek.MinSizeRel:
PostBuild.glad.MinSizeRel: /Users/milantiejiang/XCodeProject/MineCraft/mc/MinSizeRel/MCOneWeek
/Users/milantiejiang/XCodeProject/MineCraft/mc/MinSizeRel/MCOneWeek:\
	/Users/milantiejiang/XCodeProject/MineCraft/mc/MinSizeRel/libglad.a\
	/opt/local/lib/libsfml-graphics.dylib\
	/opt/local/lib/libsfml-network.dylib\
	/opt/local/lib/libsfml-audio.dylib\
	/opt/local/lib/libsfml-window.dylib\
	/opt/local/lib/libsfml-system.dylib
	/bin/rm -f /Users/milantiejiang/XCodeProject/MineCraft/mc/MinSizeRel/MCOneWeek


PostBuild.glad.MinSizeRel:
/Users/milantiejiang/XCodeProject/MineCraft/mc/MinSizeRel/libglad.a:
	/bin/rm -f /Users/milantiejiang/XCodeProject/MineCraft/mc/MinSizeRel/libglad.a


PostBuild.MCOneWeek.RelWithDebInfo:
PostBuild.glad.RelWithDebInfo: /Users/milantiejiang/XCodeProject/MineCraft/mc/RelWithDebInfo/MCOneWeek
/Users/milantiejiang/XCodeProject/MineCraft/mc/RelWithDebInfo/MCOneWeek:\
	/Users/milantiejiang/XCodeProject/MineCraft/mc/RelWithDebInfo/libglad.a\
	/opt/local/lib/libsfml-graphics.dylib\
	/opt/local/lib/libsfml-network.dylib\
	/opt/local/lib/libsfml-audio.dylib\
	/opt/local/lib/libsfml-window.dylib\
	/opt/local/lib/libsfml-system.dylib
	/bin/rm -f /Users/milantiejiang/XCodeProject/MineCraft/mc/RelWithDebInfo/MCOneWeek


PostBuild.glad.RelWithDebInfo:
/Users/milantiejiang/XCodeProject/MineCraft/mc/RelWithDebInfo/libglad.a:
	/bin/rm -f /Users/milantiejiang/XCodeProject/MineCraft/mc/RelWithDebInfo/libglad.a




# For each target create a dummy ruleso the target does not have to exist
/Users/milantiejiang/XCodeProject/MineCraft/mc/Debug/libglad.a:
/Users/milantiejiang/XCodeProject/MineCraft/mc/MinSizeRel/libglad.a:
/Users/milantiejiang/XCodeProject/MineCraft/mc/RelWithDebInfo/libglad.a:
/Users/milantiejiang/XCodeProject/MineCraft/mc/Release/libglad.a:
/opt/local/lib/libsfml-audio.dylib:
/opt/local/lib/libsfml-graphics.dylib:
/opt/local/lib/libsfml-network.dylib:
/opt/local/lib/libsfml-system.dylib:
/opt/local/lib/libsfml-window.dylib:
