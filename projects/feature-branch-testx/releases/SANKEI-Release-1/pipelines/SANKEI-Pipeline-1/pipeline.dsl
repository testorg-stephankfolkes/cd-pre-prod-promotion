
pipeline 'SANKEI-Pipeline-1', {
  templatePipelineName = 'SANKEI-Pipeline-1'
  templatePipelineProjectName = 'feature-branch-testx'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
