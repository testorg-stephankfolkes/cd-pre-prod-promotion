
step 'import', {
  subprocedure = 'importDslFromGitNew'
  subproject = '/plugins/EC-DslDeploy/project'
  timeLimit = '0'
  actualParameter 'branch', '$[Branch]'
  actualParameter 'cleanup', '1'
  actualParameter 'config', '$[GitConfig]'
  actualParameter 'dest', 'dsl'
  actualParameter 'ignoreFailed', '0'
  actualParameter 'localMode', '0'
  actualParameter 'overwrite', '1'
  actualParameter 'repoUrl', '$[Repo]'
  actualParameter 'rsrcName', 'local'
}
