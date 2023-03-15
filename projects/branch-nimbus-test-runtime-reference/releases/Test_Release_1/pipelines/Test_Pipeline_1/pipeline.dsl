
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'branch-nimbus-test-runtime-reference'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
