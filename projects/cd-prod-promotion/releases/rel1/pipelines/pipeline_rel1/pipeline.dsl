
pipeline 'pipeline_rel1', {
  description = ''
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'cd-prod-promotion'
  releaseName = 'rel1'
  skipStageMode = 'ENABLED'

  formalParameter 'ec_stagesToRun', {
    description = ''
    expansionDeferred = '1'
    required = '0'
  }
}
