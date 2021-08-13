rem Rename the directories to the names of vpks
ren "frontend" "englishclient_frontend.bsp.pak000_dir"
ren "common" "englishclient_mp_common.bsp.pak000_dir"

rem Copy the original vpks form the /dir folder
copy "dir\englishclient_frontend.bsp.pak000_dir.vpk" "englishclient_frontend.bsp.pak000_dir.vpk"
copy "dir\englishclient_mp_common.bsp.pak000_dir.vpk" "englishclient_mp_common.bsp.pak000_dir.vpk"

rem Run the vpk tool from the windows path
RSPNVPK englishclient_frontend.bsp.pak000_dir.vpk /s
RSPNVPK englishclient_mp_common.bsp.pak000_dir.vpk /s

rem Restore the original names of the directories
ren "englishclient_frontend.bsp.pak000_dir" "frontend"
ren "englishclient_mp_common.bsp.pak000_dir" "common"

rem Move the vpks to your game directory
move "client_frontend.bsp.pak000_228.vpk" "PATH\TO\YOUR\VPKS"
move "client_mp_common.bsp.pak000_228.vpk" "PATH\TO\YOUR\VPKS"
move "englishclient_frontend.bsp.pak000_dir.vpk" "PATH\TO\YOUR\VPKS"
move "englishclient_mp_common.bsp.pak000_dir.vpk" "PATH\TO\YOUR\VPKS"