$map = "New Cosena Valley"
$path = $env:appdata + "\7DaysToDie\Saves\" + $map + "\My Game\Player"

'**************************************'
'***   STARTING BUILD               ***'
'***--------------------------------***'

# Call the helper script that performs the recursive invocation.
. .\auto_r.ps1
if ($LASTEXITCODE -eq 1) { exit }  # 1 means exit