
pipeline 'pipeline_1.2.releasePipeline', {
  description = ''
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'cd-pre-prod-promotion'
  releaseName = '1.2. release pipeline'
  skipStageMode = 'ENABLED'

  formalParameter 'ec_stagesToRun', {
    description = ''
    expansionDeferred = '1'
    required = '0'
  }
}
