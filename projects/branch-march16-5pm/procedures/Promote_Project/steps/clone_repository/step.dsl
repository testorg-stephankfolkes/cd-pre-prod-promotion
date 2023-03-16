import java.io.File


step 'clone_repository', {
  description = 'Clone the Git repository for the project'
  command = new File(projectDir, "./procedures/Promote_Project/steps/clone_repository.cmd").text
  errorHandling = 'abortProcedure'
  resourceName = '$[/myJob/AssignedResource]'

  attachParameter {
    formalParameterName = '/projects/branch-march16-5pm/procedures/Promote_Project/formalParameters/git-creds-pat'
  }
}
