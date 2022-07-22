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

state("fceux", "2.4.0")
{
	byte screenTimer   : 0x44DCD8, 0x7A0;
	byte worldNum      : 0x44DCD8, 0x75F;
	byte levelNum      : 0x44DCD8, 0x75C;
	byte gameEngineSub : 0x44DCD8, 0xE;
	byte operMode      : 0x44DCD8, 0x770;
	byte operModeTask  : 0x44DCD8, 0x772;
}

// FCEUX 2.5.0 and 2.6.3 have the same base RAM address
state("fceux", "2.5.0/2.6.3")
{
	byte screenTimer   : 0x3DA4EC, 0x7A0;
	byte worldNum      : 0x3DA4EC, 0x75F;
	byte levelNum      : 0x3DA4EC, 0x75C;
	byte gameEngineSub : 0x3DA4EC, 0xE;
	byte operMode      : 0x3DA4EC, 0x770;
	byte operModeTask  : 0x3DA4EC, 0x772;
}

// FCEUX 2.6.1 and 2.6.2 have the same base RAM address
state("fceux", "2.6.1/2")
{
	byte screenTimer   : 0x3DA4DC, 0x7A0;
	byte worldNum      : 0x3DA4DC, 0x75F;
	byte levelNum      : 0x3DA4DC, 0x75C;
	byte gameEngineSub : 0x3DA4DC, 0xE;
	byte operMode      : 0x3DA4DC, 0x770;
	byte operModeTask  : 0x3DA4DC, 0x772;
}

state("qfceux", "2.6.1")
{
	byte screenTimer   : 0x30DD70, 0x7A0;
	byte worldNum      : 0x30DD70, 0x75F;
	byte levelNum      : 0x30DD70, 0x75C;
	byte gameEngineSub : 0x30DD70, 0xE;
	byte operMode      : 0x30DD70, 0x770;
	byte operModeTask  : 0x30DD70, 0x772;
}

state("qfceux", "2.6.2")
{
	byte screenTimer   : 0x30ED70, 0x7A0;
	byte worldNum      : 0x30ED70, 0x75F;
	byte levelNum      : 0x30ED70, 0x75C;
	byte gameEngineSub : 0x30ED70, 0xE;
	byte operMode      : 0x30ED70, 0x770;
	byte operModeTask  : 0x30ED70, 0x772;
}

state("qfceux", "2.6.3")
{
	byte screenTimer   : 0x318330, 0x7A0;
	byte worldNum      : 0x318330, 0x75F;
	byte levelNum      : 0x318330, 0x75C;
	byte gameEngineSub : 0x318330, 0xE;
	byte operMode      : 0x318330, 0x770;
	byte operModeTask  : 0x318330, 0x772;
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

state("nestopia", "1.51.1")
{
	// base 0x0000 address of ROM: "nestopia.exe", 0x17A8EC, 0, 0x70
	byte screenTimer   : "nestopia.exe", 0x17A8EC, 0, 0x810;
	byte worldNum      : "nestopia.exe", 0x17A8EC, 0, 0x7CF;
	byte levelNum      : "nestopia.exe", 0x17A8EC, 0, 0x7CC;
	byte gameEngineSub : "nestopia.exe", 0x17A8EC, 0, 0x7E;
	byte operMode      : "nestopia.exe", 0x17A8EC, 0, 0x7E0;
	byte operModeTask  : "nestopia.exe", 0x17A8EC, 0, 0x7E2;
}

state("Mesen", "0.0.4")
{
	// base 0x0000 address of ROM: "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0
	byte screenTimer   : "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0x7A0;
	byte worldNum      : "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0x75F;
	byte levelNum      : "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0x75C;
	byte gameEngineSub : "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0xE;
	byte operMode      : "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0x770;
	byte operModeTask  : "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0x772;
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

init
{
	// modules.First() sometimes points to ntdll.dll instead of the actual game's executable.
	// Hopefully retrying the init function fixes that...?
	if (modules.First().ModuleName != game.ProcessName + ".exe")
	{
		print("THE THING HAPPENED!!! kosmicMad (retrying init)");
		throw new Exception("init - module not found");
	}
	
	int memSize = modules.First().ModuleMemorySize;
	
	if (game.ProcessName == "nestopia")
	{
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
				version = "1.51.1";
				break;
			default:
				print("Unrecognized Nestopia version! (ModuleMemorySize = " + memSize + ")");
				version = "";
				break;
		}
	}
	else if (game.ProcessName == "fceux")
	{
		switch (memSize)
		{
			case 4747264:
				print("Detected FCEUX 2.2.3");
				version = "2.2.3";
				break;
			case 5877760:
				print("Detected FCEUX 2.3.0");
				version = "2.3.0";
				break;
			case 6705152:
				print("Detected FCEUX 2.4.0");
				version = "2.4.0";
				break;
			case 6303744:
			{
				// Unfortunately for us, FCEUX 2.5.0, 2.6.1, and 2.6.2 have the same ModuleMemorySize
				// So we need a better way to distinguish between them
				byte[] hash;
				using (var m = System.Security.Cryptography.SHA1.Create())
				{
					using (var s = File.Open(modules.First().FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
						hash = m.ComputeHash(s);
				}
				var hashStr = hash.Select(x => x.ToString("X2")).Aggregate((a,b) => a+b);
				print("SHA1 hash: " + hashStr);
				
				if (hashStr == "6E5D8D8164C6987B6C82890DEAF08505823AAB43" || hashStr == "761457488E3E0BAC68A9A9164DFFCA2E5D25B6EC")
				{
					print("Detected FCEUX 2.5.0/2.6.3");
					version = "2.5.0/2.6.3";
				}
				else if (hashStr == "00D71187B3653DC2B30593D8C9024C4F3C1AF58D")
				{
					print("Detected FCEUX 2.6.1");
					version = "2.6.1/2";
				}
				else if (hashStr == "4E99DBAA10F1634CF470A8200835925B265D9BEF")
				{
					print("Detected FCEUX 2.6.2");
					version = "2.6.1/2";
				}
				else
					goto default;
				
				break;
			}
			default:
				print("Unrecognized FCEUX version! (ModuleMemorySize = " + memSize + ")");
				version = "";
				break;
		}
	}
	else if (game.ProcessName == "qfceux")
	{
		if (memSize == 16080896)
		{
			print("Detected FCEUX (Qt/SDL) 2.6.1");
			version = "2.6.1";
		}
		else if (memSize == 16084992)
		{
			print("Detected FCEUX (Qt/SDL) 2.6.2");
			version = "2.6.2";
		}
		else if (memSize == 16121856)
		{
			print("Detected FCEUX (Qt/SDL) 2.6.3");
			version = "2.6.3";
		}
		else
		{
			print("Unrecognized qFCEUX version! (ModuleMemorySize = " + memSize + ")");
			version = "";
		}
	}
	else if (game.ProcessName == "Mesen")
	{
		switch (memSize)
		{
			case 5226496:
				print("Detected Mesen 0.0.4");
				version = "0.0.4";
				break;
			case 5300224:
				print("Detected Mesen 0.0.5");
				version = "0.0.5";
				break;
			case 5283840:
				print("Detected Mesen 0.0.6");
				version = "0.0.6";
				break;
			default:
				print("Unrecognized Mesen version! (ModuleMemorySize = " + memSize + ")");
				version = "";
				break;
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
