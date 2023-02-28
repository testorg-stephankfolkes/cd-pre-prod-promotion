
pipeline 'SANKEI-Pipeline-1', {
  templatePipelineName = 'SANKEI-Pipeline-1'
  templatePipelineProjectName = 'test-branch'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
