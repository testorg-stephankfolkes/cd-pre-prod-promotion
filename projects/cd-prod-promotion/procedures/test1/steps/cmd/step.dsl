import java.io.File


step 'cmd', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/test1/steps/cmd.cmd").text
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '1'
  postProcessor = ''
  precondition = ''
  projectName = 'cd-prod-promotion'
  releaseMode = 'none'
  resourceName = 'new-agent-flow-agents'
  shell = ''
  subprocedure = ''
  subproject = ''
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workingDirectory = ''
  workspaceName = ''

  attachParameter {
    formalParameterName = '/projects/cd-prod-promotion/procedures/test1/formalParameters/cred'
  }
}
