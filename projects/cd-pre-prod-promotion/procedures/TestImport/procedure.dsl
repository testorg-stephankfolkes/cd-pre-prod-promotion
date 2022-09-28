
procedure 'TestImport', {
  description = ''
  jobNameTemplate = ''
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'Resource', {
    expansionDeferred = '0'
    label = 'Resource'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'GitConfig', {
    expansionDeferred = '0'
    label = 'GitConfig'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'Repo', {
    expansionDeferred = '0'
    label = 'Repo'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }

  formalParameter 'Branch', {
    expansionDeferred = '0'
    label = 'Branch'
    orderIndex = '4'
    required = '1'
    type = 'entry'
  }
}
