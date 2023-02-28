
process 'deploy', {
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    type = 'checkbox'
  }
}
