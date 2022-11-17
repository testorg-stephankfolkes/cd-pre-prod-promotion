
pipeline 'pipeline_testrel', {
  description = ''
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  skipStageMode = 'ENABLED'

  formalParameter 'param', {
    description = ''
    expansionDeferred = '0'
    orderIndex = '1'
    propertyReference = '$[/projects/feature-test2/appChangeType]'
    required = '1'
    type = 'select'
  }

  formalParameter 'ec_stagesToRun', {
    description = ''
    expansionDeferred = '1'
    required = '0'
  }
}
