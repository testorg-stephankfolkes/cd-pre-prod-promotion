
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'feature_kiethTest'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
