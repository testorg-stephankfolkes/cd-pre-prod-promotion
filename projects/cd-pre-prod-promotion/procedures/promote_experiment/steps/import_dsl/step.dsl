
step 'import_dsl', {
  subprocedure = 'installDslFromDirectory'
  subproject = '/plugins/EC-DslDeploy/project'
  actualParameter 'directory', '$[/myProcedure/clone_directory]'
  actualParameter 'ignoreFailed', '1'
  actualParameter 'localMode', '0'
  actualParameter 'overwrite', '1'
  actualParameter 'pool', '$[/myJob/AssignedResource]'
}
