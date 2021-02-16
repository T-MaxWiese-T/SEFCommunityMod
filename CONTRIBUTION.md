# Contributing

When contributing to this repository, please first discuss the change you wish to make via issue or Discord with the owner of this repository before making a change. 

Please note we have a code of conduct, please follow it in all your interactions with the project.

## Code of Conduct

### Our Pledge

In the interest of fostering an open and welcoming environment, we as
contributors and maintainers pledge to making participation in our project and
our community a harassment-free experience for everyone, regardless of age, body
size, disability, ethnicity, gender identity and expression, level of experience,
nationality, personal appearance, race, religion, or sexual identity and
orientation.

### Our Standards

Examples of behavior that contributes to creating a positive environment
include:

* Using welcoming and inclusive language
* Being respectful of differing viewpoints and experiences
* Gracefully accepting constructive criticism
* Focusing on what is best for the community
* Showing empathy towards other community members

Examples of unacceptable behavior by participants include:

* The use of sexualized language or imagery and unwelcome sexual attention or
advances
* Trolling, insulting/derogatory comments, and personal or political attacks
* Public or private harassment
* Publishing others' private information, such as a physical or electronic
  address, without explicit permission
* Other conduct which could reasonably be considered inappropriate in a
  professional setting

### Our Responsibilities

Project maintainers are responsible for clarifying the standards of acceptable
behavior and are expected to take appropriate and fair corrective action in
response to any instances of unacceptable behavior.

Project maintainers have the right and responsibility to remove, edit, or
reject comments, commits, code, wiki edits, issues, and other contributions
that are not aligned to this Code of Conduct, or to ban temporarily or
permanently any contributor for other behaviors that they deem inappropriate,
threatening, offensive, or harmful.

# BUILDING FROM SOURCE #

**ATTENTION!** You *cannot* run the game without having the content. You can find the content for the mod in the latest versions here: https://www.moddb.com/mods/sef-community-mod-v7/downloads  

If you are instead trying to build the source code, it is fairly straightforward.

 * Clone the source code into your SWAT 4 folder. Your folder structure ought to look very similar to the installed mod, with SEFCommunityMod within your SWAT 4 folder.
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

### Scope

This Code of Conduct applies both within project spaces and in public spaces
when an individual is representing the project or its community.

### Attribution

This Code of Conduct is adapted from the [Contributor Covenant][homepage], version 1.4,
available at [http://contributor-covenant.org/version/1/4][version]
