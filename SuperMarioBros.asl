// SMB1 autosplitter by periwinkle

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

state("nestopia", "1.51")
{
	// base 0x0000 address of ROM: "nestopia.exe", 0x1798EC, 0, 0x70
	byte screenTimer   : "nestopia.exe", 0x1798EC, 0, 0x810;
	byte worldNum      : "nestopia.exe", 0x1798EC, 0, 0x7CF;
	byte levelNum      : "nestopia.exe", 0x1798EC, 0, 0x7CC;
	byte gameEngineSub : "nestopia.exe", 0x1798EC, 0, 0x7E;
	byte operMode      : "nestopia.exe", 0x1798EC, 0, 0x7E0;
	byte operModeTask  : "nestopia.exe", 0x1798EC, 0, 0x7E2;
}

// Nestopia UE 1.51.1, 1.52.0, and 1.52.1 have the same base RAM address
state("nestopia", "1.51.1/1.52.x")
{
	// base 0x0000 address of ROM: "nestopia.exe", 0x17A8EC, 0, 0x70
	byte screenTimer   : "nestopia.exe", 0x17A8EC, 0, 0x810;
	byte worldNum      : "nestopia.exe", 0x17A8EC, 0, 0x7CF;
	byte levelNum      : "nestopia.exe", 0x17A8EC, 0, 0x7CC;
	byte gameEngineSub : "nestopia.exe", 0x17A8EC, 0, 0x7E;
	byte operMode      : "nestopia.exe", 0x17A8EC, 0, 0x7E0;
	byte operModeTask  : "nestopia.exe", 0x17A8EC, 0, 0x7E2;
}

state("nestopia", "1.53.x")
{
	// base 0x0000 address of ROM: "nestopia.exe", 0x17B8EC, 0, 0x70
	byte screenTimer   : "nestopia.exe", 0x17B8EC, 0, 0x810;
	byte worldNum      : "nestopia.exe", 0x17B8EC, 0, 0x7CF;
	byte levelNum      : "nestopia.exe", 0x17B8EC, 0, 0x7CC;
	byte gameEngineSub : "nestopia.exe", 0x17B8EC, 0, 0x7E;
	byte operMode      : "nestopia.exe", 0x17B8EC, 0, 0x7E0;
	byte operModeTask  : "nestopia.exe", 0x17B8EC, 0, 0x7E2;
}

state("nestopia", "1.53.11_RTA")
{
	// base 0x0000 address of ROM: "nestopia.exe", 0x17C62C, 0, 0x78
	byte screenTimer   : "nestopia.exe", 0x17C62C, 0, 0x818;
	byte worldNum      : "nestopia.exe", 0x17C62C, 0, 0x7D7;
	byte levelNum      : "nestopia.exe", 0x17C62C, 0, 0x7D4;
	byte gameEngineSub : "nestopia.exe", 0x17C62C, 0, 0x86;
	byte operMode      : "nestopia.exe", 0x17C62C, 0, 0x7E8;
	byte operModeTask  : "nestopia.exe", 0x17C62C, 0, 0x7EA;
}

state("nestopia", "1.53.12_RTA")
{
	// base 0x0000 address of ROM: "nestopia.exe", 0x17D65C, 0, 0x88
	byte screenTimer   : "nestopia.exe", 0x17D65C, 0, 0x828;
	byte worldNum      : "nestopia.exe", 0x17D65C, 0, 0x7E7;
	byte levelNum      : "nestopia.exe", 0x17D65C, 0, 0x7E4;
	byte gameEngineSub : "nestopia.exe", 0x17D65C, 0, 0x96;
	byte operMode      : "nestopia.exe", 0x17D65C, 0, 0x7F8;
	byte operModeTask  : "nestopia.exe", 0x17D65C, 0, 0x7FA;
}

state("nestopia", "1.53.13_RTA")
{
	// base 0x0000 address of ROM: "nestopia.exe", 0x17E65C, 0, 0x88
	byte screenTimer   : "nestopia.exe", 0x17E65C, 0, 0x828;
	byte worldNum      : "nestopia.exe", 0x17E65C, 0, 0x7E7;
	byte levelNum      : "nestopia.exe", 0x17E65C, 0, 0x7E4;
	byte gameEngineSub : "nestopia.exe", 0x17E65C, 0, 0x96;
	byte operMode      : "nestopia.exe", 0x17E65C, 0, 0x7F8;
	byte operModeTask  : "nestopia.exe", 0x17E65C, 0, 0x7FA;
}

state("Mesen", "0.0.5")
{
	// base 0x0000 address of ROM: "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0
	byte screenTimer   : "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0x7A0;
	byte worldNum      : "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0x75F;
	byte levelNum      : "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0x75C;
	byte gameEngineSub : "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0xE;
	byte operMode      : "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0x770;
	byte operModeTask  : "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0x772;
}

state("Mesen", "0.0.6")
{
	// base 0x0000 address of ROM: "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0
	byte screenTimer   : "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0x7A0;
	byte worldNum      : "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0x75F;
	byte levelNum      : "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0x75C;
	byte gameEngineSub : "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0xE;
	byte operMode      : "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0x770;
	byte operModeTask  : "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0x772;
}

state("Mesen", "0.0.7")
{
	// base 0x0000 address of ROM: "MesenCore.dll", 0x42F99D0, 0xB8, 0x58, 0
	byte screenTimer   : "MesenCore.dll", 0x42F99D0, 0xB8, 0x58, 0x7A0;
	byte worldNum      : "MesenCore.dll", 0x42F99D0, 0xB8, 0x58, 0x75F;
	byte levelNum      : "MesenCore.dll", 0x42F99D0, 0xB8, 0x58, 0x75C;
	byte gameEngineSub : "MesenCore.dll", 0x42F99D0, 0xB8, 0x58, 0xE;
	byte operMode      : "MesenCore.dll", 0x42F99D0, 0xB8, 0x58, 0x770;
	byte operModeTask  : "MesenCore.dll", 0x42F99D0, 0xB8, 0x58, 0x772;
}

state("Mesen", "0.0.4_RTA")
{
	// base 0x0000 address of ROM: "MesenCore.dll", 0x46CC688, 0x10, 0x40, 0x28, 0
	byte screenTimer   : "MesenCore.dll", 0x46CC688, 0x10, 0x40, 0x28, 0x7A0;
	byte worldNum      : "MesenCore.dll", 0x46CC688, 0x10, 0x40, 0x28, 0x75F;
	byte levelNum      : "MesenCore.dll", 0x46CC688, 0x10, 0x40, 0x28, 0x75C;
	byte gameEngineSub : "MesenCore.dll", 0x46CC688, 0x10, 0x40, 0x28, 0xE;
	byte operMode      : "MesenCore.dll", 0x46CC688, 0x10, 0x40, 0x28, 0x770;
	byte operModeTask  : "MesenCore.dll", 0x46CC688, 0x10, 0x40, 0x28, 0x772;
}

init
{
	// modules.First() sometimes points to ntdll.dll instead of the actual game's executable.
	// Hopefully retrying the init function fixes that...?
	if (modules.First().ModuleName != game.ProcessName + ".exe")
	{
		print("THE THING HAPPENED!!! kosmicMad (retrying init)");
		throw new Exception("init - module not found");
	}

	if (game.ProcessName == "nestopia")
	{
		int memSize = modules.First().ModuleMemorySize;
		// Extra check for the product version in the case of v1.40 because why not
		// (Unfortunately, the product version in the v1.50 UE executable is just "x.xx").
		string prodVersion = modules.First().FileVersionInfo.ProductVersion;

		switch (memSize)
		{
			case 2113536: // Nestopia v1.40
				if (prodVersion == "1.40")
				{
					print("Detected Nestopia v1.40");
					version = "1.40";
					break;
				}
				goto default;
			case 1953792: // Nestopia UE v1.50
				print("Detected Nestopia UE v1.50");
				version = "1.50";
				break;
			case 1966080: // Nestopia UE v1.51.0
				print("Detected Nestopia UE v1.51.0");
				version = "1.51";
				break;
			case 1970176: // Nestopia UE v1.51.1
				print("Detected Nestopia UE v1.51.1");
				version = "1.51.1/1.52.x";
				break;
			case 1974272: // Nestopia UE v1.52.0
				print("Detected Nestopia UE v1.52.0");
				version = "1.51.1/1.52.x";
				break;
			case 1957888: // Nestopia UE v1.52.1
				print("Detected Nestopia UE v1.52.1");
				version = "1.51.1/1.52.x";
				break;
			case 1961984: // Nestopia UE v1.53.x
				print("Detected Nestopia UE v1.53.x");
				version = "1.53.x";
				break;
			case 1978368: // NestopiaRTA 1.53.11
				print("Detected NestopiaRTA 1.53.11");
				version = "1.53.11_RTA";
				break;
			case 1982464: // NestopiaRTA 1.53.12
				print("Detected NestopiaRTA 1.53.12");
				version = "1.53.12_RTA";
				break;
			case 1986560: // NestopiaRTA 1.53.13
				print("Detected NestopiaRTA 1.53.13");
				version = "1.53.13_RTA";
				break;
			default:
				print("Unrecognized Nestopia version! memSize = " + memSize);
				version = "";
				break;
		}
	}
	else if (game.ProcessName == "Mesen")
	{
		var coreDLL = Array.Find(modules, x => x.ModuleName == "MesenCore.dll");
		if (coreDLL == null)
		{
			// This shouldn't happen...?
			print("MesenCore.dll isn't loaded?");
			throw new Exception("Couldn't find MesenCore.dll");
		}

		string hashStr;
		using (var sha1 = System.Security.Cryptography.SHA1.Create())
			using (var fs = File.OpenRead(coreDLL.FileName))
				hashStr = string.Concat(sha1.ComputeHash(fs).Select(b => b.ToString("X2")));

		switch (hashStr)
		{
			case "14FA1BA7082D7D7E01A38FF6E2EF60E478CAAD57":
				print("Detected Mesen 0.0.4");
				// I don't know why I thought the addresses were different before,
				// but 0.0.4 and 0.0.5 have the same addresses
				version = "0.0.5";
				break;
			case "CCD133A1ABBC7FF28131C8BC7AC4F5E25BE99EE8":
				print("Detected Mesen 0.0.5");
				version = "0.0.5";
				break;
			case "75854D0F3D474B96F3DD29C693EAEFDB733DB83F":
				print("Detected Mesen 0.0.6");
				version = "0.0.6";
				break;
			case "12BFF659191984F011E0F4FC5AC2900C929D5991":
				print("Detected Mesen 0.0.7");
				version = "0.0.7";
				break;
			case "041D76CAD05B7875156FC43A344E88F13AADACA8":
				print("Detected Mesen2RTA 0.0.4");
				version = "0.0.4_RTA";
				break;
			default:
				print("Unrecognized Mesen version! SHA1 = " + hashStr);
				version = "";
				break;
		}
	}

	vars.currentWorld = 0;
	vars.currentLevel = 0;
	vars.gameStarting = false;
	vars.levelCompletedTime = new TimeSpan(0);
	vars.isDelaySplitting = false;

	Action<byte, byte> update = (world, level) =>
		{
			vars.levelCompletedTime = timer.CurrentTime.RealTime;
			print(String.Format("Completed {0}-{1} at {2}", vars.currentWorld+1, vars.currentLevel+1, vars.levelCompletedTime));
			print(String.Format("Now playing World {0}-{1}", world+1, level+1));
			vars.currentWorld = world;
			vars.currentLevel = level;
		};
	vars.updateProgress = update;
}

startup
{
	settings.Add("SplitLevelStart", false, "Split at level start instead of black screen");
	settings.Add("DelaySplit", false, "Delay intermediate splits by 0.1s to simulate human reaction time");
	settings.Add("SplitOnlySomeLevels", false, "Only split for specific levels (select below)");
	settings.Add("Split4-2", false, "4-2 (warp to 8-1)", "SplitOnlySomeLevels");
	settings.Add("SplitAxe", false, "8-4", "SplitOnlySomeLevels");
}

start
{
	// Detect game start and set starting world/level accordingly
	if (current.operMode == 1 && old.operMode == 0)
	{
		vars.currentWorld = current.worldNum;
		vars.currentLevel = current.levelNum;
		vars.gameStarting = true;
		vars.isDelaySplitting = false;
		print(String.Format("Game started: Current level is {0}-{1}", vars.currentWorld+1, vars.currentLevel+1));
	}
	// Hopefully this is a good enough set of conditions for most people
	if (vars.gameStarting && current.gameEngineSub == 8 && old.gameEngineSub < 8 &&
		current.operMode == 1 && current.operModeTask >= 3)
	{
		// If you know where to go to see this message, you deserve a kosmicZ
		print("Starting! GLHF kosmicZ /");
		return true;
	}
}

split
{
	if (vars.isDelaySplitting)
	{
		if (timer.CurrentTime.RealTime - vars.levelCompletedTime > TimeSpan.FromMilliseconds(100))
		{
			vars.isDelaySplitting = false;
			return true;
		}
		else
			return false;
	}
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
				// (Check for black screen timer >= 6 instead of == 7, in case the level
				// is finished with R00 and LiveSplit doesn't catch the one frame that
				// the timer is 7)
				shouldSplit = (current.screenTimer >= 6 && old.screenTimer == 0);
			}
		}
	}
	else
	{
		// Check for axe
		if (current.worldNum >= 7 && current.operMode == 2 && old.operMode != 2)
		{
			print("GG");
			return !settings["SplitOnlySomeLevels"] || settings["SplitAxe"];
		}
	}

	if (shouldSplit)
	{
		shouldSplit = !settings["SplitOnlySomeLevels"] || (settings["Split4-2"] && current.worldNum == 7 && vars.currentWorld == 3);
		vars.updateProgress(current.worldNum, current.levelNum);
		if (shouldSplit && settings["DelaySplit"])
		{
			vars.isDelaySplitting = true;
			shouldSplit = false; // Don't split now
		}
	}

	return shouldSplit;
}

update
{
	if (version == "") return false;
}

onReset
{
	vars.currentWorld = 0;
	vars.currentLevel = 0;
	vars.gameStarting = false;
	print("Resetting...");
}
