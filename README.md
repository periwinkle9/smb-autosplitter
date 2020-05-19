# Super Mario Bros. Autosplitter
LiveSplit autosplitter for NES Super Mario Bros. (with partial support for FDS Super Mario Bros. 2, i.e. "SMB2J").

## Supported Emulators
Currently, the only supported emulators are:
- FCEUX 2.2.3
- Nestopia 1.40.

Mesen is not supported due to being banned for submission to the SRC leaderboards.
Bizhawk support is currently under investigation (contact me or submit a pull request if you know the memory addresses for Bizhawk!).

## Usage Instructions
1. Download the "SuperMarioBros.asl" file and place it somewhere safe on your computer.
2. Right-click LiveSplit, choose "Edit Layout...", and add a "Scriptable Auto Splitter" (under "Control").
3. Go to Layout Settings, click on the "Scriptable Auto Splitter" tab, click "Browse..." and select the file that you saved in Step 1.

Note: The autosplitter merely performs the splits for you. You will still have to set up the split names, etc. yourself.

## Known issues

- Title screen delays (i.e. starting the timer on reset/game select) is currently not supported. Start the timer manually if you are using a start delay.
- The autosplitter does not split perfectly (expect a variance of up to ~3 frames or so). As such, LiveSplit's sum of best calculation will be inaccurate even if all of your splits were done by this autosplitter. This one is on LiveSplit, not on me.
- Minus World Ending: The timing for the 1-2 split is later than usual.
- Both Quests: Splitting during second quest is currently not supported.
- Issues with SMB2J:
  * The timer does not start. You will have to start it manually.
  * The loading time between 4-4 and 5-1 is not removed.
  * Categories that go beyond World 8 are not supported at this time.
