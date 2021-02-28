@echo off

echo Producing Packages.md5

cd .\System
..\..\ContentExpansion\System\ucc.exe mastermd5 -c *.u -c SEFCommunityMod/Content/*.ukx -c SEFCommunityMod/Content/Maps/*.s4m -c SEFCommunityMod/Content/*.utx

echo Produced entries:

cd .\System
..\..\ContentExpansion\System\ucc.exe mastermd5 -s

PAUSE 