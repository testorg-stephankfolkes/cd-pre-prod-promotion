
procedure 'test1 Copy', {
  description = ''
  jobNameTemplate = ''
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'project', {
    description = ''
    expansionDeferred = '0'
    optionsDsl = '''def user
try {
  user = getProperty(propertyName: \'/myUser/userName\').value
} catch (e) {
  return []
}
def listOfUsersGroups = getUser(userName: user, traverseHierarchy: true).groupName'''
    orderIndex = '1'
    required = '1'
    type = 'select'
  }
}
