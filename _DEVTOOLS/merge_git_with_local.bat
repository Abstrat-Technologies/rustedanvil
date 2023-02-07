@echo off

:: :::::::::::
:: merge_git_with_local.bat
::
:: A utillity for merging github project code with
:: the local forge install.
::
:: Copyright (c) 2023 Abstrat Technologies Limited
:: An ABSTRAT GROUP Company
::
:: </> with ♥ by Arek "AGDeveloper" Kwapis  
:: :::::::::::

:: :::::::::::
:: VARIABLES 
:: :::::::::::

:: The git repo on system
SET remote="G:\repos\rustedanvil"
:: The local repo
SET local="G:\Minecraft Modding\1.6.4\forge_965_2"

:: :::::::::::
:: PROGRAM
:: :::::::::::

:: Check if cp exists, otherwise error
:: We use cp as a baseline - if cp exists in said dir,
:: we can assume xargs will too. If cp does not, then
:: xargs won't either. 
IF exist "C:\Program Files (x86)\Gow\bin\cp.exe" (
	GOTO :diffcheck
) ELSE (
	SET errormsg="GOW utils not found."
	GOTO :error
)

:: Error procedure
:error
ECHO A fatal error occured with the following message: %errormsg%
ECHO Press enter to exit the program.
PAUSE > nul
EXIT

:: Check if the diff exists
:diffcheck 
IF EXIST "G:\repos\rustedanvil\_DEVTOOLS\diff.txt" (
	rm "G:\repos\rustedanvil\_DEVTOOLS\diff.txt"
	GOTO :diff
)
:: If the command errored, it means not exist
IF %ERRORLEVEL% EQU 0 (
	goto :diff
)
:: If this happens, get a fire extinguisher. Your pc is on fire.
IF %ERRORLEVEL% EQU 1 (
	SET errormsg="The diff file errored"
	GOTO :error
)

:: Create the diff and prepare it
:diff
:: Unleash diff on the remote & local & output result for use
diff -q %remote% %local% > "G:\repos\rustedanvil\_DEVTOOLS\diff.txt"
:: Get the goats, we're summoning satan
sed --i "s/.*Files[[:space:]]//g";"s/.and[[:space:]]*.*//g";"s/.*[[:space:]]//g";"s/.*rustedanvil//g";"s/.*1.6.4//g";"s/.*\///" "G:\repos\rustedanvil\_DEVTOOLS\diff.txt"
:: strip useless entries
grep -Fvxf blacklist.txt diff.txt > diff_temp.txt
:: Move the temp into the main file
cp "G:\repos\rustedanvil\_DEVTOOLS\diff_temp.txt" "G:\repos\rustedanvil\_DEVTOOLS\diff.txt"
:: temp file is useless, drag it behind the shed
rm "G:\repos\rustedanvil\_DEVTOOLS\diff_temp.txt"
:: Ah, it's the agent of hell
sed -i -e "s_.*_G:/repos/rustedanvil/&_" "G:\repos\rustedanvil\_DEVTOOLS\diff.txt"
:: Nuke satan
DEL *.
:: Begin the next phase
GOTO :cp

:: Make the copy
:cp
:: xargs for list, calls cp with the recursive command for dirs
xargs -a diff.txt cp -r -t "G:\Minecraft Modding\1.6.4\forge_965_2"
ECHO.
EXIT