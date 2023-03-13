
pipeline 'Test_Pipeline_1', {
  templatePipelineName = 'Test_Pipeline_1'
  templatePipelineProjectName = 'branch-test5'

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
  }
}
