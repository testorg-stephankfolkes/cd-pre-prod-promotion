import java.io.File


step 'create_json_metadata_file', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Promote_Project/steps/create_json_metadata_file.groovy").text
  condition = ''
  errorHandling = 'abortProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  projectName = 'cd-pre-prod-promotion'
  releaseMode = 'none'
  resourceName = '$[/myJob/AssignedResource]'
  shell = 'ec-groovy'
  subprocedure = ''
  subproject = ''
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''
}
