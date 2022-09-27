
procedure 'test1', {
  description = ''
  jobNameTemplate = ''
  projectName = 'cd-prod-promotion'
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'cred', {
    expansionDeferred = '0'
    orderIndex = '1'
    required = '1'
    type = 'credential'
  }
}
