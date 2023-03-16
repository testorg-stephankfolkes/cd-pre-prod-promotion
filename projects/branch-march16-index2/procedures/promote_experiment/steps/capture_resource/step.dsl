import java.io.File


step 'capture_resource', {
  description = 'capture the resource used for this procedure so subsequent steps may also use the same resource.'
  alwaysRun = '1'
  command = new File(projectDir, "./procedures/promote_experiment/steps/capture_resource.cmd").text
  errorHandling = 'abortJobNow'
}
