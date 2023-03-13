
task 'task3', {
  actualParameter = [
    'cloneBranch': 'adfa',
    'ec-git_configuration': '/projects/cd-prod-promotion/pluginConfigurations/def_git_config',
    'gitRepoUrl': 'sadf',
    'resource_OR_pool_name': 'gateway-external-agent',
  ]
  applicationVersion = 'dev'
  subprocedure = 'example-promotion-pipeline2-procedure'
  taskType = 'PROCEDURE'
}
