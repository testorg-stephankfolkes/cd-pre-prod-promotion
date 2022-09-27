
procedure 'example-promotion-pipeline2-procedure', {
  description = 'Procedure to be scheduled. This procedure will import the project DSL using the DeployDSL plugin.'
  jobNameTemplate = ''
  projectName = 'cd-prod-promotion'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'ec-git_configuration', defaultValue: '/projects/cd-prod-promotion/pluginConfigurations/def_git_config', {
    description = 'Select the EC-Git configuration that will have permission to clone the repository.'
    expansionDeferred = '0'
    label = 'EC-Git Configuration'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

def options = new FormalParameterOptionsResult()

def resultPluginConfs = []
resultPluginConfs = getPluginConfigurations(pluginKey: \'EC-Git\')

resultPluginConfs.each{
  options.add(\'/projects/\' + it.projectName + \'/pluginConfigurations/\' + it.pluginConfigurationName,\'/projects/\' + it.projectName + \'/pluginConfigurations/\' + it.pluginConfigurationName)
}

return options
'''
    orderIndex = '1'
    required = '1'
    type = 'select'
  }

  formalParameter 'gitRepoUrl', {
    description = 'Enter the Git repository to clone and import. (HTTPS) e.g. https://github.com/org/example.git'
    expansionDeferred = '0'
    label = 'Git Repository'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'cloneBranch', {
    description = 'Enter the Git branch to clone and import. E.g. master'
    expansionDeferred = '0'
    label = 'Git Branch'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }

  formalParameter 'resource_OR_pool_name', {
    description = 'Resource/Pool chosen is expected to have Git CLI installed.'
    expansionDeferred = '0'
    label = 'Resource or Resource Pool Name'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

def options = new FormalParameterOptionsResult()
def resultResources = getResources()
def resultResourcePools = getResourcePools()

resultResources.each{
  options.add(it.name,it.name)
}

resultResourcePools.each{
  options.add(it.name,it.name)
}

return options
'''
    orderIndex = '4'
    required = '1'
    type = 'select'
  }

  formalParameter 'targetImportProjectName', defaultValue: '', {
    description = 'Select the project that the DSL code will be imported into. This parameter is used to label the job, and has no impact on the DSL import procedure.'
    expansionDeferred = '0'
    label = 'Target Import Project Name'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

def options = new FormalParameterOptionsResult()

def conf = getProjects()
conf.each{
  if (it.pluginKey==null) {
     options.add(\'/projects/\' + it.projectName, it.projectName)
  }
}

return options
'''
    orderIndex = '5'
    required = '0'
    type = 'select'
  }
}
