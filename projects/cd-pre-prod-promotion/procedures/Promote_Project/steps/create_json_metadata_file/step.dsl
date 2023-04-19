import java.io.File


step 'create_json_metadata_file', {
  command = new File(projectDir, "./procedures/Promote_Project/steps/create_json_metadata_file.groovy").text
  errorHandling = 'abortProcedure'
  resourceName = '$[/myJob/AssignedResource]'
  shell = 'ec-groovy'
}
