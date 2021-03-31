# PegasusHelper

## What does this do?
This is a series of compiled scripts that make the Pegasus experience on Windows a little more pleasing.

- Hide the desktop when launching games limiting immersion breaking
- Seamlessly return to Pegasus without seeing the desktop
- Optional Windows launcher to help with launching Steam games

## How to use
Download the latest zip from the releases page and unzip directly into your Pegasus config directory. It should look like config\scripts with all the files and directories needed already set up.

## PegasusWindowsLauncher
PegasusWindowsLauncher.exe is primarily intended for those that wish to manage their Steam games via LaunchBox. Simply set up a new emulator in LaunchBox called Steam (or whatever you like), with the default launch paramaters as -s, and make sure to check "Use file name only without file extension" and set it to be the default emulator for Steam. Import your Steam games using LaunchBox's built in Steam import tool and set the Platform to Steam (enter it manually if you don't have one) but scrape as Windows.

![LaunchBox setup](https://i.imgur.com/qiRYihO.png)
![LaunchBox setup](https://i.imgur.com/wHjl9re.png)

## Caveats
With PegasusWindowsLauncher, it currently waits for 10 seconds before it is able to recognise the game. For this reason, if you exit the game quickly (ie before 10 seconds after launching), or if the game takes longer than 10 seconds to start (say, it has to install Steam redists or it has a launcher) it won't exit gracefully. This is being worked on and will hopefully be solved in future versions.

## Version history
v0.1
- Initial release