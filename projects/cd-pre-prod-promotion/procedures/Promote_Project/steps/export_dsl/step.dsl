
step 'export_dsl', {
  errorHandling = 'abortProcedure'
  resourceName = '$[/myJob/AssignedResource]'
  subprocedure = 'generateDslToDirectory'
  subproject = '/plugins/EC-DslDeploy/project'
  actualParameter 'directory', '$[/myProcedure/clone_directory]'
  actualParameter 'includeAcls', '0'
  actualParameter 'includeAclsInDifferentFile', '0'
  actualParameter 'includeAllChildren', '1'
  actualParameter 'includeChildrenInSameFile', '0'
  actualParameter 'objectName', '$[shortProjectName]'
  actualParameter 'objectType', 'project'
  actualParameter 'pool', '$[/myJob/AssignedResource]'
  actualParameter 'suppressDefaults', '0'
  actualParameter 'suppressNulls', '1'
  actualParameter 'suppressParent', '0'
}
