
pipeline 'SANKEI-Pipeline-1', {
  templatePipelineName = 'SANKEI-Pipeline-1'
  templatePipelineProjectName = 'trigger-test'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
