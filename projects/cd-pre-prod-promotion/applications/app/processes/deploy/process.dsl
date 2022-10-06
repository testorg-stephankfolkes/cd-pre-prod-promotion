
process 'deploy', {
  description = ''
  applicationName = 'app'
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  projectName = 'cd-pre-prod-promotion'
  timeLimit = ''
  timeLimitUnits = 'minutes'

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    description = ''
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }
}
