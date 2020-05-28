# Super Mario Bros. Autosplitter
LiveSplit autosplitter for NES/FDS Super Mario Bros. (with partial support for FDS Super Mario Bros. 2, a.k.a. "SMB2J").

## Supported Emulators
Currently, the only supported emulators are:
- FCEUX 2.2.3
- Nestopia 1.40.

Other versions of the above emulators may not work (Nestopia UE in particular is not currently supported).

Mesen is not supported due to being banned for submission to the SRC leaderboards.

Bizhawk support is currently under investigation (contact me or submit a pull request if you know the memory addresses for Bizhawk!).

## Supported Speedrun Categories
The autosplitter *should* fully work in most categories that start in 1-1 and end by touching an axe in a world numbered 8 or higher.
These include:
- Any%
- Warpless
- Minus World Ending (FDS)
- Glitchless
- 1 Warp
- Other categories starting in 1-1 and ending in 8-4.

Additionally, these categories *may* partially work:
- Beat 5-4: The final split will have to be hit manually
- Minus World (NES/FC): The final split will have to be hit manually
- SMB2J categories: The timer will have to be started manually; see "Known Issues" below.
  * Any% 8-4
  * Warpless 8-4
  * A-D Any%/Warpless: Some splits may be incorrect (due to the autosplitter assuming that you start in World 1).

Other categories will not be properly supported:
- Both Quests: The timer will not split during second quest
- 8-4 IL
- Category extensions that don't complete the game, such as 1-1 as Fire Mario, Softlock, 10 Walljumps, etc.

## Usage Instructions
1. Download the "SuperMarioBros.asl" file and place it somewhere safe on your computer.
2. Right-click LiveSplit, choose "Edit Layout...", and add a "Scriptable Auto Splitter" component (under "Control").
3. Go to Layout Settings, click on the "Scriptable Auto Splitter" tab, click "Browse..." and select the file that you saved in Step 1.

Note: The autosplitter does not create any splits for you; it merely presses the button at the right times.
You will still have to set up split names, other layout settings, etc. yourself.

## Known Issues

- Title screen delays (i.e. starting the timer on reset/game select) is currently not supported. Start the timer manually if you are using a start delay.
- The autosplitter does not split perfectly (expect a variance of up to ~3 frames or so). As such, LiveSplit's sum of best calculation will be inaccurate even if all of your splits were done by this autosplitter. This one is on LiveSplit, not on me.
- Both Quests: Splitting during second quest is currently not supported.
- Issues with SMB2J:
  * The timer does not start. You will have to start it manually.
  * Load times (e.g. between 4-4 and 5-1) are not removed.
  * Categories that go beyond World 8 are not officially supported at this time (but may mostly work anyways. Use at your own discretion)
