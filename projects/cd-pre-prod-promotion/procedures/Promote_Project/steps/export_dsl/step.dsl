
step 'export_dsl', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  condition = ''
  errorHandling = 'abortProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  releaseMode = 'none'
  resourceName = '$[/myJob/AssignedResource]'
  shell = ''
  subprocedure = 'generateDslToDirectory'
  subproject = '/plugins/EC-DslDeploy/project'
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''
  actualParameter 'directory', '$[/myProcedure/clone_directory]'
  actualParameter 'includeAcls', '0'
  actualParameter 'includeAclsInDifferentFile', '0'
  actualParameter 'includeAllChildren', '1'
  actualParameter 'includeChildrenInSameFile', '0'
  actualParameter 'objectName', '$[shortProjectName]'
  actualParameter 'objectType', 'project'
  actualParameter 'pool', '$[/myJob/AssignedResource]'
  actualParameter 'suppressDefaults', '0'
  actualParameter 'suppressNulls', '1'
  actualParameter 'suppressParent', '0'
}
