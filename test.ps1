$folderDateTime = (get-date).ToString('d-M-y HHmmss')
$userDir = (Get-ChildItem env:\userprofile).value + '\Report ' + $folderDateTime
$fileSaveDir = New-Item ($userDir) -ItemType Directory
$process = get-process
$process >> $fileSaveDir'/DumpPass.txt'
