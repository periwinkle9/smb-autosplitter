// SMB1 autosplitter by periwinkle

state("fceux", "2.2.3")
{
	byte screenTimer   : 0x3B1388, 0x7A0;
	byte worldNum      : 0x3B1388, 0x75F;
	byte levelNum      : 0x3B1388, 0x75C;
	byte gameEngineSub : 0x3B1388, 0xE;
	byte operMode      : 0x3B1388, 0x770;
	byte operModeTask  : 0x3B1388, 0x772;
}

state("fceux", "2.3.0")
{
	byte screenTimer   : 0x44962C, 0x7A0;
	byte worldNum      : 0x44962C, 0x75F;
	byte levelNum      : 0x44962C, 0x75C;
	byte gameEngineSub : 0x44962C, 0xE;
	byte operMode      : 0x44962C, 0x770;
	byte operModeTask  : 0x44962C, 0x772;
}

state("nestopia", "1.40")
{
	// base 0x0000 address of ROM : "nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0x68;
	// just add your fceux offset to 0x68 to get the final nestopia offset
	// ^ I didn't write this btw, but it's pretty useful info so I left it in :)
	byte screenTimer   : "nestopia.exe", 0x1B2BCC, 0, 8, 0xC, 0xC, 0x808;
	byte worldNum      : "nestopia.exe", 0x1B2BCC, 0, 8, 0xC, 0xC, 0x7C7;
	byte levelNum      : "nestopia.exe", 0x1B2BCC, 0, 8, 0xC, 0xC, 0x7C4;
	byte gameEngineSub : "nestopia.exe", 0x1B2BCC, 0, 8, 0xC, 0xC, 0x76;
	byte operMode      : "nestopia.exe", 0x1B2BCC, 0, 8, 0xC, 0xC, 0x7D8;
	byte operModeTask  : "nestopia.exe", 0x1B2BCC, 0, 8, 0xC, 0xC, 0x7DA;
}

state("nestopia", "1.50")
{
	// base 0x0000 address of ROM: "nestopia.exe", 0x1788EC, 0, 0x70
	byte screenTimer   : "nestopia.exe", 0x1788EC, 0, 0x810;
	byte worldNum      : "nestopia.exe", 0x1788EC, 0, 0x7CF;
	byte levelNum      : "nestopia.exe", 0x1788EC, 0, 0x7CC;
	byte gameEngineSub : "nestopia.exe", 0x1788EC, 0, 0x7E;
	byte operMode      : "nestopia.exe", 0x1788EC, 0, 0x7E0;
	byte operModeTask  : "nestopia.exe", 0x1788EC, 0, 0x7E2;
}

init
{
	// modules.First() sometimes points to ntdll.dll instead of the actual game's executable.
	// An attempt has been made to work around that.
	// Hopefully it works well enough...
	int memSize = modules.First().ModuleMemorySize;
	
	if (game.ProcessName == "nestopia")
	{
		// Extra check for the product version in the case of v1.40 because why not
		// (Unfortunately, the product version in the v1.50 UE executable is just "x.xx").
		string prodVersion = modules.First().FileVersionInfo.ProductVersion;
		if (modules.First().ModuleName != "nestopia.exe") // Workaround for modules.First() bug
		{
			print("THE BUG HAPPENED!!! kosmicMad\n(game.MainModule: " + game.MainModule.ModuleName + ")");
			// The LiveSplit ASL documentation strongly recommends using modules.First()
			// instead of game.MainModule.
			// But, you know what, sometimes I don't have a choice. Sorry :(
			memSize = game.MainModule.ModuleMemorySize;
			prodVersion = game.MainModule.FileVersionInfo.ProductVersion;
		}
		if (memSize == 1953792) // Nestopia UE v1.50
		{
			print("Detected Nestopia UE v1.50");
			version = "1.50";
		}
		else if (memSize == 2113536 && prodVersion == "1.40") // Nestopia v1.40
		{
			print("Detected Nestopia v1.40");
			version = "1.40";
		}
		else
		{
			print("Unrecognized Nestopia version!");
			version = "";
		}
	}
	else if (game.ProcessName == "fceux")
	{
		if (modules.First().ModuleName != "fceux.exe") // Bug workaround
		{
			print("THE BUG HAPPENED!!! kosmicMad\n(game.MainModule: " + game.MainModule.ModuleName + ")");
			memSize = game.MainModule.ModuleMemorySize;
		}
		
		if (memSize == 4747264)
		{
			print("Detected FCEUX 2.2.3");
			version = "2.2.3";
		}
		else if (memSize == 5877760)
		{
			print("Detected FCEUX 2.3.0");
			version = "2.3.0";
		}
		else
		{
			print("Unrecognized FCEUX version!");
			version = "";
		}
	}
	
	refreshRate = 60;
	vars.currentWorld = 0;
	vars.currentLevel = 0;
	
	Action<byte, byte> update = (world, level) =>
		{
			print(String.Format("Completed {0}-{1}", vars.currentWorld+1, vars.currentLevel+1));
			print(String.Format("Now playing World {0}-{1}", world+1, level+1));
			vars.currentWorld = world;
			vars.currentLevel = level;
		};
	vars.updateProgress = update;
}

startup
{
	settings.Add("SplitLevelStart", false, "Split at level start instead of black screen");
}

start
{
	// Hopefully this is a good enough set of conditions for most people
	if (current.worldNum == 0 && current.levelNum == 0 &&
		current.gameEngineSub == 8 && old.gameEngineSub < 8 &&
		current.operMode == 1 && current.operModeTask >= 3)
	{
		// If you know where to go to see this message, you deserve a kosmicZ
		print("Starting! GLHF kosmicZ /");
		return true;
	}
}

split
{
	bool shouldSplit = false;
	
	// Check for next level
	if (current.worldNum > vars.currentWorld || current.levelNum > vars.currentLevel)
	{
		// I *think* this should technically work in all cases...?
		bool levelStarted = (current.gameEngineSub == 7 || current.gameEngineSub == 8) &&
			old.gameEngineSub < current.gameEngineSub;
		
		// Check split setting
		if (settings["SplitLevelStart"]) // Split at next level start
		{
			shouldSplit = levelStarted;
		}
		else // Split at black screen
		{
			// Detect warp zone usage and split at next level start
			if (current.worldNum > vars.currentWorld + 1 ||
				(current.worldNum == vars.currentWorld + 1 && vars.currentLevel < 3))
			{
				// Split at level start
				shouldSplit = levelStarted;
			}
			else
			{
				// Split (approximately) at black screen
				shouldSplit = (current.screenTimer == 7 && old.screenTimer == 0);
			}
		}
	}
	else
	{
		// Check for axe
		if (current.worldNum >= 7 && current.operMode == 2 && old.operMode != 2)
		{
			print("GG");
			return true;
		}
	}
	
	if (shouldSplit)
		vars.updateProgress(current.worldNum, current.levelNum);
	
	return shouldSplit;
}

update
{
	if (version == "") return false;
	
	if (timer.CurrentPhase == TimerPhase.NotRunning)
	{
		vars.currentWorld = 0;
		vars.currentLevel = 0;
	}
}
