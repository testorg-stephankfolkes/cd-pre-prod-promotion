import java.io.File


step 'groovy', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/test1 Copy/steps/groovy.groovy").text
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
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''

  attachCredential {
    credentialName = '/projects/cd-pre-prod-promotion/credentials/Ammar-Test'
  }
}
