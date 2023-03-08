import java.io.File


step 'commit_to_repository', {
  description = 'Commit the change into the repository'
  command = new File(projectDir, "./procedures/Promote_Project/steps/commit_to_repository.cmd").text
  errorHandling = 'abortProcedure'
  resourceName = '$[/myJob/AssignedResource]'

  attachParameter {
    formalParameterName = '/projects/branch-test3/procedures/Promote_Project/formalParameters/git-creds-pat'
  }
}
