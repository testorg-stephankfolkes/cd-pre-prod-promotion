import java.io.File


step 'clean_up', {
  description = 'Clean up the workspace'
  alwaysRun = '1'
  command = new File(projectDir, "./procedures/Promote_Project/steps/clean_up.cmd").text
  errorHandling = 'abortJobNow'
  resourceName = '$[/myJob/AssignedResource]'
}
