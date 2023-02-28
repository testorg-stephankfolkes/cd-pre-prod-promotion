import java.io.File


step 'get_project_name', {
  command = new File(projectDir, "./procedures/Promote_Project/steps/get_project_name.cmd").text
  errorHandling = 'abortProcedure'
  resourceName = '$[/myJob/AssignedResource]'
}
