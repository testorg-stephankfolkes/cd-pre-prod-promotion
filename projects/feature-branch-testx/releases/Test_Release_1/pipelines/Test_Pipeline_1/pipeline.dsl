
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'feature-branch-testx'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
