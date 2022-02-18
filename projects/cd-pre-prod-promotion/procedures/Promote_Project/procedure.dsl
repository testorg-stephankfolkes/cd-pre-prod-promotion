
procedure 'Promote_Project', {
  description = ''
  jobNameTemplate = ''
  projectName = 'cd-pre-prod-promotion'
  resourceName = '$[resource_name]'
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'projName', {
    description = ''
    expansionDeferred = '0'
    label = 'Project Name'
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
    orderIndex = '1'
    required = '1'
    type = 'select'
  }

  formalParameter 'change_record', defaultValue: 'false', {
    description = ''
    checkedValue = 'true'
    dependsOn = 'projName'
    expansionDeferred = '0'
    label = 'Change Record?'
    orderIndex = '2'
    required = '0'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'change_record_id', {
    description = ''
    expansionDeferred = '0'
    label = 'Change Record ID'
    orderIndex = '3'
    renderCondition = '${change_record} == true'
    required = '0'
    type = 'entry'
  }

  formalParameter 'resource_name', {
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

  formalParameter 'ec-git_configuration', {
    description = 'Select the EC-Git configuration that will have clone and push permissions to the project repository'
    dependsOn = 'projName'
    expansionDeferred = '0'
    label = 'EC-Git Configuration'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

def options = new FormalParameterOptionsResult()

def projName = args.parameters[\'projName\']
def resultPluginConfs = []
if (projName != \'\'){
  resultPluginConfs = getPluginConfigurations(projectName: projName, pluginKey: \'EC-Git\')
}
resultPluginConfs.each{
  options.add(it.name,it.name)
}

return options
'''
    orderIndex = '5'
    renderCondition = '${projName} != \'\''
    required = '0'
    type = 'select'
  }

  formalParameter 'ec-github_configuration', {
    description = 'Select the EC-GitHub configuration that will have permission to create a pull request'
    dependsOn = 'projName,ec-git_configuration'
    expansionDeferred = '0'
    label = 'EC-GitHub Configuration'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

def options = new FormalParameterOptionsResult()

def projName = args.parameters[\'projName\']
def resultPluginConfs = []
if (projName != \'\'){
  resultPluginConfs = getPluginConfigurations(projectName: projName, pluginKey: \'EC-GitHub\')
}


resultPluginConfs.each{
  options.add(it.name,it.name)
}

return options
'''
    orderIndex = '6'
    renderCondition = '${projName} != \'\''
    required = '0'
    type = 'select'
  }
}
