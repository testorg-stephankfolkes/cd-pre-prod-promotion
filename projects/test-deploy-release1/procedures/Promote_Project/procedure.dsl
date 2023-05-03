
procedure 'Promote_Project', {
  resourceName = '$[resource_name]'

  formalParameter 'projName', {
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
    checkedValue = 'true'
    dependsOn = 'projName'
    label = 'Change Record?'
    orderIndex = '2'
    type = 'checkbox'
    uncheckedValue = 'false'
  }

  formalParameter 'change_record_id', {
    label = 'Change Record ID'
    orderIndex = '3'
    renderCondition = '${change_record} == true'
    type = 'entry'
  }

  formalParameter 'resource_name', {
    description = 'Resource/Pool chosen is expected to have Git CLI installed.'
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

  formalParameter 'git-creds-pat', {
    description = 'Select Git credentials to clone and push changes. The credential must be a personal access token (PAT).'
    dependsOn = 'projName'
    label = 'Git Credentials - PAT'
    orderIndex = '5'
    renderCondition = '${projName} != \'\''
    type = 'credential'
  }

  formalParameter 'ec-github_configuration', {
    description = 'Select the EC-GitHub configuration that will have permission to create a pull request'
    dependsOn = 'projName,git-creds-pat'
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
    type = 'select'
  }
}
