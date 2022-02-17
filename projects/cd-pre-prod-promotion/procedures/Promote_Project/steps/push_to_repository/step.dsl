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
  projectName = 'cd-pre-prod-promotion'
  releaseMode = 'none'
  resourceName = '$[/myJob/AssignedResource]'
  shell = ''
  subprocedure = ''
  subproject = ''
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''

  attachCredential {
    credentialName = '/projects/cd-pre-prod-promotion/credentials/GIT_PAT'
  }
}
