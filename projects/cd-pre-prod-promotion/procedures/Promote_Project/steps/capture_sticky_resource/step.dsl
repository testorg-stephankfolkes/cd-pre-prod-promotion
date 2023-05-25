import java.io.File


step 'capture_sticky_resource', {
  description = 'Capture the resource used for this procedure so subsequent steps may also use the same resource. Required for resource pools.'
  alwaysRun = '1'
  command = new File(projectDir, "./procedures/Promote_Project/steps/capture_sticky_resource.cmd").text
  errorHandling = 'abortJobNow'
}
