
process 'deploy', {
  description = ''
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  timeLimit = ''
  timeLimitUnits = 'minutes'

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    description = ''
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }
}
