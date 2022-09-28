
procedure 'test', {
  description = ''
  jobNameTemplate = ''
  resourceName = 'new-agent-flow-agents'
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'user', {
    expansionDeferred = '0'
    optionsDsl = '''import com.electriccloud.domain.FormalParameterOptionsResult

def options = new FormalParameterOptionsResult()

def me = getProperty(propertyName: \'/myUser/userName\').value

options.add(me,me)


return options'''
    orderIndex = '1'
    required = '1'
    type = 'select'
  }
}
