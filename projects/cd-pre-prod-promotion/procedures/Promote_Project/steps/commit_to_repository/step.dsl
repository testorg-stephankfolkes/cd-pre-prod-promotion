import java.io.File


step 'commit_to_repository', {
  description = 'Commit the change into the repository'
  command = new File(projectDir, "./procedures/Promote_Project/steps/commit_to_repository.cmd").text
  errorHandling = 'abortProcedure'
  resourceName = '$[/myJob/AssignedResource]'

  attachParameter {
    formalParameterName = '/projects/cd-pre-prod-promotion/procedures/Promote_Project/formalParameters/git-creds-pat'
  }
}
