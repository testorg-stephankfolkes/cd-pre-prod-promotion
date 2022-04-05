import java.io.File


step 'checkout_branch', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Promote_Project/steps/checkout_branch.cmd").text
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
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''
}
