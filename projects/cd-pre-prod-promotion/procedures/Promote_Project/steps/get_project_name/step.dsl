import java.io.File


step 'get_project_name', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Promote_Project/steps/get_project_name.cmd").text
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
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''
}
