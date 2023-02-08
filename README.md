# rustedanvil - 1.6.4_965 branch

## Why?
Forge 965 on 1.6.4 is completley unusable. There is a plethora of issues after issues. This project aims to fix that and make it run once again like it's 2013 all over again. The forge team focuses on modern versions, and the retrogradle project only aims to upgrade the toolchain to be in line with modern, not make modding possible again... Which goes in line with the advice they have for anyone daring to try this of "Don't". So i've stepped up and have decided to torture myself with the task of making it work again.

The goal is to allow anyone and everyone to run 965 on any computer, and have 965 compile and be ready for use in as little as double-clicking a single file. There will also be measures put in place so that this can't ever happen again - this aims to be the "final tool you'll ever need" for getting started with 965 modding. 
## Getting started
1. Download the 965 source (https://maven.minecraftforge.net/net/minecraftforge/forge/1.6.4-9.11.1.965/forge-1.6.4-9.11.1.965-src.zip)
2. fork this branch
3. slam face on keyboard
4. make a pull request

As of note for making edits: Focus on one thing at a time. Don't put in a gigantic 1k+ line edit for a pull with a million small little changes - it will just be denied. 

If you're fixing say spelling mistakes, do all the spelling mistakes and then pull request. Then move on to the next thing. Keep focus, more or less. Fixing merge issues is a right PITA.
## Discord?
Yes, unfortunately: https://discord.gg/nZYmrurm

## How?
This project will have 3 stages:
- [ ] Documentation & Information gathering
- [ ] Toolset creation
- [ ] Merge & Finalisation
### Documentation & Information gathering
This stage will consist of finding and documenting all the issues currently present within Forge 965 and suggesting fixes to each issue. This includes files it fails to download, broken code, missing items and more. This is the most important step, as without documentation on what the issues are, we can't create tools to fix and repair it.
### Toolset creation
Here comes the coding part. To minimise the risk of errors, each issue will be seperated into bite-sized chunks. From there, a tool will be developed to specifically solve that one issue. This will lead to the creation of multiple tools that when used together in the correct order, will result in effortless installation of forge 965 - everything from the download of the 965 master itself, to patching code. Documentation on how each tool works will also be made, and the tools themselves will be "production ready" - i.e if we where to stop at this stage, everything would still work fine
### Merge & Finalisation
The final stage consists of merging the toolset together into an easy-to-use singular tool which will automatically run each of the provided tools with the correct paramaters in the correct order as to produce a fully working and ready-to-use install of forge 965. Documentation will also be cleaned up and become production-ready, tools will be finalised, and any other items (such as link-rot prevention) will be implemented.
## TODO
- [ ] Update this readme to make it less word soup and more useful info
- [ ] Put all the unless non-getting-started stuff into a contributing.md file
- [ ] copyright.md
- [ ] license.md
- [ ] some form of tracker (trello?)
## Milestones
#### Milestone 1
- [ ] Github setup
- [ ] Documentation
	- [ ] Missing files
		- [ ] Forge
		- [ ] MavenCentral
		- [ ] Mojang
	- [ ] Broken code
	- [ ] Missing code
	- [ ] Missing items
- [ ] Suggested fixes
- [ ] Cleanup
#### Milestone 2
TBC
#### Milestone 3
TBC