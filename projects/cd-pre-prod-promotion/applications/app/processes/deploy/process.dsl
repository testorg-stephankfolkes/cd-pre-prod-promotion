
process 'deploy', {
  applicationName = 'app'
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  projectName = 'cd-pre-prod-promotion'
  timeLimitUnits = 'minutes'

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }
}
