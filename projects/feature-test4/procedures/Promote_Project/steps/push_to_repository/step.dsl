import java.io.File


step 'push_to_repository', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Promote_Project/steps/push_to_repository.cmd").text
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

  attachParameter {
    formalParameterName = '/projects/feature-test4/procedures/Promote_Project/formalParameters/git-creds-pat'
  }
}
