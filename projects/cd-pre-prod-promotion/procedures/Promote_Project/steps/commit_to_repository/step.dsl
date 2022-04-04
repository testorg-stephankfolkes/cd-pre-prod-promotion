import java.io.File


step 'commit_to_repository', {
  description = 'Commit the change into the repository'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Promote_Project/steps/commit_to_repository.cmd").text
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
  shell = ''
  subprocedure = ''
  subproject = ''
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''

  attachParameter {
    formalParameterName = '/projects/cd-pre-prod-promotion/procedures/Promote_Project/formalParameters/git-creds-pat'
  }
}
