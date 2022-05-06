
procedure 'test1 Copy', {
  description = ''
  jobNameTemplate = ''
  projectName = 'cd-pre-prod-promotion'
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'project', {
    description = ''
    expansionDeferred = '0'
    optionsDsl = 'def listOfUsersGroups = getUser(userName: \'$[/myUser/userName]\', traverseHierarchy: true).groupName'
    orderIndex = '1'
    required = '1'
    type = 'select'
  }
}
