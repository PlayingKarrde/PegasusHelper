# PegasusHelper

## What does this do?
This is a series of compiled scripts that make the Pegasus experience on Windows a little more pleasing.

- Hide the desktop when launching games limiting immersion breaking
- Seamlessly return to Pegasus without seeing the desktop
- Optional Windows launcher to help with launching Steam games

## How to use
Download the latest zip from the releases page and unzip directly into your Pegasus directory. Run Pegasus with the LaunchPegasus.exe.

Launch commands that work with Pegasus can be used with LaunchPegasus.exe also. For example 

LaunchPegasus.exe 

## PegasusGamesLauncher
PegasusGamesLauncher.exe is primarily intended for those that wish to manage their Steam games via LaunchBox. This allows for the curation of Steam metadata and art/videos as well as allow Pegasus to track time played for Steam games. 

Simply set up a new emulator in LaunchBox called Steam (or whatever you like), with the default launch paramaters as -s, and make sure to check "Use file name only without file extension" and set it to be the default emulator for Steam. Import your Steam games using LaunchBox's built in Steam import tool and set the Platform to Steam (enter it manually if you don't have one) but scrape as Windows.

![LaunchBox setup](https://i.imgur.com/qiRYihO.png)
![LaunchBox setup](https://i.imgur.com/wHjl9re.png)

## Caveats
PegasusGamesLauncher needs 10 seconds after loading in order to read the active window. Therefore if you exit the game quickly after launching, or the game takes longer than 10 seconds to load, the program won't exit correctly and will need to be force closed to restore Pegasus. This is being worked on for future versions.

## Version history
v0.3
- Adding support for Pegasus launch commands

v0.2
- Simplified experience so only one file is needed for the seamless experience
- Archived older scripts method
- Renamed PegasusWindowsLauncher.exe to PegasusGamesLauncher.exe to avoid confusion with the new LaunchPegasus.exe

v0.1
- Initial release