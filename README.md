# Super Mario Bros. Autosplitter
LiveSplit autosplitter for NES/FDS Super Mario Bros. (with partial support for FDS Super Mario Bros. 2, a.k.a. "SMB2J").

## Supported Emulators
Currently, the following emulators are supported:
- [FCEUX](https://fceux.com/web/home.html) (Win32 binaries), versions:
  * [2.2.3](https://sourceforge.net/projects/fceultra/files/Binaries/2.2.3/fceux-2.2.3-win32.zip/download)
  * [2.3.0](https://sourceforge.net/projects/fceultra/files/Binaries/2.3.0/fceux-2.3.0-win32.zip/download)
  * [2.4.0](https://sourceforge.net/projects/fceultra/files/Binaries/2.4.0/fceux-2.4.0-win32.zip/download)
  * [2.5.0](https://sourceforge.net/projects/fceultra/files/Binaries/2.5.0/fceux-2.5.0-win32.zip/download)
  * [2.6.1](https://sourceforge.net/projects/fceultra/files/Binaries/2.6.1/fceux-2.6.1-win32.zip/download)
  * [2.6.2](https://sourceforge.net/projects/fceultra/files/Binaries/2.6.2/fceux-2.6.2-win32.zip/download)
  * [2.6.3](https://sourceforge.net/projects/fceultra/files/Binaries/2.6.3/fceux-2.6.3-win32.zip/download)
  * [2.6.4](https://sourceforge.net/projects/fceultra/files/Binaries/2.6.4/fceux-2.6.4-win32.zip/download)
- FCEUX (Qt/SDL binaries), versions:
  * [2.6.1](https://sourceforge.net/projects/fceultra/files/Binaries/2.6.1/qfceux-2.6.1-win64.zip/download)
  * [2.6.2](https://sourceforge.net/projects/fceultra/files/Binaries/2.6.2/qfceux-2.6.2-win64.zip/download)
  * [2.6.3](https://sourceforge.net/projects/fceultra/files/Binaries/2.6.3/qfceux-2.6.3-win64.zip/download)
  * [2.6.4](https://sourceforge.net/projects/fceultra/files/Binaries/2.6.4/qfceux-2.6.4-win64.zip/download)
- [Nestopia](http://nestopia.sourceforge.net/), version [1.40](http://prdownloads.sourceforge.net/nestopia/Nestopia140bin.zip?download)
- [Nestopia UE](http://0ldsk00l.ca/nestopia/), versions:
  * [1.50](https://sourceforge.net/projects/nestopiaue/files/1.50/nestopia_1.50-win32.zip/download)
  * [1.51.0](https://sourceforge.net/projects/nestopiaue/files/1.51/nestopia_1.51.0-win32.zip/download)
  * [1.51.1](https://sourceforge.net/projects/nestopiaue/files/1.51/nestopia_1.51.1-win32.zip/download)
- [Mesen](https://github.com/threecreepio/mesenrta) (threecreepio's RTA fork), versions:
  * [0.0.4](https://github.com/threecreepio/mesenrta/releases/tag/0.0.4)
  * [0.0.5](https://github.com/threecreepio/mesenrta/releases/tag/0.0.5)
  * [0.0.6](https://github.com/threecreepio/mesenrta/releases/tag/0.0.6).

Other versions of the above emulators probably will not work.

Bizhawk is currently not supported.

## Supported Speedrun Categories
The autosplitter *should* fully work in most categories that start from the title screen and end by touching an axe in a world numbered 8 or higher.
These include:
- Any%
- Warpless
- Minus World Ending (FDS)
- Glitchless
- 1 Warp
- SMB2J categories (note: load time removal is not currently supported; see "Known Issues" below):
  * Any% 8-4
  * Warpless 8-4
- Other categories starting in 1-1 and ending in 8-4.

Additionally, these categories *may* partially work:
- Beat 5-4: The final split will have to be hit manually
- Minus World (NES/FC): The final split will have to be hit manually
- SMB2J A-D categories: Untested, but should at least partially work although the final split may have to be hit manually

Other categories will not be properly supported:
- Both Quests: The timer will not split during second quest
- 8-4 IL
- Category extensions that don't complete the game, such as 1-1 as Fire Mario, Softlock, 10 Walljumps, etc.
- Other categories that start in the middle of a level or otherwise not from pressing start on the title screen.

## Usage Instructions
**This autosplitter can now be activated from within LiveSplit. Go to "Edit Splits", make sure the game name is set to "Super Mario Bros.", and click "Activate".**

Alternatively, you can download the autosplitter manually and activate it as follows:

0. Make sure you do not have any autosplitters activated under the "Edit Splits" window (you will get double splits otherwise).
1. Download the "[SuperMarioBros.asl](https://github.com/periwinkle9/smb-autosplitter/raw/master/SuperMarioBros.asl)" file and place it somewhere safe on your computer.
2. Right-click LiveSplit, choose "Edit Layout...", and add a "Scriptable Auto Splitter" component (under "Control").
3. Go to Layout Settings, click on the "Scriptable Auto Splitter" tab, click "Browse..." and select the file that you saved in Step 1.

Note: The autosplitter does not create any splits for you; it merely presses the button at the right times.
You will still have to set up split names, other layout settings, etc. yourself.

## Known Issues

- Title screen delays (i.e. starting the timer on reset/game select) are currently not supported. Start the timer manually if you are using a start delay.
- The autosplitter does not split perfectly (expect a variance of up to ~3 frames or so). As such, LiveSplit's sum of best calculation will be inaccurate even if all of your splits were done by this autosplitter. This one is on LiveSplit, not on me.
- Both Quests: Splitting during second quest is currently not supported.
- Issues with SMB2J:
  * Load times (e.g. between 4-4 and 5-1) are not removed.
  * Categories that go beyond World 8 are not officially supported at this time.
