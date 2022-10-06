
pipeline 'myParentPipeline_DEMO', {
  description = ''
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'cd-pre-prod-promotion'
  releaseName = '1.3.myParentReleasePipeline1'
  skipStageMode = 'ENABLED'

  formalParameter 'ec_stagesToRun', {
    description = ''
    expansionDeferred = '1'
    required = '0'
  }
}
