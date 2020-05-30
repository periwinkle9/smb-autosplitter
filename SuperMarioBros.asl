// SMB1 autosplitter by periwinkle

state("fceux")
{
	byte screenTimer   : 0x3B1388, 0x7A0;
	byte worldNum      : 0x3B1388, 0x75F;
	byte levelNum      : 0x3B1388, 0x75C;
	byte gameEngineSub : 0x3B1388, 0xE;
	byte operMode      : 0x3B1388, 0x770;
	byte operModeTask  : 0x3B1388, 0x772;
}

// This one works too????
// The base address is different from the one that I see most FCEUX autosplitters using??
/*state("fceux")
{
	byte screenTimer   : 0x436B04, 0x7A0;
	byte worldNum      : 0x436B04, 0x75F;
	byte levelNum      : 0x436B04, 0x75C;
	byte gameEngineSub : 0x436B04, 0xE;
	byte operMode      : 0x436B04, 0x770;
	byte operModeTask  : 0x436B04, 0x772;
}*/

state("nestopia")
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

init
{
	refreshRate = 60;
	vars.currentWorld = 0;
	vars.currentLevel = 0;
	
	Action update = () =>
		{
			print(String.Format("Completed {0}-{1}", vars.currentWorld+1, vars.currentLevel+1));
			vars.currentWorld = current.worldNum;
			vars.currentLevel = current.levelNum;
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
	// Check for next level
	if (current.worldNum > vars.currentWorld || current.levelNum > vars.currentLevel)
	{
		// I *think* this should technically work in all cases...?
		bool levelStarted = (current.gameEngineSub == 7 || current.gameEngineSub == 8) &&
			old.gameEngineSub < current.gameEngineSub;
		
		// Check split setting
		if (settings["SplitLevelStart"]) // Split at next level start
		{
			if (levelStarted)
			{
				vars.updateProgress();
				return true;
			}
		}
		else // Split at black screen
		{
			// Detect warp zone usage and split at next level start
			if (current.worldNum > vars.currentWorld + 1 ||
				(current.worldNum == vars.currentWorld + 1 && vars.currentLevel < 3))
			{
				// Split at level start
				if (levelStarted)
				{
					vars.updateProgress();
					return true;
				}
			}
			else
			{
				// Split (approximately) at black screen
				if (current.screenTimer == 7 && old.screenTimer == 0)
				{
					vars.updateProgress();
					return true;
				}
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
}

update
{
	if (timer.CurrentPhase == TimerPhase.NotRunning)
	{
		vars.currentWorld = 0;
		vars.currentLevel = 0;
	}
}
