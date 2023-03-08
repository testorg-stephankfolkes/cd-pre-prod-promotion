
pipeline 'SANKEI-Pipeline-1', {
  templatePipelineName = 'SANKEI-Pipeline-1'
  templatePipelineProjectName = 'branch-test3'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
