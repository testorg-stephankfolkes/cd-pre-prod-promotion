
catalogItem 'Register Resource', {
  description = '''<xml>
  <title>

  </title>

  <htmlData>
    <![CDATA[
      Register Resource to Resource pool
    ]]>
  </htmlData>
</xml>'''
  buttonLabel = 'Execute'
  dslString = '''def myResourceName = args.resourceName
def myHostName = args.hostName
def myResourcePoolName = args.resourcePoolName
def myProjectName = args.projectName
def EIMID = myResourcePoolName.split(\'_\')[0]
def myEnvironment = args.environment
def groupNamePrefix = "Infodir-${myProjectName}-${EIMID}-cbcd-DEV-"
def tags = args.tags.split(\',\')
def resourceList = [myResourceName]

resource myResourceName, {
  hostName = myHostName
  hostType = \'REGISTERED\'

  tags.each { tagName ->
    tag tagName
  }

  acl {
    inheriting = \'1\'

    aclEntry \'group\', principalName: groupNamePrefix + \'devops\', {
      changePermissionsPrivilege = \'inherit\'
      executePrivilege = \'allow\'
      modifyPrivilege = \'inherit\'
      readPrivilege = \'allow\'
    }

    aclEntry \'group\', principalName: groupNamePrefix + \'projectAdmin\', {
      changePermissionsPrivilege = \'inherit\'
      executePrivilege = \'allow\'
      modifyPrivilege = \'inherit\'
      readPrivilege = \'allow\'
    }

    aclEntry \'group\', principalName: groupNamePrefix + \'baseuser\', {
      changePermissionsPrivilege = \'inherit\'
      executePrivilege = \'allow\'
      modifyPrivilege = \'inherit\'
      readPrivilege = \'allow\'
    }
  }
}


resourcePool myResourcePoolName, {
  autoDelete = \'1\'

  getResourcesInPool(resourcePoolName: myResourcePoolName).each { res ->
	resourceList.push(res.resourceName)
  }
  resourceName = resourceList

  acl {
    inheriting = \'1\'

    aclEntry \'group\', principalName: groupNamePrefix + \'devops\', {
      changePermissionsPrivilege = \'inherit\'
      executePrivilege = \'allow\'
      modifyPrivilege = \'inherit\'
      readPrivilege = \'allow\'
    }

    aclEntry \'group\', principalName: groupNamePrefix + \'projectAdmin\', {
      changePermissionsPrivilege = \'inherit\'
      executePrivilege = \'allow\'
      modifyPrivilege = \'inherit\'
      readPrivilege = \'allow\'
    }

    aclEntry \'group\', principalName: groupNamePrefix + \'baseuser\', {
      changePermissionsPrivilege = \'inherit\'
      executePrivilege = \'allow\'
      modifyPrivilege = \'inherit\'
      readPrivilege = \'allow\'
    }
  }
}
'''
  iconUrl = 'icon-catalog-item.svg'
  useFormalParameter = '1'

  formalParameter 'projectName', {
    label = 'Project Name'
    orderIndex = '1'
    required = '1'
    type = 'project'
  }

  formalParameter 'environment', {
    label = 'Environment'
    options = [
      'Dev': 'Dev',
      'SIT': 'SIT',
      'UAT': 'UAT',
      'PROD': 'PROD',
    ]
    orderIndex = '2'
    required = '1'
    type = 'select'
  }

  formalParameter 'resourceName', defaultValue: '', {
    description = 'Name of resource should follow the standard &lt;HostName&gt;_&lt;ENV&gt;_&lt;Incremental Numerical Digit&gt; (Eg. Kinetic_Dev_01)'
    dependsOn = 'environment'
    label = 'Resource Name'
    orderIndex = '3'
    required = '1'
    type = 'entry'
    validationDsl = '''// Name of resource should follow the standard <HostName>_<ENV>_<Incremental Numerical Digit> (Eg. Kinetic_Dev_01)
def envList = [\'Dev\', "SIT", "UAT", "PROD"]

def resourceNameSegments = args.parameters[\'resourceName\']?.split("_")

if (resourceNameSegments!= null && resourceNameSegments?.length == 3 && envList.contains(resourceNameSegments[1]) && resourceNameSegments[2].isNumber()) {
  if(!args.parameters[\'environment\'].equals(resourceNameSegments[1])) {
    return "Resource name segment: " + resourceNameSegments[1] + " and environment:" +  args.parameters[\'environment\'] + " should match"
  }
  // an empty or null response is construed as a validation success
  return null
} else {
  // return an appropriate error message in case the validation failed
  return "Name of resource should follow the standard &lt;HostName&gt;_&lt;ENV&gt;_&lt;Incremental Numerical Digit&gt; (Eg. Kinetic_Dev_01)"
}'''
  }

  formalParameter 'hostName', {
    description = 'Fully qualified host name'
    label = 'Host Name'
    orderIndex = '4'
    required = '1'
    type = 'entry'
  }

  formalParameter 'resourcePoolName', {
    description = '''Name of resource pool should follow the standard &lt;EIMID&gt;_&lt;HostName&gt;_&lt;Environment&gt;_&lt;Hosting&gt;_&lt;Agent
Type&gt;_&lt;Purpose&gt; (Eg. 11072737_ARO_Dev_GCP_VM_Cyberflow)'''
    dependsOn = 'environment'
    label = 'Resource Pool Name'
    orderIndex = '5'
    required = '1'
    type = 'entry'
    validationDsl = '''// Name of resource should follow the standard <HostName>_<ENV>_<Incremental Numerical Digit> (Eg. Kinetic_Dev_01)
def envList = [\'Dev\', "SIT", "UAT", "PROD"]

def resourcePoolNameSegments = args.parameters[\'resourcePoolName\']?.split("_")

if (resourcePoolNameSegments!= null && resourcePoolNameSegments?.length == 6 && envList.contains(resourcePoolNameSegments[2]) && resourcePoolNameSegments[0].isNumber()) {
  if(!args.parameters[\'environment\'].equals(resourcePoolNameSegments[2])) {
    return "Resource pool name segment: " + resourcePoolNameSegments[2] + " and environment:" +  args.parameters[\'environment\'] + " should match"
  }
  // an empty or null response is construed as a validation success
  return null
} else {
  // return an appropriate error message in case the validation failed
  return "Name of resource pool should follow the standard &lt;EIMID&gt;_&lt;HostName&gt;_&lt;Environment&gt;_&lt;Hosting&gt;_&lt;AgentType&gt;_&lt;Purpose&gt; (Eg. 11072737_ARO_Dev_GCP_VM_Cyberflow)"
}'''
  }

  formalParameter 'tags', {
    description = 'Comma separated '
    label = 'Tags'
    orderIndex = '6'
    type = 'entry'
  }
}
