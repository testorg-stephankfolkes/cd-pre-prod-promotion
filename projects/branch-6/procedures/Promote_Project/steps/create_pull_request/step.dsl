
step 'create_pull_request', {
  description = 'Create a pull request for the latest DSL changes'
  resourceName = '$[/myJob/AssignedResource]'
  subprocedure = 'Create Pull Request'
  subproject = '/plugins/EC-Github/project'
  actualParameter 'assignees', ''
  actualParameter 'base', '$[/myProcedure/target_base_pr_branch]'
  actualParameter 'body', 'Change time: $[/myJob/changeCreationTime]'
  actualParameter 'config', '$[projName]/pluginConfigurations/$[ec-github_configuration]'
  actualParameter 'head', '$[newPRBranch]'
  actualParameter 'ownerName', '$[/myProcedure/SCM_ORG]'
  actualParameter 'repoName', '$[shortProjectName]'
  actualParameter 'resultPropertySheet', '/myJob/createPullRequest'
  actualParameter 'title', 'Promote $[shortProjectName] into $[/myProcedure/target_base_pr_branch] branch'
}
