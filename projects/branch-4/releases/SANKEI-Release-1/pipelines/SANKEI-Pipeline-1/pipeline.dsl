
pipeline 'SANKEI-Pipeline-1', {
  description = ''
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  skipStageMode = 'ENABLED'
  templatePipelineName = 'SANKEI-Pipeline-1'
  templatePipelineProjectName = 'branch-4'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }
}
