
procedure 'TestImport', {
  timeLimit = '0'

  formalParameter 'Resource', {
    label = 'Resource'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'GitConfig', {
    label = 'GitConfig'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'Repo', {
    label = 'Repo'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }

  formalParameter 'Branch', {
    label = 'Branch'
    orderIndex = '4'
    required = '1'
    type = 'entry'
  }
}
