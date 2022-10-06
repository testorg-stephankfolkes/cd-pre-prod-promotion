
procedure 'TestImport', {
  description = ''
  jobNameTemplate = ''
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'Resource', {
    description = ''
    expansionDeferred = '0'
    label = 'Resource'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'GitConfig', {
    description = ''
    expansionDeferred = '0'
    label = 'GitConfig'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'Repo', {
    description = ''
    expansionDeferred = '0'
    label = 'Repo'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }

  formalParameter 'Branch', {
    description = ''
    expansionDeferred = '0'
    label = 'Branch'
    orderIndex = '4'
    required = '1'
    type = 'entry'
  }
}
