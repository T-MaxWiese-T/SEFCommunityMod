# SEF Community Mod
Feel free to make Pull Request requests or open issues to create the best SEF mod ever.

# INTRODUCTION #

SWAT 4 is a fantastic, if horrendously bugged product. I've spent countless hours playing the game, mostly in CO-OP on servers new and old, and there always seemed to be a glimmer of potential that has never been truly realized by games that followed it.

The best way to explain SWAT: Elite Force Community Mod in short is a complete overhaul of the original game. The broken AI is fixed, cut content has been restored, and every weapon is precisely calibrated to its real world counterpart. The main campaign, a combination of the vanilla game and The Stetchkov Syndicate, has a carefully crafted unlock system that you can play through with a friend to complete. If that isn't what you'd prefer, there's also an All Missions campaign which allows you to play through any mission, including custom ones on the hard drive, with any equipment in the game, including some which is multiplayer sepcific. Even after you've completed the campaign, there's various flavors of permadeath to tackle...if you think you're Elite enough...

# TABLE OF CONTENTS #

1. How to Install
2. Building from Source
 - Contributing to the mod
3. Frequently Asked Questions (FAQ)
4. Mod Compatibility
5. Known Issues
6. How to play in Multiplayer
7. Credits
8. License


# HOW TO INSTALL #

Copy the folder containing this folder (SEFCommunityModv7) into your SWAT 4 directory (the one containing Content and ContentExpansion).
For the CD copy of the game, this folder is located in C:/Program Files (x86)/SWAT 4 or C:/Program Files (x86)/Sierra/SWAT 4
For the GOG version of the game, it's usually located in C:/GOG Games/SWAT 4

!!! CAUTION !!!
Do not extract the SEFCommunityModv7 folder *into* your Content or ContentExpansion folders (and therefore overwrite things), otherwise the mod will not work correctly.

To run the game, use the "Launch SEF.exe" file. To run SWATEd, use the "Launch SwatEd.bat" file.
You can make a shortcut to these .bat files for more convenience.

The mod can be removed by deleting the SEF folder from your hard drive.

NOTE: You may run into an issue with the game not saving your settings, or throwing an assertion failure at times in the Settings menu. This is mostly a problem with Windows Vista and up; try giving the folder write permissions or "Total Control". Alternatively you can make your SWAT4x.exe run in administrator mode.

# BUILDING FROM SOURCE #

**ATTENTION!** You *cannot* run the game without having the content. You can find the content for the mod [here](https://1drv.ms/u/s!AnIKDNAshMwbnVml6hksfsABRhyq?e=NaCciJ).

If you are instead trying to build the source code, it is fairly straightforward.

 * Clone the source code into your SWAT 4 folder. Your folder structure ought to look very similar to the installed mod, with SWATEliteForce within your SWAT 4 folder.
 * Download the assets from the link above. Unzip the contents into your SEFCommunityModv7GitHub/Content folder. *Do not commit these files if you are using Git.*
 * From here, you can compile the source code with the CompileSource.bat and run the game with the LaunchSEF.bat. The source code will compile to .u files in the System folder.
 * Edit the source code within /Source/ and any ini files within /System/.

The mod's code is primarily written in UnrealScript. You can find a good resource about UnrealScript [here](wiki.beyondunreal.com). (Note, if you can't access this page, try using the Wayback Machine to access it.)

## Contributing to the mod

The best and most direct way to contribute to the mod's programming is by issuing a pull request. Generally, pull requests are best done by forking the mod's code, committing and pushing to your fork, and then issuing a pull request from your repository. It is not the best idea to use GitHub directly for editing, since if you need to make many edits, it will spam email inboxes.

When it comes to code cleanliness, the code standards appear to have been different between the base Unreal engine, vanilla SWAT 4 and vanilla TSS. Specifically:

 * The base Unreal engine does not support the use of the `#ifdef` keyword; this would appear to be a modified version of the engine which supports it.
 * The Stetchkov Syndicate uses spaces instead of tabs for indentation.

That being said, I would like to adhere to these standards as much as possible:

 * Use tabs instead of spaces for indentation. Use spaces instead of tabs when aligning comments across multiple lines.
 * Braces should always be used for `replication`, `while`, `if`/`else`/`else if` (except in replication blocks, where it is illegal), `for`, `defaultproperties`, `state` and any other blocks.
 * Braces should be on their own line. For example:

```java
if(something) { // bad

if(something)
{ // good
```

 * Class names (and `Object`) should start with a capital letter. (UnrealScript is not case sensitive)
 * Class properties should start with a capital letter. Local variables can start with either a lowercase or capital letter. Boolean variables should always start with a lowercase "b"
 * Primitive types (`string`, `int`, etc) should start with a lowercase letter.
 * Reserved words (`local`, `replication`, `if`, etc) should start with a lowercase letter.
 * Functions should start with a capital letter and be written as a verb. `Name` is a bad name for a function, but `GetName()` and `SetName()` are good.
 * Do not use `#ifdef` as support for it is spotty on some text editors which have UnrealScript support.
 * Use `const` whenever possible.
 * Only use `out` variables when it is not possible to use a return value.
 * Use `simulated` on functions that are executed both on the client and server.
 * Don't write both getter and setter functions for private variables unless there is a side effect involved in doing either. Instead, use a public variable. For example:

```java
var public bool bMyVariable;
var private bool bMyBadlyUsedVariable;

function bool GetMyBadlyUsedVariable()
{
	return bMyBadlyUsedVariable;
}

function SetMyBadlyUsedVariable(bool bNewValue)
{
	bMyBadlyUsedVariable = bNewValue;
}
```

Assets have to be sent to myself personally to integrate into the mod.

# FREQUENTLY ASKED QUESTIONS (FAQ) #

## CONTENTS ##

 * **How do I install the mod?**
 * **How do I use the speech recognition?**
 * **What's the difference between "MARK WITH LIGHTSTICK" and "DROP LIGHTSTICK"?**
 * **How can I check for traps in multiplayer?**
 * **How can I play in Multiplayer? Are there any servers?**
 * **How can I report a bug?**
 * **Why can't I play in Barricaded Suspects, VIP Escort, Smash and Grab, or Rapid Deployment?**
 * **Are you going to add AI officers in CAREER CO-OP?**
 * **Does this mod work with other mods?**
 * **I played in singleplayer, but there's no briefings. Why?**
 * **I want to change the entry in All Missions, but you removed the Briefing tab?**
 * **I played in singleplayer, but there's very few missions (1 or 2). Why?**
 * **Are there more missions for Extra Missions coming out?**
 * **I can't find X piece of equipment! Did you remove it?**
 * **Breaching doors with the shotgun doesn't work!**
 * **Beanbags don't work!**
 * **Traps aren't showing up!**
 * **How do I disarm a trap?**
 * **Are you going to add ballistic shields?**
 * **Are you going to add leaning while moving?**
 * **Disabling Ironsights Zoom is not working!**
 * **What happened to Instant Action?**
 * **The Play Quick Mission button was removed on the main menu. How do I play them?**
 * **I cannot progress in the campaign!**

## HOW DO I INSTALL THE MOD?
Please read the How to Install section of this README. :)

## HOW DO I USE THE SPEECH RECOGNITION?
First, you will need to ensure that your operating system supports Speech Recognition. What you'll need is the Microsoft Speech Recognition API, which is available here: https://www.microsoft.com/en-us/download/details.aspx?id=27224
If your system meets the requirements, the 'Use Speech Recognition' checkbox will be available.
You can also bind a key to toggle the functionality ingame, which is good when you're speaking for a Let's Play, for example.
A list of trigger words is provided, starting with Patch 5.1. See SpeechCommands.md for more information.

**IF SPEECH RECOGNITION DOES NOT WORK (CHECKBOX GREYED OUT):**

- What language is your operating system? *By default, the game will only work with an English (United States) version of Windows.*
In order to support more languages, you will need to edit your SEF/System/SpeechCommandGrammar.xml. Near the top of the file will be a line that reads like this:
```
<GRAMMAR LANGID="409">
```
You will want to modify this line so that it uses a number which corresponds to your operating system (NOT THE GAME!).
The list of languages can be found here: https://msdn.microsoft.com/en-us/library/office/hh361638
So for instance, if you have a Swedish operating system, you will want to change it so the line looks like this:
```
<GRAMMAR LANGID="41D">
```

- Did you install the API? (see the above link)

- Still not working? Try installing the Speech Recognition Improvement mod, and see if that mod works.


**IF SPEECH RECOGNITION DOES NOT WORK (COMMAND NOT RECOGNIZED, OR MICROPHONE NOT WORKING)**

- Check to make sure that you did not disable the speech recognition with the keybind. (The key is not bound to anything by default)

- Check to make sure that the microphone works in Windows.

- Check to make sure that the microphone works in the game (try using the built-in VOIP feature and see if your friends can hear you in a multiplayer game)

- Make sure there is no background noise, like a television. The game may misinterpret it as being your voice.

- Make sure you are speaking clearly.
If you are using the language fix from the above, you will want to speak with a bad accent as much as possible. Really roll those Rs if you're using a Spanish OS.
If you aren't, try to talk like you're a newscaster or like you're having a conversation with someone on the phone and they aren't understanding you.
Also note that some things sound similar. For example, "Cuff her" sounds a lot like "cover".

- Make sure you are saying the correct thing.
See the SpeechCommands.md if you are having trouble saying a particular command.

## WHAT'S THE DIFFERENCE BETWEEN "MARK WITH LIGHTSTICK" AND "DROP LIGHTSTICK"?
MARK WITH LIGHTSTICK orders the nearest officer to go to the location and drop a lightstick. DROP LIGHTSTICK orders the nearest officer to drop a lightstick at their feet.

## HOW CAN I CHECK FOR TRAPS IN MULTIPLAYER?
Use the Optiwand, and aim up at the doorknob.

## HOW CAN I PLAY IN MULTIPLAYER? ARE THERE ANY SERVERS?
Please read the How to Play in Multiplayer section of this README. :)

## HOW CAN I REPORT A BUG?
The best, and preferred method is to post it directly on our GitHub issues page: https://github.com/T-MaxWiese-T/SEF_Community_Mod/issues
However, since doing so requires a GitHub account, it's not the most desirable option. You can also post on the Moddb page, which doesn't require an account.
Additionally, you can check us out on Discord, and chat with the developers: https://discord.gg/KHajCa28bp

## WHY CAN'T I PLAY IN BARRICADED SUSPECTS, VIP ESCORT, SMASH AND GRAB, OR RAPID DEPLOYMENT?
This mod uses very realistic values for the weapons, and ultimately it doesn't play well in PvP modes for those reasons.
Personally I would recommend playing these PvP modes on the original SWAT 4, non-TSS, since the PvP balance is as good as it can get.

## ARE YOU GOING TO ADD AI OFFICERS IN CAREER CO-OP?
Possibly.

## DOES THIS MOD WORK WITH OTHER MODS?
Please refer to the "Mod Compatibility" section of the README.

## I PLAYED IN SINGLEPLAYER, BUT THERE'S NO BRIEFINGS. WHY? ##
There are no briefings in an All Missions campaign. Play with either a SWAT 4 + TSS or Extra Missions campaign.
The reason there is no briefing is because the All Missions campaign pulls *all* missions from your hard drive, including custom maps.
These custom maps cannot have briefing or entry information added to them very easily. Loading up the briefing will cause a crash on those missions.

## I WANT TO CHANGE THE ENTRY IN ALL MISSIONS, BUT YOU REMOVED THE BRIEFING TAB? ##
The entry options are available on the Mission Selection screen, underneath the difficulty selection.

## I PLAYED IN SINGLEPLAYER, BUT THERE'S VERY FEW MISSIONS (1 OR 2). WHY?
You most likely selected the Extra Missions path when you started the career. There's three options: Extra Missions (missions added by the mod), SWAT 4 + TSS (the original game's missions), and All Missions (all missions from your hard drive, with no equipment progression).

## ARE THERE MORE MISSIONS FOR EXTRA MISSIONS COMING OUT?
Yes.

## I CAN'T FIND X PIECE OF EQUIPMENT! DID YOU REMOVE IT?
Only the ammo pouch was removed from the base game. If you cannot find a piece of equipment, make sure you have unlocked it in the campaign!
Note that some equipment (M16, Uzi, AKM, etc) is only available in multiplayer.

## BREACHING DOORS WITH THE SHOTGUN DOESN'T WORK!
Whether or not a shotgun breaches the door successfully is random and depends upon a few things:

 - The material of the door (wooden doors are easier to breach than metal ones)
 - The ammo type you are using (larger pellets = more likely to breach)
 - Which shotgun you are using (the M870 Breaching *always* breaches the door on the first shot)

Generally it takes about 2-3 shots on a wooden door and 3-4 shots on a metal door to breach it successfully.

## BEANBAGS DON'T WORK!
Beanbags can be negated by body armor. Try aiming for unarmored parts of the body.

## TRAPS AREN'T SHOWING UP! ##
...or another variation of this: "I played through the first mission, and the README says that there's supposed to be traps on it, but I never saw any traps!"
The traps are randomly generated on the mission. On almost every map that they can show up, it's possible for them to not show up at all.
On the Fairfax Residence mission, there's a 50% chance (100% on Elite) that a trap will spawn - and there's four total doors it can spawn on. 
So it's possible to trigger the trap almost immediately, but also possible to never encounter it, depending on the route you take and the randomization.

## HOW DO I DISARM A TRAP?
You can't disarm a trap if it's on the other side of a door. You can either blow it up (if it's electronic) with C2 or you can go around and remove it with the toolkit. Or just take the penalty.

## ARE YOU GOING TO ADD BALLISTIC SHIELDS?
Possibly, at some point. I would need someone to produce the art assets for it, as I'm not an artist.

## ARE YOU GOING TO ADD LEANING WHILE MOVING?
Moving and leaning requires hundreds of animations to be added to the game, due to the way the animation system in the game works. Unless someone can come forward and make all of those animations for me, then no.

## DISABLING IRONSIGHTS ZOOM IS NOT WORKING!
If you are ingame and you check "Disable Ironsights Zoom" then it won't work until you change your weapon, because of how the code works. Just change to a different piece of equipment and change back.

## WHAT HAPPENED TO INSTANT ACTION? ##
Instant Action was removed because nobody used it. Furthermore, it causes issues with Permadeath campaigns, among other things.

## THE PLAY QUICK MISSION BUTTON WAS REMOVED ON THE MAIN MENU. HOW DO I PLAY THEM? ##
You now need to create a career for them, in the Career menu. This is because Quick Missions support a ton of new features, like progression, unlocks, etc. They also work with Permadeath modes.

## I CANNOT PROGRESS IN THE CAMPAIGN! ##
This is a common bug that is encountered. Sometimes you will play a mission, even scoring a 100/100 on it, and the next mission won't unlock. Sometimes even if you replay it over and over again, even on Easy, it won't progress. This seems to happen a lot on the first mission for some reason.
I have no idea why this happens, or what the explanation is for it. It has happened to me and others in the vanilla game, both with and without the expansion.
To solve it, you can just unlock the next mission and the campaign will progress normally after this.

To unlock the next mission, find your SEF/System/Campaign.ini file. (Sometimes it is not here, it is ContentExpansion/System/Campaign.ini)
Edit this file in Notepad, and find your career in here. It should be fairly obvious, and look something like this:
```ini
[Campaign_Officer_Default]
StringName=Officer Default
CampaignPath=0
availableIndex=0
HACK_HasPlayedCreditsOnCampaignCompletion=False
```
All you need to do here is take the line that reads `availableIndex=<SOME NUMBER>` and increase that number by 1.
So for example, if I am stuck on the first level, I need to increase that 0 to a 1.
You can increase this all the way to 20 and unlock all of the missions, if you feel like cheating.

# MOD COMPATIBILITY #

SWAT: Elite Force is compatible with skins and custom maps out of the box, without modifications. It is not compatible with total conversions or new weapon mods. It has some compatibility issues with admin mods.
To make this process more painless, I've gone ahead and listed each of the mods on Moddb and elsewhere, and provided the compatibility status.

**Fully Compatible; no special installation steps:**
 * SWAT 4 ENB / Reshade
 * SWAT 4 Music Overhaul
 * ANY map pack mod. (DO NOT install the Mega Map Pack campaign mod in its installer, it is not needed with this mod)
 * ANY custom officer skin mod.


**Partially Compatible; some assembly required or there are bugs:**
 * SWAT 4 Graphical Enrichment Mod (GEM). (Not usable in multiplayer)
 * SWAT 4 Retextured Mod. (Not usable in multiplayer)
 * Snitch Mod. (It can crash on occasion)
 * LEVEL 13. (Only the maps are supported.)
 * GSK Character Models (see above)


**Not applicable; SEF includes the features of these mods and/or improves upon them:**
 * Brettzie's M4A1
 * SWAT 4 Widescreen Mod
 * Gez Admin Mod
 * Markmods Admin Mod
 * Mega Map Mod


**Already present; this mod is either incorporated into or is a base for another mod:**
 * BFHL character models mod (the author provides a compatible version)
 * HugeOfficerVarieties


**Not compatible; SEF does not work with these mods at all and cannot possibly function with:**
 * SWAT 4 Remake Mod
 * SWAT 4 1.2 Mod
 * Code 11
 * 11-99 Enhancement Mod
 * HSM Enhancements
 * Sheriff's Special Forces (SSF)
 * SAS Mod (SEF includes many of its weapons)
 * Speech Recognition Improvement (SEF includes many of its features)


# KNOWN ISSUES #

Please read the FAQ before looking here! It's entirely possible that what you are seeing is intentional behavior.
  * Officers sometimes ignore orders, you might have to issue a command two or three times. Problem of the original game.
  * Officers sometimes ignore orders and say something like "I'm busy." This is a problem of the original game; they sometimes can see suspects where the player can't.
  * Sometimes when you are loading up the game, you can get no sound at all. This is an issue introduced by the Stetchkov Syndicate expansion pack. Sometimes it can be solved by simply restarting the game and not running the game in windowed mode. Sometimes, if you have two detected audio devices (one for output, and one for both input and output), make sure that the one that is responsible for both input and output is DISABLED. The game is bugged and will sometimes pick the wrong audio device.
  * "gui_tex package version mismatch" when joining a server: Make sure you are running under International language. Sometimes it defaults itself to English or some other language. Search for `Language=eng` or `Language=grm` in SEF/System/Swat4x.ini and make sure it's set to `Language=int`


# HOW TO PLAY IN MULTIPLAYER #

## Using GameRanger  to play with friends (preferred): ##

BOTH PLAYERS will need to do the following:  
 1. Download and install GameRanger. It can be found at http://gameranger.com  Next, GameRanger will automatically detect "SWAT 4" and "SWAT 4: The Stetchkov Syndicate", if all is OK. You may need to manually detect these, if GameRanger doesn't do it for you. 
2. You will need to rename the **"LaunchSEF.exe"** in **SEFCommunityModv7/Extras** to **"SWAT4X.exe"** so Gameranger will recognize it. (It's named LaunchSEF.exe so that it isn't automatically detected!) 
3. Then, you will need to modify the "Stetchkov Syndicate" game in Gameranger so it points to the Swat4X.exe file in **SEFCommunityModv7/Extras/Swat4X.exe** (Edit -> Options -> Games ->  "Stetchkov Syndicate" -> "Browse..." and then set the location to your SEF Community Mod folder to the **"SWAT4X.exe"** in **"Extras"**.  
(Side note: I also recommend to go to the **"Network"** tab in the Options and set the connection speed to **"2Mbps DSL/Cable"** so that the connection is faster and more stable when playing.) Also, I recommend having **"LAN"** selected in the **SEF Community Mod settings** so that you have the fastest connection.

THE HOST will need to do the following: 
1. Create a game room in Gameranger with **"Host"**, as a "SWAT 4: The Stetchkov Syndicate game". (TIP: if this is going to be a publicly joinable game, be sure to mention it's using the SEF Community mod and specify the version!) 
2. When enough players have joined, press the **"Start"** button. This will launch the SEF Community Mod. 
3. From here, go to the **"Host Game"** in game menu and start up a server (LAN must be selected!) . Important Note: Do not launch as a dedicated server while using GameRanger. Teammates can see your server in the game serverbrowser if they have selected **"LAN"**.

YOUR TEAMMATES will need to do the following: 
1. Join a public room, or your friend's room and then press "Join" that will opens SEF Community Mod. 
2. Press in the main menu "Join Game" and then  select "LAN" in the in game serverbrowser and you can then see and join the server. That's all you really need to do.

### TROUBLESHOOTING ###
**NOTE: If you have the mod installed incorrectly, LaunchSEF.exe won't work!**

Make sure you have the Microsoft Visual Studio 2017 Redistributable. It is required to run LaunchSEF.exe and other applications. Download it here:

* **64-bit Windows:** https://go.microsoft.com/fwlink/?LinkId=746572
* **32-bit Windows:** https://go.microsoft.com/fwlink/?LinkId=746571

If GameRanger "aborts" when it launches, you may have some application (antivirus?) interfering with LaunchSEF.exe. If this happens, copy all .exe and .dll files from `ContentExpansion/System` into `SEF/System` and point GameRanger to the Swat4X.exe that is in `SEF/System`. This is kind of an ultra last resort option however!

## Traditional Method (TCP/IP) ##
SWAT: Elite Force v4 was the first version of this mod to allow for multiplayer play. v5 introduced Campaign CO-OP and allowed for publishing of games to Swat4Stats without a CD-key (removing DRM that GOG didn't).

### If you want to join a game: ###

If the game you want is not hosted via LAN, then you will need the SWAT4Stats server browser plugin. It's available at http://swat4stats.com - make sure you get the TSS version.

After it is installed, your server list will show all of the servers, including the ones that are on different mods. Just join the one you want. There are a number of 24/7 SEF servers out there.

If the game you want is hosted via LAN, or you cannot find the server in the list, you will need the host's external IP address (have the host look this up on http://myexternalip.com). You can then join the game from the Join Game menu using the IP address.

### If you want to host a game ###

First, you will need to open some ports on your router: 10480 - 10483, TCP/UDP. If you aren't sure how to do this, the following article explains it well: https://www.howtogeek.com/66214/how-to-forward-ports-on-your-router/

**OPTIONAL:** If you want your game to be publicly visible on the master server list (on swat4stats), you will need to install the Swat4Stats server browser plugin, available at http://swat4stats.com - You'll also want to set your game to be "Internet" and not "LAN" for this to work.

If you aren't playing an Internet/Swat4Stats enabled game, you will need your external IP address for other players to connect. You can look this up on http://myexternalip.com
Lastly, you need to determine what type of game you want to play. Regular CO-OP is handled through the Host Game menu ingame, but Campaign CO-OP is done through the Career menu - select a campaign and hit Career CO-OP. The "Equipment" panel will change to a "Settings" panel where you can configure a password, etc just like in Host Game.

Once you have selected your map settings and have started the server at least once, you can quickly launch a server (without going ingame) by using the Dedicated Server.bat file. You can then join the server from the Join Server menu.

## Admin System ##
Server hosts should NOT use MarkMod, SES Mod, Gez Mod, or Snitch for admin features. Those mods can introduce glitches, bugs, or crashes or break some of the features of SWAT: Elite Force. Instead, SEF includes its own admin mod which aims to combine a lot of the best features of those mods. If you are pining for a particular feature of one of those, let me know and I will work on adding it!

Administrator permissions are doled out through the use of "roles." Everyone by default is assigned to the Guest role; it is not recommended that you give the Guest role very many powers, if any at all. A player can only have one role at a time. Each role should have a unique password associated with it. To log in to a role, click on the "Admin Login" button and enter the password associated with the desired role.

Admin Roles should be assigned through the Host Game menu, when setting up the server settings.

Additionally, SEF also has an MOTD system. The only way (currently) to configure this is through the use of editing INI files. Open SEF/System/Swat4XDedicatedServer.ini. In the section titled `[SwatGame.SwatAdmin]` (at the bottom), add your MOTD lines by the following:

```ini
AutoActions=(Delay=NumSeconds,ExecuteText="Command")
```

Replace `NumSeconds` with the number of seconds (decimal number) before the command will be executed, and `"Command"` with the command text. The command text can be "print " followed by a message to print a string to chat, or "ac " followed by an admin command to execute that command.

As a trivial example, this will print three lines of text every 10 minutes:

```ini
AutoActions=(Delay=600.0,ExecuteText="[c=FFFFFF]Welcome to my server![\\c]")
AutoActions=(Delay=0.5,ExecuteText="[c=FFFFFF]I hope you have fun![\\c]]")
AutoActions=(Delay=0.5,ExecuteText="[c=FFFFFF]Please be nice to others![\\c]")
```

WebAdmin defaults to port 6000. You can access it in a web browser by going to: http://<external ip>:6000/
On the host machine, this can be reached from http://127.0.0.1:6000/

For some tools, you might want to get JSON metadata off of the server. There are two specialized addresses to pull data from. You can see an example of how the data is formatted by going to the listed addresses in your browser.
Note that all enumerations start from zero. They are updated as of v7.

 * Player data can be pulled from `<webadmin address>/json/players`. The Status field can be one of the following from this enumeration:

```cpp
enum COOPStatus
{
    STATUS_NotReady,
    STATUS_Ready,
    STATUS_Healthy,
    STATUS_Injured,
    STATUS_Incapacitated,
};
```

 * A full readout of the server's webadmin logs can be pulled from `<webadmin address>/json/log`. The Message Type field can be one of the following from this enumeration:

```cpp
enum WebAdminMessageType
{
	MessageType_Chat,
	MessageType_PlayerJoin,
	MessageType_AdminJoin,
	MessageType_AdminLeave,
	MessageType_Penalty,
	MessageType_SwitchTeams,
	MessageType_NameChange,
	MessageType_Voting,
	MessageType_Kill,
	MessageType_TeamKill,
	MessageType_Arrest,
	MessageType_Round,
	MessageType_WebAdminError,
};
```

Note that `MessageType_SwitchTeams` is also used for administrator actions, and messages sent by AutoActions are *not* included as part of these logs.
As a security precaution, note that *anyone* can access these URLs and get a message log. So you should probably not be discussing sensitive information on the server.

# CREDITS/THANK-YOUS #
* Irrational Games and Sierra for the game.
* BeyondUnreal for providing Unreal Engine 1/2/3 documentation
* Beppe_goodoldrebel for the Colt 9mm SMG models
* Immortal Fishy for many ironsight offset corrections.
* Sebastien NovA for his modified SwatEd.exe
* FrancisSwat for being gracious in giving us the SAS mod assets.
* Hellfire Entertainment for being gracious in giving us the SWAT4 1.2 mod assets.
* KevinL for a tip about Voting Screen.
* Ryo Ohki for a tip about P90 and SAW animations
* Dc247 for typo corrections in this document
* MulleDK19 for help with the Speech Recognition feature
* Yasuntei for spotting a typo
* Audio for help hosting NA servers
* Gez for producing the Gez admin mod, which I referenced a lot.
* RUNEPATRIARCH for finding some unused audio
* Eezstreet for the main version


*... if there is anyone I missed, feel free to send me a message on Moddb, and this will be corrected. --Wiese*

# LICENSE #
This software is licensed under the GNU General Public License v2. You can read it in more detail in the LICENSE file. The source code is freely available at https://github.com/T-MaxWiese-T/SEF_Community_Mod
