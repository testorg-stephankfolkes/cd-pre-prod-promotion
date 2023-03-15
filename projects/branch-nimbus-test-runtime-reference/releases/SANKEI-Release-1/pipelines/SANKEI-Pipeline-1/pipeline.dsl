
pipeline 'SANKEI-Pipeline-1', {
  templatePipelineName = 'SANKEI-Pipeline-1'
  templatePipelineProjectName = 'branch-nimbus-test-runtime-reference'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
