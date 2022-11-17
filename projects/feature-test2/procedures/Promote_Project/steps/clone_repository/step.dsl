import java.io.File


step 'clone_repository', {
  description = 'Clone the Git repository for the project'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Promote_Project/steps/clone_repository.cmd").text
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
    formalParameterName = '/projects/feature-test2/procedures/Promote_Project/formalParameters/git-creds-pat'
  }
}
