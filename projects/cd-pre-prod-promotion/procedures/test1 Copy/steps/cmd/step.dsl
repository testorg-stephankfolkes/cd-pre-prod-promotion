import java.io.File


step 'cmd', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/test1 Copy/steps/cmd.cmd").text
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '1'
  postProcessor = ''
  precondition = ''
  projectName = 'cd-pre-prod-promotion'
  releaseMode = 'none'
  resourceName = 'new-agent-flow-agents'
  shell = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''
}
