
pipeline 'pipeline_testrel', {
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'cd-pre-prod-promotion'
  releaseName = 'testrel'
  skipStageMode = 'ENABLED'

  formalParameter 'param', {
    expansionDeferred = '0'
    orderIndex = '1'
    propertyReference = '$[/projects/cd-pre-prod-promotion/appChangeType]'
    required = '1'
    type = 'select'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }
}
