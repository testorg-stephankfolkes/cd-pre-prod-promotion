
pipeline 'SANKEI-Pipeline-1', {
  templatePipelineName = 'SANKEI-Pipeline-1'
  templatePipelineProjectName = 'branch-test1'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
