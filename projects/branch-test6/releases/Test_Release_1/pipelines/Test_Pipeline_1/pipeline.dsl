
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'branch-test6'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
