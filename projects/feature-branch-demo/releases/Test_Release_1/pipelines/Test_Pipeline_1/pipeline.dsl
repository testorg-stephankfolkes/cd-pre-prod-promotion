
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'feature-branch-demo'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
