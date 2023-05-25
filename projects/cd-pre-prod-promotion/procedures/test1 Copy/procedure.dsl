
procedure 'test1 Copy', {
  timeLimit = '0'

  formalParameter 'project', {
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
