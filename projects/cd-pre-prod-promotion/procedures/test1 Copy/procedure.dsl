
procedure 'test1 Copy', {
  description = ''
  jobNameTemplate = ''
  projectName = 'cd-pre-prod-promotion'
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'cred', {
    description = ''
    expansionDeferred = '0'
    orderIndex = '1'
    required = '1'
    type = 'credential'
  }
}
