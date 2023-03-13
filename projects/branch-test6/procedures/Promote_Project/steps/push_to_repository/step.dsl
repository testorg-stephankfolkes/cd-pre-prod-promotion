import java.io.File


step 'push_to_repository', {
  command = new File(projectDir, "./procedures/Promote_Project/steps/push_to_repository.cmd").text
  errorHandling = 'abortProcedure'
  resourceName = '$[/myJob/AssignedResource]'

  attachParameter {
    formalParameterName = '/projects/branch-test6/procedures/Promote_Project/formalParameters/git-creds-pat'
  }
}
