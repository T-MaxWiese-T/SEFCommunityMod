@echo off

echo Producing Packages.md5

cd .\System
..\..\ContentExpansion\System\ucc.exe mastermd5 -c *.u -c SEF Community Mod v7.4.1 (Beta)/Content/*.ukx -c SEF Community Mod v7.4.1 (Beta)/Content/Maps/*.s4m -c SEF Community Mod v7.4.1 (Beta)/Content/*.utx

echo Produced entries:

cd .\System
..\..\ContentExpansion\System\ucc.exe mastermd5 -s

PAUSE 