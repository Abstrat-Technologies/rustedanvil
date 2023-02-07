# rustedanvil - 1.6.4_965 branch

## Why?
Forge 965 on 1.6.4 is completley unusable. There is a plethora of issues after issues. This project aims to fix that and make it run once again like it's 2013 all over again. The forge team focuses on modern versions, and the retrogradle project only aims to upgrade the toolchain to be in line with modern, not make modding possible again... Which goes in line with the advice they have for anyone daring to try this of "Don't". So i've stepped up and have decided to torture myself with the task of making it work again.
## Getting started
1. Download the 965 source (https://maven.minecraftforge.net/net/minecraftforge/forge/1.6.4-9.11.1.965/forge-1.6.4-9.11.1.965-src.zip)
2. fork this branch
3. make some edits
4. make a pull request

As of note for making edits: Focus on one thing at a time. Don't put in a gigantic 1k+ line edit for a pull with a million small little changes - it will just be denied. 

If you're fixing say spelling mistakes, do all the spelling mistakes and then pull request. Then move on to the next thing. Keep focus, more or less. Fixing merge issues is a right PITA.
## Discord?
Yes, unfortunately: https://discord.gg/nZYmrurm
## TODO
- [ ] Update this readme to make it less word soup and more useful info
- [ ] Put all the unless non-getting-started stuff into a contributing.md file
- [ ] copyright.md
- [ ] license.md
- [ ] trello tracker
- [ ] this: 
### Avoiding issues
This is stuff I must automate in the future.

download: `curl https://maven.minecraftforge.net/net/minecraftforge/forge/1.6.4-9.11.1.965/forge-1.6.4-9.11.1.965-src.zip --output forge965.zip`

deflate: `7z x forge965.zip` OR `tar` OR `PS > Expand-Archive`

substitute finished files with original files

then reemploy curl to download reqs

move them to xampp with proper structure

continue as normal