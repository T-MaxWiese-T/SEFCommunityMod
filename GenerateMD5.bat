@echo off

echo Producing Packages.md5

cd .\System
..\..\ContentExpansion\System\ucc.exe mastermd5 -c *.u -c SEFCommunityModv7/Content/*.ukx -c SEFCommunityModv7/Content/Maps/*.s4m -c SEFCommunityModv7/Content/*.utx

echo Produced entries:

cd .\System
..\..\ContentExpansion\System\ucc.exe mastermd5 -s

PAUSE 