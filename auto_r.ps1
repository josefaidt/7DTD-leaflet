if(-not $__inner_already_recursed) {

  '***   EXECUTING PYTHON             ***'
  '**************************************'
  
  $__inner_already_recursed=$false  # set flag to indicate that recursion has happened
  
  Invoke-Command -Scriptblock {python map_reader.py -g $path}

  . $myInvocation.ScriptName       # re-invoke auto.ps1

  exit 0 # Signal need to continue execution with $LASTEXITCODE 0

} else {

  '*** EXITING...                     ***'
  exit 1 # Signal that script should exit.

}