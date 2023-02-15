import java.io.File


step 'checkout_branch', {
  command = new File(projectDir, "./procedures/Promote_Project/steps/checkout_branch.cmd").text
  errorHandling = 'abortProcedure'
  resourceName = '$[/myJob/AssignedResource]'
}
