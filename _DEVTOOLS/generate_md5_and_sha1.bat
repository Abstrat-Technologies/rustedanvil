@echo off

:: :::::::::::
:: generate_md5_and_sha1.bat
::
:: A utillity for systematically generating MD5 and
:: SHA1 hashes for use by FML
::
:: Copyright (c) 2023 Abstrat Technologies Limited
:: An ABSTRAT GROUP Company
::
:: </> with ♥ by Arek "AGDeveloper" Kwapis  
:: :::::::::::

:: :::::::::::
:: SYSTEM 
:: :::::::::::

:: Expand variables because batch is fucky wucky
setlocal enabledelayedexpansion

:: :::::::::::
:: VARIABLES 
:: :::::::::::

:: Set root path
set "root_path=C:\xampp\htdocs"

:: :::::::::::
:: PROGRAM
:: :::::::::::

:: Begin the CPU burning
for /R %root_path% %%f in (*.jar) do (
	:: Setup some variables to use later
	set "file_path=%%f"
	set "file_name=%%~nf"
	set "file_dir=%%~dpf"

	:: Generate the SHA1
	echo Generating SHA1 for file: !file_path!
	certutil -hashfile !file_path! SHA1 > "!file_dir!!file_name!.sha1"

	:: Now we generate the MD5
	echo Generating MD5 for file: !file_path!
	certutil -hashfile !file_path! MD5 > "!file_dir!!file_name!.md5"
)

:: And we're done!
echo Done!
pause