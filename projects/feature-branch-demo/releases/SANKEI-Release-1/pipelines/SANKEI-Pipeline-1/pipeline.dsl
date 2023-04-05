
pipeline 'SANKEI-Pipeline-1', {
  templatePipelineName = 'SANKEI-Pipeline-1'
  templatePipelineProjectName = 'feature-branch-demo'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
